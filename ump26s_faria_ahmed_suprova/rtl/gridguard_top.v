// =============================================================================
// GridGuard : Digital Overcurrent Protection and Remote Switching Controller
//             for Smart Grid Feeders
// -----------------------------------------------------------------------------
// Technology : IHP SG13G2 (130 nm), OpenROAD-flow-scripts (ORFS)
// Language   : Verilog-2005, single flat module, fully synchronous
//              (no sub-modules, no memory macros, only flip-flops + logic)
// Clock      : 50 MHz (20 ns)
//
// What it does for every feeder (N feeders):
//   1. Pickup     : overcurrent when current > threshold (12-bit compare)
//   2. Trip timer : counts 1 ms ticks while the overcurrent stays. When the
//                   timer reaches the programmed delay -> trip
//                   (definite-time overcurrent protection)
//   3. Breaker FSM: OPEN / CLOSED / TRIPPED / LOCKOUT with interlock
//                   (CLOSE and RESET are refused while the fault is active)
//   4. Fault log  : trip counter + current captured at the moment of trip
//
// Register map (16-bit data, 6-bit address)
//   reg_addr[5:3] = feeder number (0 .. N-1)
//   reg_addr[2:0] = register of that feeder:
//     0 THRESH  RW [11:0] pickup threshold                (reset = 2000)
//     1 DELAY   RW [15:0] trip delay in ticks, 1 tick=1 ms (reset = 100)
//     2 STATUS  RO [1:0] state, [2] overcurrent now, [3] trip,
//                  [5:4] trips in a row
//     3 FLTCNT  RO [7:0] total trips (stops at 255). Any write here clears
//                  the fault log (FLTCNT and FLTCUR) of this feeder
//     4 FLTCUR  RO [11:0] current sample captured at the last trip
//     5 CURRENT RO [11:0] live current sample
//     6 CMD     WO bit0 = OPEN, bit1 = CLOSE, bit2 = RESET (one-clock command)
//     7 -       reserved, reads 0
//   Write: reg_we = 1 -> register is written at the next rising clock edge
//   Read : reg_re = 1 -> reg_rdata is updated at the next rising clock edge
//
// Breaker state code (status_o and STATUS[1:0])
//   00 OPEN    : breaker open (state after reset)
//   01 CLOSED  : breaker closed, protection is active
//   10 TRIPPED : opened by protection, waits for RESET
//   11 LOCKOUT : tripped LOCK_TRIPS times in a row, waits for RESET
//
// Reset: asynchronous assertion + synchronous deassertion
//   rst_n      : EXTERNAL reset pin (active-low), may change at any time
//   rst_n_sync : INTERNAL reset from a 2-flip-flop reset synchronizer.
//                Every flip-flop except the synchronizer uses rst_n_sync.
//   rst_n = 0  -> the whole design is reset at once (no clock edge needed)
//   rst_n = 1  -> the design leaves reset after 2 rising clock edges,
//                 all flip-flops in the same clock cycle
//
// All inputs except rst_n are assumed to be synchronous to clk.
// =============================================================================

