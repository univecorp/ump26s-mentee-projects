`timescale 1ns/1ps

// State storage and transition policy for the UAV Safety Controller.
module uav_safety_fsm (
    input  wire       clk,
    input  wire       reset,
    input  wire       uav_active,
    input  wire       flight_active,
    input  wire       shutdown_committed,
    input  wire       manual_flight_control,
    input  wire       preflight_fault,
    input  wire       emergency_land_condition,
    input  wire       manual_safety_condition,
    input  wire       return_home_condition,
    input  wire       manual_timer_expired,
    output reg  [3:0] state
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

    reg [3:0] next_state;

    // Shared in-flight priority with explicit input dependencies:
    // Manual Flight > Emergency Land > Manual Safety > Return Home > Normal Flight.
    function automatic [3:0] select_inflight_state;
        input manual_requested;
        input land_requested;
        input safety_requested;
        input home_requested;
        begin
            if (manual_requested)
                select_inflight_state = MANUAL_FLIGHT;
            else if (land_requested)
                select_inflight_state = EMERGENCY_LAND;
            else if (safety_requested)
                select_inflight_state = MANUAL_SAFETY;
            else if (home_requested)
                select_inflight_state = RETURN_HOME;
            else
                select_inflight_state = NORMAL_FLIGHT;
        end
    endfunction

    always @(*) begin
        next_state = state;

        // Reset is synchronous because state is updated only on posedge clk.
        if (reset) begin
            if (shutdown_committed)
                next_state = PREFLIGHT_CHECK;
            else if (flight_active)
                next_state = select_inflight_state(
                    manual_flight_control,
                    emergency_land_condition,
                    manual_safety_condition,
                    return_home_condition
                );
            else if (uav_active)
                next_state = PREFLIGHT_CHECK;
            else
                next_state = IDLE;
        end else if (shutdown_committed) begin
            next_state = EMERGENCY_SHUTDOWN;
        end else begin
            case (state)

                IDLE: begin
                    if (uav_active)
                        next_state = PREFLIGHT_CHECK;
                end

                PREFLIGHT_CHECK: begin
                    if (preflight_fault)
                        next_state = FLIGHT_INHIBIT;
                    else
                        next_state = FLIGHT_READY;
                end

                FLIGHT_READY: begin
                    if (preflight_fault)
                        next_state = FLIGHT_INHIBIT;
                    else if (flight_active)
                        next_state = NORMAL_FLIGHT;
                end

                FLIGHT_INHIBIT: begin
                    next_state = FLIGHT_INHIBIT;
                end

                NORMAL_FLIGHT: begin
                    if (!flight_active)
                        next_state = PREFLIGHT_CHECK;
                    else
                        next_state = select_inflight_state(
                            manual_flight_control,
                            emergency_land_condition,
                            manual_safety_condition,
                            return_home_condition
                        );
                end

                RETURN_HOME: begin
                    if (!flight_active)
                        next_state = PREFLIGHT_CHECK;
                    else if (manual_flight_control)
                        next_state = MANUAL_FLIGHT;
                    else if (emergency_land_condition)
                        next_state = EMERGENCY_LAND;
                    else if (manual_safety_condition)
                        next_state = MANUAL_SAFETY;
                    else
                        next_state = RETURN_HOME;
                end

                MANUAL_SAFETY: begin
                    if (!flight_active)
                        next_state = PREFLIGHT_CHECK;
                    else if (manual_flight_control)
                        next_state = MANUAL_FLIGHT;
                    else if (emergency_land_condition)
                        next_state = EMERGENCY_LAND;
                    else if (manual_timer_expired)
                        next_state = MANUAL_FLIGHT;
                    else
                        next_state = MANUAL_SAFETY;
                end

                EMERGENCY_LAND: begin
                    if (!flight_active)
                        next_state = PREFLIGHT_CHECK;
                    else if (manual_flight_control)
                        next_state = MANUAL_FLIGHT;
                    else
                        next_state = EMERGENCY_LAND;
                end

                MANUAL_FLIGHT: begin
                    if (!flight_active)
                        next_state = PREFLIGHT_CHECK;
                    else
                        next_state = MANUAL_FLIGHT;
                end

                EMERGENCY_SHUTDOWN: begin
                    next_state = EMERGENCY_SHUTDOWN;
                end

                default: begin
                    next_state = IDLE;
                end

            endcase
        end
    end

    always @(posedge clk) begin
        state <= next_state;
    end

endmodule
