`timescale 1ns/1ps

// Top-level UAV Safety Controller.
module uav_safety_controller #(
    parameter integer CLK_FREQ_HZ                       = 50000000,
    parameter integer GRACE_PERIOD_SEC                  = 5,
    parameter integer SHUTDOWN_PERIOD_SEC               = 3,
    parameter integer SHUTDOWN_SELECTION_TIMEOUT_SEC    = 30,
    parameter integer GRACE_PERIOD_CYCLES               = CLK_FREQ_HZ * GRACE_PERIOD_SEC,
    parameter integer SHUTDOWN_PERIOD_CYCLES            = CLK_FREQ_HZ * SHUTDOWN_PERIOD_SEC,
    parameter integer SHUTDOWN_SELECTION_TIMEOUT_CYCLES = CLK_FREQ_HZ * SHUTDOWN_SELECTION_TIMEOUT_SEC
) (
    input  wire       clk,
    input  wire       uav_active,
    input  wire       flight_active,
    input  wire       reset,

    input  wire       manual_flight_control,
    input  wire       emergency_shutdown,
    input  wire [3:0] shutdown_select,

    input  wire       battery_low,
    input  wire       battery_critical,
    input  wire [1:0] navigation_fault,
    input  wire [2:0] payload_fault,
    input  wire       propulsion_fault,
    input  wire       obstacle_detected,
    input  wire       adverse_weather,

    output reg        flight_ready,
    output reg        flight_inhibit,
    output reg        warning,
    output reg        alarm,
    output reg        force_manual_mode,
    output reg        return_home,
    output reg        emergency_land,
    output reg [3:0]  shutdown_cmd
);

    localparam IDLE               = 4'd0;
    localparam PREFLIGHT_CHECK    = 4'd1;
    localparam FLIGHT_READY       = 4'd2;
    localparam FLIGHT_INHIBIT     = 4'd3;
    localparam NORMAL_FLIGHT      = 4'd4;
    localparam MANUAL_SAFETY      = 4'd5;
    localparam MANUAL_FLIGHT      = 4'd6;
    localparam RETURN_HOME        = 4'd7;
    localparam EMERGENCY_LAND     = 4'd8;
    localparam EMERGENCY_SHUTDOWN = 4'd9;

    wire preflight_fault;
    wire emergency_land_condition;
    wire manual_safety_condition;
    wire return_home_condition;
    wire warning_condition;

    wire manual_timer_expired;
    wire shutdown_timer_expired;
    wire shutdown_selection_timer_expired;

    wire [3:0] state;

    reg shutdown_committed;
    reg [3:0] shutdown_cmd_latched;
    reg shutdown_confirmation_active;
    reg shutdown_request_locked_out;

    wire shutdown_selection_valid;
    wire shutdown_selection_timer_enable;
    wire shutdown_confirmation_timer_enable;
    wire shutdown_request_blocked;

    assign shutdown_selection_valid = |shutdown_select;

    // 0000 means "no shutdown target selected". While an emergency request is
    // asserted with no valid target, the 30-second selection timer runs.
    assign shutdown_selection_timer_enable =
           emergency_shutdown
        && !shutdown_committed
        && !shutdown_confirmation_active
        && !shutdown_request_locked_out
        && !shutdown_selection_valid
        && !reset;

    // The existing 3-second confirmation timer starts only after a valid
    // non-zero bitmap has been captured.
    assign shutdown_confirmation_timer_enable =
           emergency_shutdown
        && !shutdown_committed
        && shutdown_confirmation_active
        && !reset;

    // Expiry blocks acceptance immediately at the configured timeout. The
    // persistent lockout then holds until emergency_shutdown is sampled low.
    assign shutdown_request_blocked =
           shutdown_request_locked_out
        || shutdown_selection_timer_expired;

    // Classify safety conditions.
    safety_conditions u_conditions (
        .battery_low(battery_low),
        .battery_critical(battery_critical),
        .navigation_fault(navigation_fault),
        .payload_fault(payload_fault),
        .propulsion_fault(propulsion_fault),
        .obstacle_detected(obstacle_detected),
        .adverse_weather(adverse_weather),
        .preflight_fault(preflight_fault),
        .emergency_land_condition(emergency_land_condition),
        .manual_safety_condition(manual_safety_condition),
        .return_home_condition(return_home_condition),
        .warning_condition(warning_condition)
    );

    // Independent Manual Safety, shutdown-confirmation, and shutdown-selection timers.
    safety_timer #(
        .GRACE_PERIOD_CYCLES(GRACE_PERIOD_CYCLES),
        .SHUTDOWN_PERIOD_CYCLES(SHUTDOWN_PERIOD_CYCLES),
        .SHUTDOWN_SELECTION_TIMEOUT_CYCLES(SHUTDOWN_SELECTION_TIMEOUT_CYCLES)
    ) u_timer (
        .clk(clk),
        .reset(reset),
        .manual_timer_enable(state == MANUAL_SAFETY),
        .shutdown_timer_enable(shutdown_confirmation_timer_enable),
        .shutdown_selection_timer_enable(shutdown_selection_timer_enable),
        .manual_timer_expired(manual_timer_expired),
        .shutdown_timer_expired(shutdown_timer_expired),
        .shutdown_selection_timer_expired(shutdown_selection_timer_expired)
    );

    // Emergency Shutdown transaction control.
    // 0000 never commits and never asserts shutdown_cmd.
    // 0001..1111 are valid target bitmaps.
    always @(posedge clk) begin
        if (reset) begin
            shutdown_committed           <= 1'b0;
            shutdown_cmd_latched         <= 4'b0000;
            shutdown_confirmation_active <= 1'b0;
            shutdown_request_locked_out  <= 1'b0;
        end else if (!shutdown_committed) begin
            if (!emergency_shutdown) begin
                // A sampled low level re-arms the request path.
                shutdown_cmd_latched         <= 4'b0000;
                shutdown_confirmation_active <= 1'b0;
                shutdown_request_locked_out  <= 1'b0;
            end else if (shutdown_request_blocked) begin
                // The 30-second no-selection timeout cancels this request.
                // Keeping emergency_shutdown high cannot restart it.
                shutdown_cmd_latched         <= 4'b0000;
                shutdown_confirmation_active <= 1'b0;
                shutdown_request_locked_out  <= 1'b1;
            end else if (shutdown_confirmation_active) begin
                if (shutdown_timer_expired) begin
                    shutdown_committed           <= 1'b1;
                    shutdown_confirmation_active <= 1'b0;
                end
            end else if (shutdown_selection_valid) begin
                // Freeze the valid target when confirmation starts so later
                // live selector changes cannot alter the pending command.
                shutdown_cmd_latched         <= shutdown_select;
                shutdown_confirmation_active <= 1'b1;
            end
        end
    end

    // State machine.
    uav_safety_fsm u_fsm (
        .clk(clk),
        .reset(reset),
        .uav_active(uav_active),
        .flight_active(flight_active),
        .shutdown_committed(shutdown_committed),
        .manual_flight_control(manual_flight_control),
        .preflight_fault(preflight_fault),
        .emergency_land_condition(emergency_land_condition),
        .manual_safety_condition(manual_safety_condition),
        .return_home_condition(return_home_condition),
        .manual_timer_expired(manual_timer_expired),
        .state(state)
    );

    // State-dependent outputs.
    // warning and alarm are status outputs, not FSM states.
    // alarm represents critical/inhibit/emergency status; warning represents
    // non-critical caution/manual-safety/return-home status.
    always @(*) begin
        flight_ready      = 1'b0;
        flight_inhibit    = 1'b0;
        warning           = 1'b0;
        alarm             = 1'b0;
        force_manual_mode = 1'b0;
        return_home       = 1'b0;
        emergency_land    = 1'b0;
        shutdown_cmd      = 4'b0000;

        case (state)

            FLIGHT_READY: begin
                flight_ready = 1'b1;
            end

            FLIGHT_INHIBIT: begin
                flight_inhibit = 1'b1;
                alarm          = 1'b1;
            end

            MANUAL_SAFETY: begin
                warning           = 1'b1;
                force_manual_mode = manual_timer_expired;
            end

            MANUAL_FLIGHT: begin
                if (emergency_land_condition)
                    alarm = 1'b1;
                else
                    warning = 1'b1;
            end

            RETURN_HOME: begin
                return_home = 1'b1;
                warning     = 1'b1;
            end

            EMERGENCY_LAND: begin
                emergency_land = 1'b1;
                alarm          = 1'b1;
            end

            EMERGENCY_SHUTDOWN: begin
                shutdown_cmd = shutdown_cmd_latched;
                alarm        = 1'b1;
            end

            NORMAL_FLIGHT: begin
                if (emergency_land_condition)
                    alarm = 1'b1;
                else if (warning_condition || manual_flight_control)
                    warning = 1'b1;
            end

            default: begin
            end

        endcase
    end

endmodule