`timescale 1ns / 1ps

module gridguard_top #(
    parameter N          = 4,      // number of feeders (1 .. 8)
    parameter TICK_DIV   = 50000,  // clocks per tick: 50 MHz / 50000 = 1 ms
    parameter LOCK_TRIPS = 3       // trips in a row that give LOCKOUT (1 .. 3)
) (
    input  wire              clk,
    input  wire              rst_n,          // EXTERNAL reset, active-low, async

    // Feeder current samples: feeder k uses current_i[12*k +: 12]
    input  wire [12*N-1:0]   current_i,

    // Breaker commands, one bit per feeder
    input  wire [N-1:0]      cmd_open,
    input  wire [N-1:0]      cmd_close,
    input  wire [N-1:0]      cmd_reset,

    // Host register interface
    input  wire [5:0]        reg_addr,
    input  wire [15:0]       reg_wdata,
    input  wire              reg_we,
    input  wire              reg_re,
    output reg  [15:0]       reg_rdata,

    // Status outputs
    output wire [N-1:0]      trip_o,         // 1 = feeder is TRIPPED or LOCKOUT
    output wire [2*N-1:0]    status_o,       // feeder k state = status_o[2*k +: 2]
    output reg               fault_event_o   // one-clock pulse when any feeder trips
);

    // -------------------------------------------------------------------------
    // Constants
    // -------------------------------------------------------------------------
    localparam [1:0] ST_OPEN    = 2'b00;
    localparam [1:0] ST_CLOSED  = 2'b01;
    localparam [1:0] ST_TRIPPED = 2'b10;
    localparam [1:0] ST_LOCKOUT = 2'b11;

    localparam [2:0] R_THRESH  = 3'd0;
    localparam [2:0] R_DELAY   = 3'd1;
    localparam [2:0] R_STATUS  = 3'd2;
    localparam [2:0] R_FLTCNT  = 3'd3;
    localparam [2:0] R_FLTCUR  = 3'd4;
    localparam [2:0] R_CURRENT = 3'd5;
    localparam [2:0] R_CMD     = 3'd6;

    localparam [11:0] DEF_THRESH  = 12'd2000;         // reset threshold
    localparam [15:0] DEF_DELAY   = 16'd100;          // reset delay = 100 ms
    localparam [15:0] TICK_MAX    = TICK_DIV - 1;     // tick counter end value
    localparam [1:0]  STREAK_LAST = LOCK_TRIPS - 1;   // trips before LOCKOUT

    // -------------------------------------------------------------------------
    // Reset synchronizer: asynchronous assertion, synchronous deassertion
    // -------------------------------------------------------------------------
    // rst_n      = EXTERNAL reset pin (active-low). It can go low or high at
    //              any moment; it is not aligned to clk.
    // rst_n_sync = INTERNAL reset (active-low). All other flip-flops of
    //              GridGuard use ONLY this signal as their reset.
    //
    // Why is assertion asynchronous?
    //   When rst_n goes low, both flip-flops below are cleared at once through
    //   their asynchronous reset pin. rst_n_sync goes low immediately, so the
    //   whole design enters its reset state (all breakers OPEN) without
    //   waiting for a clock edge. This works even if the clock is stopped.
    //
    // Why is deassertion synchronized?
    //   If rst_n went straight to all flip-flops, its rising edge could come
    //   very close to a clock edge. Then some flip-flops would leave reset in
    //   this clock cycle, others in the next one, and some could become
    //   metastable, so the design could start in a mixed, wrong state.
    //   Here the release passes through two flip-flops clocked by clk, so
    //   rst_n_sync can only rise just after a clock edge. All flip-flops then
    //   leave reset in the same clock cycle, with a full clock period of
    //   margin (the timing tool checks this as recovery/removal).
    //
    // How the two flip-flops work:
    //   rst_n = 0               : ff1 = 0, ff2 = 0  -> rst_n_sync = 0
    //   1st clock edge, rst_n=1 : ff1 = 1, ff2 = 0  -> still in reset
    //   2nd clock edge          : ff1 = 1, ff2 = 1  -> rst_n_sync = 1
    //   The rest of the design runs normally from the 3rd clock edge.
    //   If rst_n rises very close to the 1st edge, ff1 may go metastable.
    //   It has one full clock period to settle before ff2 samples it, so
    //   rst_n_sync stays clean. ff2 cannot go metastable at that edge: its
    //   input (ff1) is still 0, the same value as its reset value.
    // -------------------------------------------------------------------------
    reg rst_sync_ff1;
    reg rst_sync_ff2;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            rst_sync_ff1 <= 1'b0;          // assert: immediate, no clock needed
            rst_sync_ff2 <= 1'b0;
        end else begin
            rst_sync_ff1 <= 1'b1;          // release: shift a 1 through
            rst_sync_ff2 <= rst_sync_ff1;
        end
    end

    wire rst_n_sync = rst_sync_ff2;        // internal reset for all other logic

    // -------------------------------------------------------------------------
    // 1 ms time base, shared by all feeders
    // -------------------------------------------------------------------------
    reg  [15:0] tick_cnt;
    wire        tick = (tick_cnt == TICK_MAX);

    always @(posedge clk or negedge rst_n_sync) begin
        if (!rst_n_sync)
            tick_cnt <= 16'd0;
        else if (tick)
            tick_cnt <= 16'd0;
        else
            tick_cnt <= tick_cnt + 16'd1;
    end

    // -------------------------------------------------------------------------
    // Per-feeder values collected into flat buses (used by the read logic)
    // -------------------------------------------------------------------------
    wire [12*N-1:0] thresh_all;
    wire [16*N-1:0] delay_all;
    wire [2*N-1:0]  state_all;
    wire [N-1:0]    pickup_all;
    wire [2*N-1:0]  streak_all;
    wire [8*N-1:0]  fltcnt_all;
    wire [12*N-1:0] fltcur_all;
    wire [N-1:0]    trip_evt;

    // -------------------------------------------------------------------------
    // One copy of this logic for every feeder
    // -------------------------------------------------------------------------
    genvar k;
    generate
        for (k = 0; k < N; k = k + 1) begin : g_feeder

            localparam [2:0] FID = k;   // this feeder's number

            // ---------------- inputs of this feeder ----------------
            wire [11:0] cur    = current_i[12*k +: 12];
            wire        my_wr  = reg_we && (reg_addr[5:3] == FID);
            wire        wr_cmd = my_wr && (reg_addr[2:0] == R_CMD);

            // A command can come from the pins OR from the CMD register
            wire do_open  = cmd_open[k]  | (wr_cmd & reg_wdata[0]);
            wire do_close = cmd_close[k] | (wr_cmd & reg_wdata[1]);
            wire do_reset = cmd_reset[k] | (wr_cmd & reg_wdata[2]);

            // ---------------- setting registers ----------------
            reg [11:0] threshold;
            reg [15:0] trip_delay;

            always @(posedge clk or negedge rst_n_sync) begin
                if (!rst_n_sync) begin
                    threshold  <= DEF_THRESH;
                    trip_delay <= DEF_DELAY;
                end else begin
                    if (my_wr && (reg_addr[2:0] == R_THRESH))
                        threshold <= reg_wdata[11:0];
                    if (my_wr && (reg_addr[2:0] == R_DELAY))
                        trip_delay <= reg_wdata;
                end
            end

            // ---------------- overcurrent detect + trip timer ----------------
            reg  [1:0]  state;
            reg  [15:0] trip_timer;

            wire pickup   = (cur > threshold);         // overcurrent right now
            wire armed    = (state == ST_CLOSED);      // protection active
            wire trip_now = armed && pickup && (trip_timer >= trip_delay);

            always @(posedge clk or negedge rst_n_sync) begin
                if (!rst_n_sync)
                    trip_timer <= 16'd0;
                else if (!armed || !pickup)
                    trip_timer <= 16'd0;                   // no fault: restart
                else if (tick && (trip_timer != 16'hFFFF))
                    trip_timer <= trip_timer + 16'd1;      // fault: count ticks
            end

            // ---------------- breaker state machine ----------------
            reg  [1:0] streak;                          // trips in a row
            wire       last_trip = (streak >= STREAK_LAST);

            always @(posedge clk or negedge rst_n_sync) begin
                if (!rst_n_sync) begin
                    state  <= ST_OPEN;
                    streak <= 2'd0;
                end else begin
                    case (state)
                        ST_OPEN: begin
                            // Interlock: CLOSE is refused while overcurrent
                            if (do_close && !do_open && !pickup)
                                state <= ST_CLOSED;
                        end

                        ST_CLOSED: begin
                            if (trip_now) begin
                                state <= last_trip ? ST_LOCKOUT : ST_TRIPPED;
                                if (streak != 2'd3)
                                    streak <= streak + 2'd1;
                            end else if (do_open) begin
                                state  <= ST_OPEN;
                                streak <= 2'd0;     // normal manual opening
                            end
                        end

                        ST_TRIPPED: begin
                            // Interlock: RESET only after the fault is gone
                            if (do_reset && !pickup)
                                state <= ST_OPEN;
                        end

                        default: begin              // ST_LOCKOUT
                            if (do_reset && !pickup) begin
                                state  <= ST_OPEN;
                                streak <= 2'd0;
                            end
                        end
                    endcase
                end
            end

            // ---------------- fault-event log ----------------
            reg  [7:0]  flt_cnt;
            reg  [11:0] flt_cur;
            wire        clr_log = my_wr && (reg_addr[2:0] == R_FLTCNT);

            always @(posedge clk or negedge rst_n_sync) begin
                if (!rst_n_sync) begin
                    flt_cnt <= 8'd0;
                    flt_cur <= 12'd0;
                end else if (trip_now) begin
                    if (flt_cnt != 8'hFF)
                        flt_cnt <= flt_cnt + 8'd1;
                    flt_cur <= cur;
                end else if (clr_log) begin
                    flt_cnt <= 8'd0;
                    flt_cur <= 12'd0;
                end
            end

            // ---------------- connect to buses and outputs ----------------
            assign thresh_all[12*k +: 12] = threshold;
            assign delay_all [16*k +: 16] = trip_delay;
            assign state_all [2*k  +: 2]  = state;
            assign pickup_all[k]          = pickup;
            assign streak_all[2*k  +: 2]  = streak;
            assign fltcnt_all[8*k  +: 8]  = flt_cnt;
            assign fltcur_all[12*k +: 12] = flt_cur;
            assign trip_evt[k]            = trip_now;
            assign trip_o[k]              = state[1];   // TRIPPED or LOCKOUT
        end
    endgenerate

    assign status_o = state_all;

    // -------------------------------------------------------------------------
    // Fault event pulse (one clock when any feeder trips)
    // -------------------------------------------------------------------------
    always @(posedge clk or negedge rst_n_sync) begin
        if (!rst_n_sync)
            fault_event_o <= 1'b0;
        else
            fault_event_o <= |trip_evt;
    end

    // -------------------------------------------------------------------------
    // Register read (registered output, 1-clock latency)
    // -------------------------------------------------------------------------
    reg [15:0] rd_data;
    integer    j;

    always @(*) begin
        rd_data = 16'h0000;
        for (j = 0; j < N; j = j + 1) begin
            if (reg_addr[5:3] == j[2:0]) begin
                case (reg_addr[2:0])
                    R_THRESH : rd_data = {4'h0, thresh_all[12*j +: 12]};
                    R_DELAY  : rd_data = delay_all[16*j +: 16];
                    R_STATUS : rd_data = {10'd0, streak_all[2*j +: 2],
                                          state_all[2*j+1], pickup_all[j],
                                          state_all[2*j +: 2]};
                    R_FLTCNT : rd_data = {8'h00, fltcnt_all[8*j +: 8]};
                    R_FLTCUR : rd_data = {4'h0, fltcur_all[12*j +: 12]};
                    R_CURRENT: rd_data = {4'h0, current_i[12*j +: 12]};
                    default  : rd_data = 16'h0000;   // CMD (write-only), reserved
                endcase
            end
        end
    end

    always @(posedge clk or negedge rst_n_sync) begin
        if (!rst_n_sync)
            reg_rdata <= 16'h0000;
        else if (reg_re)
            reg_rdata <= rd_data;
    end

endmodule
