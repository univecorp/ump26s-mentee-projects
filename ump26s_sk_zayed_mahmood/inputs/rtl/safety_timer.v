`timescale 1ns/1ps

// Provides independent synchronous timers for:
// 1) Manual Safety grace period,
// 2) Emergency Shutdown confirmation, and
// 3) Emergency Shutdown selection timeout while shutdown_select == 4'b0000.
module safety_timer #(
    parameter integer GRACE_PERIOD_CYCLES               = 250000000,
    parameter integer SHUTDOWN_PERIOD_CYCLES            = 150000000,
    parameter integer SHUTDOWN_SELECTION_TIMEOUT_CYCLES = 1500000000
) (
    input  wire clk,
    input  wire reset,
    input  wire manual_timer_enable,
    input  wire shutdown_timer_enable,
    input  wire shutdown_selection_timer_enable,
    output reg  manual_timer_expired,
    output reg  shutdown_timer_expired,
    output reg  shutdown_selection_timer_expired
);

    // Fixed 32-bit counters are sufficient for the approved default timing:
    // 5 s, 3 s, and 30 s at 50 MHz.
    reg [31:0] manual_count;
    reg [31:0] shutdown_count;
    reg [31:0] shutdown_selection_count;

    // Manual Safety timer. Expiry asserts on the Nth enabled rising edge.
    always @(posedge clk) begin
        if (reset || !manual_timer_enable) begin
            manual_count          <= 32'd0;
            manual_timer_expired  <= 1'b0;
        end else if (!manual_timer_expired) begin
            if (manual_count >= GRACE_PERIOD_CYCLES - 1) begin
                manual_timer_expired <= 1'b1;
            end else begin
                manual_count <= manual_count + 1'b1;
            end
        end
    end

    // Emergency Shutdown confirmation timer.
    // Expiry asserts on the Nth enabled rising edge.
    always @(posedge clk) begin
        if (reset || !shutdown_timer_enable) begin
            shutdown_count          <= 32'd0;
            shutdown_timer_expired  <= 1'b0;
        end else if (!shutdown_timer_expired) begin
            if (shutdown_count >= SHUTDOWN_PERIOD_CYCLES - 1) begin
                shutdown_timer_expired <= 1'b1;
            end else begin
                shutdown_count <= shutdown_count + 1'b1;
            end
        end
    end

    // Emergency Shutdown target-selection timer.
    // This runs only while an asserted request still has shutdown_select == 0000.
    // Expiry asserts on the Nth enabled rising edge.
    always @(posedge clk) begin
        if (reset || !shutdown_selection_timer_enable) begin
            shutdown_selection_count          <= 32'd0;
            shutdown_selection_timer_expired  <= 1'b0;
        end else if (!shutdown_selection_timer_expired) begin
            if (shutdown_selection_count >= SHUTDOWN_SELECTION_TIMEOUT_CYCLES - 1) begin
                shutdown_selection_timer_expired <= 1'b1;
            end else begin
                shutdown_selection_count <= shutdown_selection_count + 1'b1;
            end
        end
    end

endmodule
