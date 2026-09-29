// =============================================================================
// Self-checking testbench for gridguard_top
//   RTL run  : iverilog -g2005 -o sim tb_gridguard_top.v gridguard_top.v
//              vvp sim
//   Gate-level: add -DGATE_LEVEL and use a netlist synthesized with
//              TICK_DIV = 4 plus the cell models instead of the RTL
//   Tests T1-T12 : reset values, register read/write, normal operation,
//          short overcurrent (no trip), sustained overcurrent (trip +
//          timing), interlock, lockout + reset, instant trip, CMD register,
//          fault-log clear, feeder independence, unused addresses
//   Tests T13-T18 (reset architecture: async assert + sync deassert):
//          reset asserted between clock edges while the design is busy,
//          reset held low for 10 cycles with busy inputs, reset released
//          between clock edges (exactly 2 clock edges until the logic runs),
//          short reset pulse with no clock edge, all register reset values,
//          normal operation after reset
// =============================================================================
`timescale 1ns/1ps

module tb_gridguard_top;

    localparam N        = 4;
    localparam TICK_DIV = 4;    // 4 clocks = 1 tick (fast, only for simulation)

    // register numbers
    localparam [2:0] R_THRESH = 3'd0, R_DELAY = 3'd1, R_STATUS  = 3'd2,
                     R_FLTCNT = 3'd3, R_FLTCUR = 3'd4, R_CURRENT = 3'd5,
                     R_CMD    = 3'd6;
    // states
    localparam [1:0] OPEN = 2'd0, CLOSED = 2'd1, TRIPPED = 2'd2, LOCKOUT = 2'd3;
    // command bits for the CMD register
    localparam [15:0] C_OPEN = 16'd1, C_CLOSE = 16'd2, C_RESET = 16'd4;

    // ---------------- DUT signals ----------------
    reg               clk = 1'b0;
    reg               rst_n;
    reg  [12*N-1:0]   current_i;
    reg  [N-1:0]      cmd_open, cmd_close, cmd_reset;
    reg  [5:0]        reg_addr;
    reg  [15:0]       reg_wdata;
    reg               reg_we, reg_re;
    wire [15:0]       reg_rdata;
    wire [N-1:0]      trip_o;
    wire [2*N-1:0]    status_o;
    wire              fault_event_o;

    always #10 clk = ~clk;      // 20 ns period = 50 MHz

`ifdef GATE_LEVEL
    // gate-level netlist: parameters are fixed inside the netlist
    // (it must be synthesized with TICK_DIV = 4 for this testbench)
    gridguard_top dut (
`else
    gridguard_top #(.N(N), .TICK_DIV(TICK_DIV), .LOCK_TRIPS(3)) dut (
`endif
        .clk(clk), .rst_n(rst_n), .current_i(current_i),
        .cmd_open(cmd_open), .cmd_close(cmd_close), .cmd_reset(cmd_reset),
        .reg_addr(reg_addr), .reg_wdata(reg_wdata), .reg_we(reg_we),
        .reg_re(reg_re), .reg_rdata(reg_rdata), .trip_o(trip_o),
        .status_o(status_o), .fault_event_o(fault_event_o)
    );

    // ---------------- bookkeeping ----------------
    integer errors = 0;
    integer checks = 0;
    integer fault_pulses = 0;
    integer cycles;
    reg [15:0] rd;

    always @(posedge clk)
        if (fault_event_o) fault_pulses = fault_pulses + 1;

    integer posedges = 0;           // counts rising clock edges
    integer p0, bad, f;
    always @(posedge clk) posedges = posedges + 1;

    // ---------------- helper tasks ----------------
    task check;
        input [31:0]     got;
        input [31:0]     exp;
        input [8*44-1:0] what;
        begin
            checks = checks + 1;
            if (got !== exp) begin
                errors = errors + 1;
                $display("  FAIL  %0s : got %0d, expected %0d (t=%0t)",
                         what, got, exp, $time);
            end else
                $display("  pass  %0s = %0d", what, got);
        end
    endtask

    task wait_clocks;                       // wait n clock cycles
        input integer n;
        integer i;
        begin
            for (i = 0; i < n; i = i + 1) @(negedge clk);
        end
    endtask

    task reg_write;
        input [2:0]  f;
        input [2:0]  r;
        input [15:0] d;
        begin
            @(negedge clk);
            reg_addr = {f, r}; reg_wdata = d; reg_we = 1'b1;
            @(negedge clk);
            reg_we = 1'b0;
        end
    endtask

    task reg_read;
        input  [2:0]  f;
        input  [2:0]  r;
        output [15:0] d;
        begin
            @(negedge clk);
            reg_addr = {f, r}; reg_re = 1'b1;
            @(negedge clk);
            reg_re = 1'b0;
            d = reg_rdata;
        end
    endtask

    task set_current;
        input integer f;
        input [11:0]  value;
        begin
            @(negedge clk);
            current_i[12*f +: 12] = value;
        end
    endtask

    task pin_cmd;                         // one-clock pulse on a command pin
        input integer f;
        input [1:0]   which;              // 0 open, 1 close, 2 reset
        begin
            @(negedge clk);
            case (which)
                2'd0: cmd_open[f]  = 1'b1;
                2'd1: cmd_close[f] = 1'b1;
                default: cmd_reset[f] = 1'b1;
            endcase
            @(negedge clk);
            cmd_open = 0; cmd_close = 0; cmd_reset = 0;
        end
    endtask

    function [1:0] st;                    // state of feeder f
        input integer f;
        st = status_o[2*f +: 2];
    endfunction

    // wait until feeder f trips; returns number of cycles (max limit)
    task wait_trip;
        input  integer f;
        input  integer limit;
        output integer n;
        begin
            n = 0;
            while ((trip_o[f] !== 1'b1) && (n < limit)) begin
                @(negedge clk);
                n = n + 1;
            end
        end
    endtask

`ifndef GATE_LEVEL
    // RTL only: look inside the DUT and count registers that are NOT at their
    // reset value (tick_cnt and trip_timer are not visible in the register map)
    integer ierr;
    task expect_reset_value;
        input [31:0]     got;
        input [31:0]     exp;
        input [8*32-1:0] name;
        begin
            if (got !== exp) begin
                ierr = ierr + 1;
                $display("        not reset: %0s = %0d (expected %0d)", name, got, exp);
            end
        end
    endtask

    `define FEEDER_RESET(K) \
        expect_reset_value(dut.g_feeder[K].threshold,  2000, "threshold");  \
        expect_reset_value(dut.g_feeder[K].trip_delay, 100,  "trip_delay"); \
        expect_reset_value(dut.g_feeder[K].trip_timer, 0,    "trip_timer"); \
        expect_reset_value(dut.g_feeder[K].state,      0,    "state");      \
        expect_reset_value(dut.g_feeder[K].streak,     0,    "streak");     \
        expect_reset_value(dut.g_feeder[K].flt_cnt,    0,    "flt_cnt");    \
        expect_reset_value(dut.g_feeder[K].flt_cur,    0,    "flt_cur");

    task check_all_internal_reset;
        input [8*44-1:0] what;
        begin
            ierr = 0;
            expect_reset_value(dut.rst_sync_ff1,  0, "rst_sync_ff1");
            expect_reset_value(dut.rst_sync_ff2,  0, "rst_sync_ff2");
            expect_reset_value(dut.rst_n_sync,    0, "rst_n_sync");
            expect_reset_value(dut.tick_cnt,      0, "tick_cnt");
            expect_reset_value(dut.fault_event_o, 0, "fault_event_o");
            expect_reset_value(dut.reg_rdata,     0, "reg_rdata");
            `FEEDER_RESET(0)
            `FEEDER_RESET(1)
            `FEEDER_RESET(2)
            `FEEDER_RESET(3)
            check(ierr, 0, what);
        end
    endtask
`endif

    // ---------------- test sequence ----------------
    initial begin
`ifndef GATE_LEVEL
        $dumpfile("tb_gridguard_top.vcd");
        $dumpvars(0, tb_gridguard_top);
`endif

        rst_n = 1'b0; current_i = 0;
        cmd_open = 0; cmd_close = 0; cmd_reset = 0;
        reg_addr = 0; reg_wdata = 0; reg_we = 0; reg_re = 0;
        wait_clocks(3);
        rst_n = 1'b1;
        wait_clocks(2);

        // ------------------------------------------------------------------
        $display("\n[T1] Reset values");
        check(status_o, 0, "all feeders OPEN after reset");
        check(trip_o, 0, "no trip after reset");
        reg_read(0, R_THRESH, rd); check(rd, 2000, "F0 THRESH reset value");
        reg_read(0, R_DELAY,  rd); check(rd, 100,  "F0 DELAY reset value");
        reg_read(3, R_FLTCNT, rd); check(rd, 0,    "F3 FLTCNT reset value");

        // ------------------------------------------------------------------
        $display("\n[T2] Register write / read back");
        reg_write(0, R_THRESH, 16'd1000);
        reg_write(0, R_DELAY,  16'd5);          // 5 ticks
        reg_read (0, R_THRESH, rd); check(rd, 1000, "F0 THRESH");
        reg_read (0, R_DELAY,  rd); check(rd, 5,    "F0 DELAY");
        reg_read (1, R_THRESH, rd); check(rd, 2000, "F1 THRESH not changed");

        // ------------------------------------------------------------------
        $display("\n[T3] Normal operation");
        set_current(0, 500);
        pin_cmd(0, 1);                          // CLOSE
        check(st(0), CLOSED, "F0 closes with normal current");
        wait_clocks(100);
        check(st(0), CLOSED, "F0 stays CLOSED");
        check(trip_o[0], 0, "F0 no trip");
        reg_read(0, R_CURRENT, rd); check(rd, 500, "F0 live CURRENT register");

        // ------------------------------------------------------------------
        $display("\n[T4] Short overcurrent bursts (shorter than delay)");
        repeat (3) begin
            set_current(0, 1500); wait_clocks(3 * TICK_DIV);   // 3 ticks < 5
            set_current(0, 500);  wait_clocks(2);
        end
        wait_clocks(20);
        check(st(0), CLOSED, "F0 still CLOSED (timer restarts)");
        check(fault_pulses, 0, "no fault event");

        // ------------------------------------------------------------------
        $display("\n[T5] Sustained overcurrent -> trip");
        set_current(0, 1500);
        wait_trip(0, 200, cycles);
        $display("        trip after %0d clocks (window 16..22)", cycles);
        check((cycles >= 16) && (cycles <= 22), 1, "trip time inside window");
        check(st(0), TRIPPED, "F0 state TRIPPED");
        wait_clocks(2);
        check(fault_pulses, 1, "one fault_event_o pulse");
        reg_read(0, R_FLTCNT, rd); check(rd, 1,    "F0 FLTCNT");
        reg_read(0, R_FLTCUR, rd); check(rd, 1500, "F0 FLTCUR captured");
        reg_read(0, R_STATUS, rd);
        check(rd, 16'b01_1_1_10, "F0 STATUS (streak1,trip,pickup,TRIPPED)");

        // ------------------------------------------------------------------
        $display("\n[T6] Interlock");
        pin_cmd(0, 1);                          // CLOSE while tripped
        check(st(0), TRIPPED, "CLOSE refused while TRIPPED");
        pin_cmd(0, 2);                          // RESET while fault active
        check(st(0), TRIPPED, "RESET refused while fault active");
        set_current(0, 500);                    // fault cleared
        pin_cmd(0, 1);
        check(st(0), TRIPPED, "CLOSE refused before RESET");
        pin_cmd(0, 2);
        check(st(0), OPEN, "RESET accepted after fault clears");
        set_current(0, 1500);                   // fault again while OPEN
        pin_cmd(0, 1);
        check(st(0), OPEN, "CLOSE refused while fault active");
        set_current(0, 500);
        pin_cmd(0, 1);
        check(st(0), CLOSED, "CLOSE accepted when healthy");

        // ------------------------------------------------------------------
        $display("\n[T7] Feeders are independent");
        set_current(1, 1800);                   // below F1 threshold (2000)
        pin_cmd(1, 1);
        check(st(1), CLOSED, "F1 closes");
        wait_clocks(150 * TICK_DIV);
        check(st(1), CLOSED, "F1 1800 < 2000 no trip");
        check(st(0), CLOSED, "F0 not affected");

        // ------------------------------------------------------------------
        $display("\n[T8] Lockout after 3 trips in a row");
        set_current(0, 1500);                   // trip #2
        wait_trip(0, 200, cycles);
        check(st(0), TRIPPED, "trip #2 -> TRIPPED");
        set_current(0, 500); pin_cmd(0, 2); pin_cmd(0, 1);
        check(st(0), CLOSED, "re-closed after reset");
        set_current(0, 1500);                   // trip #3
        wait_trip(0, 200, cycles);
        check(st(0), LOCKOUT, "trip #3 -> LOCKOUT");
        check(trip_o[0], 1, "trip_o high in LOCKOUT");
        pin_cmd(0, 2);
        check(st(0), LOCKOUT, "RESET refused in LOCKOUT with fault");
        pin_cmd(0, 1);
        check(st(0), LOCKOUT, "CLOSE refused in LOCKOUT");
        set_current(0, 500); pin_cmd(0, 2);
        check(st(0), OPEN, "RESET clears LOCKOUT");
        reg_read(0, R_STATUS, rd); check(rd[5:4], 0, "streak cleared");
        reg_read(0, R_FLTCNT, rd); check(rd, 3, "F0 FLTCNT = 3");
        pin_cmd(0, 1); set_current(0, 1500);    // next trip: only TRIPPED
        wait_trip(0, 200, cycles);
        check(st(0), TRIPPED, "after lockout reset -> TRIPPED again");
        set_current(0, 500); pin_cmd(0, 2);
        check(fault_pulses, 4, "fault pulses so far");

        // ------------------------------------------------------------------
        $display("\n[T9] Instant trip (delay = 0) and manual OPEN clears streak");
        reg_write(2, R_THRESH, 16'd800);
        reg_write(2, R_DELAY,  16'd0);
        set_current(2, 300); pin_cmd(2, 1);
        check(st(2), CLOSED, "F2 closed");
        set_current(2, 900);
        wait_trip(2, 50, cycles);
        check(cycles <= 2, 1, "F2 trips at once");
        set_current(2, 300); pin_cmd(2, 2); pin_cmd(2, 1);
        reg_read(2, R_STATUS, rd); check(rd[5:4], 1, "F2 streak = 1");
        pin_cmd(2, 0);                          // manual OPEN
        check(st(2), OPEN, "F2 manual OPEN");
        reg_read(2, R_STATUS, rd); check(rd[5:4], 0, "manual OPEN clears streak");

        // ------------------------------------------------------------------
        $display("\n[T10] Commands through the CMD register");
        set_current(3, 100);
        reg_write(3, R_CMD, C_CLOSE);
        check(st(3), CLOSED, "CMD CLOSE");
        reg_write(3, R_CMD, C_OPEN);
        check(st(3), OPEN, "CMD OPEN");
        reg_write(3, R_CMD, C_CLOSE);
        reg_write(3, R_THRESH, 16'd50);         // lower threshold -> fault
        reg_write(3, R_DELAY, 16'd1);
        wait_trip(3, 50, cycles);
        check(st(3), TRIPPED, "F3 tripped");
        reg_write(3, R_THRESH, 16'd2000);       // fault gone
        reg_write(3, R_CMD, C_RESET);
        check(st(3), OPEN, "CMD RESET");
        reg_write(3, R_CMD, C_OPEN | C_CLOSE);  // both: OPEN wins
        check(st(3), OPEN, "OPEN has priority over CLOSE");

        // ------------------------------------------------------------------
        $display("\n[T11] Clear fault log");
        reg_write(0, R_FLTCNT, 16'd0);
        reg_read (0, R_FLTCNT, rd); check(rd, 0, "F0 FLTCNT cleared");
        reg_read (0, R_FLTCUR, rd); check(rd, 0, "F0 FLTCUR cleared");

        // ------------------------------------------------------------------
        $display("\n[T12] Unused addresses");
        reg_write(5, R_THRESH, 16'd123);        // feeder 5 does not exist (N=4)
        reg_read (5, R_THRESH, rd); check(rd, 0, "missing feeder reads 0");
        reg_read (0, 3'd7, rd);     check(rd, 0, "reserved register reads 0");
        reg_read (0, R_CMD, rd);    check(rd, 0, "CMD register reads 0");
        check(status_o, {2'b00, 2'b00, 2'b01, 2'b00}, "final states");

        // ==================================================================
        // Reset architecture tests: async assertion + sync deassertion
        // ==================================================================

        // ------------------------------------------------------------------
        $display("\n[T13] Reset asserted between clock edges, design busy");
        reg_write(1, R_THRESH, 16'd1500);   // F1 (CLOSED, 1800 A) -> overcurrent,
                                            // its trip timer starts counting
        set_current(2, 300); pin_cmd(2, 1); // close F2 (THRESH 800, DELAY 0)
        reg_read(0, R_THRESH, rd);          // reg_rdata = 1000 (not reset value)
        wait_clocks(3 * TICK_DIV);
        set_current(2, 900);                // F2 overcurrent -> instant trip
        @(posedge clk); #3;                 // 3 ns after the trip edge
        check(fault_event_o, 1, "before: fault_event_o pulse high");
        check(st(1), CLOSED, "before: F1 CLOSED");
        check(st(2), TRIPPED, "before: F2 TRIPPED");
        check(reg_rdata, 1000, "before: reg_rdata holds read data");
`ifndef GATE_LEVEL
        check(dut.g_feeder[1].trip_timer > 0, 1, "before: RTL F1 trip timer running");
`endif
        p0 = posedges;
        rst_n = 1'b0;                       // ASSERT reset between clock edges
        #2;                                 // 2 ns later, no clock edge yet
        check(posedges - p0, 0, "no clock edge since assertion");
        check(status_o, 0, "status_o all OPEN at once");
        check(trip_o, 0, "trip_o cleared at once");
        check(fault_event_o, 0, "fault_event_o cleared at once");
        check(reg_rdata, 0, "reg_rdata cleared at once");
`ifndef GATE_LEVEL
        check_all_internal_reset("RTL: every register reset at once");
`endif

        // ------------------------------------------------------------------
        $display("\n[T14] Reset held low for 10 clock cycles, inputs busy");
        bad = 0;
        repeat (10) begin
            @(negedge clk);                 // try to disturb the design
            cmd_close = {N{1'b1}};
            cmd_reset = {N{1'b1}};
            reg_addr  = {3'd0, R_THRESH};  reg_wdata = 16'd77;
            reg_we    = 1'b1;              reg_re    = 1'b1;
            current_i = {N{12'd4000}};
            @(posedge clk); #1;
            if (status_o !== 0 || trip_o !== 0 || fault_event_o !== 0 ||
                reg_rdata !== 0)
                bad = bad + 1;
`ifndef GATE_LEVEL
            if (dut.rst_n_sync !== 1'b0 || dut.tick_cnt !== 0)
                bad = bad + 1;
`endif
        end
        @(negedge clk);
        cmd_close = 0; cmd_reset = 0; reg_we = 0; reg_re = 0;
        check(bad, 0, "design stays in reset all 10 cycles");
`ifndef GATE_LEVEL
        check_all_internal_reset("RTL: writes/commands were ignored");
`endif

        // ------------------------------------------------------------------
        $display("\n[T15] Reset released between clock edges");
        // Hold a CLOSE command on F0 and a read of F0 THRESH, so we can see
        // the exact clock edge where the logic starts to work again.
        @(negedge clk);
        current_i = 0;
        current_i[11:0] = 12'd500;          // F0 normal current
        cmd_close = 1;                      // CLOSE F0 (held)
        reg_addr  = {3'd0, R_THRESH};  reg_re = 1'b1;   // read F0 (held)
        @(posedge clk); #7;
        rst_n = 1'b1;                       // RELEASE reset 7 ns after an edge
        #1;
        check(status_o, 0, "just after release: still reset");
        check(reg_rdata, 0, "just after release: rdata still 0");
`ifndef GATE_LEVEL
        check(dut.rst_n_sync, 0, "RTL: release not passed on async");
`endif
        @(posedge clk); #1;                 // 1st clock edge after release
        check(st(0), OPEN, "1st edge: F0 still OPEN");
        check(reg_rdata, 0, "1st edge: read still ignored");
`ifndef GATE_LEVEL
        check({dut.rst_sync_ff1, dut.rst_sync_ff2}, 2'b10, "RTL: 1st edge ff1=1, ff2=0");
`endif
        @(posedge clk); #1;                 // 2nd clock edge
        check(st(0), OPEN, "2nd edge: F0 still OPEN");
        check(reg_rdata, 0, "2nd edge: read still ignored");
`ifndef GATE_LEVEL
        check(dut.rst_n_sync, 1, "RTL: 2nd edge rst_n_sync = 1");
        check(dut.tick_cnt, 0, "RTL: 2nd edge tick counter still 0");
`endif
        @(posedge clk); #1;                 // 3rd edge: first normal edge
        check(st(0), CLOSED, "3rd edge: F0 CLOSED (logic runs)");
        check(reg_rdata, 2000, "3rd edge: read works (2000)");
`ifndef GATE_LEVEL
        check(dut.tick_cnt, 1, "RTL: 3rd edge tick counter = 1");
`endif
        @(negedge clk);
        cmd_close = 0; reg_re = 0;

        // ------------------------------------------------------------------
        $display("\n[T16] Short reset pulse (3 ns, no clock edge while low)");
        @(posedge clk); #4;
        p0 = posedges;
        rst_n = 1'b0;  #3;  rst_n = 1'b1;
        check(posedges - p0, 0, "pulse had no clock edge");
        check(status_o, 0, "short pulse resets F0 to OPEN");
`ifndef GATE_LEVEL
        check(dut.rst_n_sync, 0, "RTL: internal reset still held");
`endif
        wait_clocks(3);

        // ------------------------------------------------------------------
        $display("\n[T17] All register-map reset values, all feeders");
        for (f = 0; f < N; f = f + 1) begin
            $display("        feeder %0d", f);
            reg_read(f, R_THRESH, rd); check(rd, 2000, "THRESH = 2000");
            reg_read(f, R_DELAY,  rd); check(rd, 100,  "DELAY = 100");
            reg_read(f, R_STATUS, rd); check(rd, 0,    "STATUS = 0 (OPEN, streak 0)");
            reg_read(f, R_FLTCNT, rd); check(rd, 0,    "FLTCNT = 0");
            reg_read(f, R_FLTCUR, rd); check(rd, 0,    "FLTCUR = 0");
        end

        // ------------------------------------------------------------------
        $display("\n[T18] Normal operation after reset");
        p0 = fault_pulses;
        reg_write(0, R_THRESH, 16'd1000);
        reg_write(0, R_DELAY,  16'd5);
        set_current(0, 500);
        pin_cmd(0, 1);
        check(st(0), CLOSED, "F0 closes");
        set_current(0, 1500);
        wait_trip(0, 200, cycles);
        $display("        trip after %0d clocks (window 16..22)", cycles);
        check((cycles >= 16) && (cycles <= 22), 1, "trip time inside window");
        check(st(0), TRIPPED, "F0 TRIPPED");
        wait_clocks(2);
        check(fault_pulses - p0, 1, "one fault_event_o pulse");
        reg_read(0, R_FLTCNT, rd); check(rd, 1,    "F0 FLTCNT = 1");
        reg_read(0, R_FLTCUR, rd); check(rd, 1500, "F0 FLTCUR captured");
        reg_read(0, R_STATUS, rd); check(rd, 16'b01_1_1_10, "F0 STATUS (streak 1)");
        pin_cmd(0, 1);
        check(st(0), TRIPPED, "CLOSE interlock still works");
        set_current(0, 500); pin_cmd(0, 2);
        check(st(0), OPEN, "RESET command still works");

        // ------------------------------------------------------------------
        $display("\n==================================================");
        if (errors == 0)
            $display(" ALL %0d CHECKS PASSED", checks);
        else
            $display(" %0d OF %0d CHECKS FAILED", errors, checks);
        $display("==================================================\n");
        $finish;
    end

    // safety timeout
    initial begin
        #5_000_000;
        $display("TIMEOUT");
        $finish;
    end

endmodule
