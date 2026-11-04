// tb_zcr.v
// Self-checking testbench for zcr_calc (128-sample window, HYST = 16).
// Directed tests have hand-calculated expected counts.
// The random test compares against a software model kept in this file.

`timescale 1ns/1ps

module tb_zcr;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         sample_valid = 0;
    reg  [11:0] sample_in = 0;
    wire [7:0]  zcr_count;
    wire        zcr_valid;

    zcr_calc #(.WIN_BITS(7), .HYST(16)) dut (
        .clk(clk), .rst_n(rst_n),
        .sample_valid(sample_valid), .sample_in(sample_in),
        .zcr_count(zcr_count), .zcr_valid(zcr_valid)
    );

    always #25 clk = ~clk;   // 20 MHz

    integer errors = 0;
    integer tests  = 0;

    // ---- software model (same rules, written separately) ----
    integer m_valid, m_pol, m_cnt, m_win, m_expected, m_done;

    task model_reset;
        begin
            m_valid = 0; m_pol = 0; m_cnt = 0; m_win = 0;
            m_expected = 0; m_done = 0;
        end
    endtask

    task model_sample;
        input integer s;
        begin
            m_done = 0;
            if (s > 16) begin
                if (m_valid == 1 && m_pol == 0) m_cnt = m_cnt + 1;
                m_pol = 1; m_valid = 1;
            end else if (s < -16) begin
                if (m_valid == 1 && m_pol == 1) m_cnt = m_cnt + 1;
                m_pol = 0; m_valid = 1;
            end
            m_win = m_win + 1;
            if (m_win == 128) begin
                m_expected = m_cnt;
                m_cnt = 0; m_win = 0; m_done = 1;
            end
        end
    endtask

    // send one sample; when it finishes a window, check the result
    task send;
        input integer s;
        begin
            @(negedge clk);
            sample_in    = s[11:0];
            sample_valid = 1;
            @(negedge clk);          // posedge in between captured the sample
            sample_valid = 0;
            model_sample(s);
        end
    endtask

    task do_reset;
        begin
            @(negedge clk);
            rst_n = 0;
            repeat (2) @(negedge clk);
            rst_n = 1;
            model_reset;
        end
    endtask

    task check;
        input integer exp;
        input [255:0] name;
        begin
            tests = tests + 1;
            if (zcr_valid !== 1'b1 || zcr_count !== exp[7:0]) begin
                errors = errors + 1;
                $display("FAIL %0s: valid=%b count=%0d expected=%0d",
                         name, zcr_valid, zcr_count, exp);
            end else begin
                $display("ok   %0s: count=%0d", name, zcr_count);
            end
        end
    endtask

    integer i, k, r;

    initial begin
        $dumpfile("zcr.vcd");
        $dumpvars(0, tb_zcr);
        model_reset;
        repeat (3) @(negedge clk);
        rst_n = 1;

        // 1) all zeros -> no crossings
        do_reset;
        for (i = 0; i < 128; i = i + 1) send(0);
        check(0, "all zeros");

        // 2) alternate +500 / -500 every sample -> first sample only sets
        //    polarity, then 127 crossings
        do_reset;
        for (i = 0; i < 128; i = i + 1) send((i % 2) ? -500 : 500);
        check(127, "alternate +-500");

        // 3) alternate +17 / -17 (just outside the band of 16) -> 127
        do_reset;
        for (i = 0; i < 128; i = i + 1) send((i % 2) ? -17 : 17);
        check(127, "alternate +-17");

        // 4) alternate +16 / -16 (exactly on the band edge) -> 0
        do_reset;
        for (i = 0; i < 128; i = i + 1) send((i % 2) ? -16 : 16);
        check(0, "alternate +-16 (inside band)");

        // 5) big positive baseline with noise dips into the band -> 0
        do_reset;
        for (i = 0; i < 32; i = i + 1) begin
            send(100); send(5); send(-5); send(100);
        end
        check(0, "noise dips inside band");

        // 6) square wave: 4 samples positive, 4 negative -> 32 blocks, 31 changes
        do_reset;
        for (i = 0; i < 128; i = i + 1) send(((i / 4) % 2) ? -500 : 500);
        check(31, "square wave period 8");

        // 7) two windows back to back: polarity carries across the boundary
        //    window 1: 127, window 2: 128 (its first sample crosses)
        do_reset;
        for (i = 0; i < 128; i = i + 1) send((i % 2) ? -500 : 500);
        check(127, "two windows, first");
        for (i = 128; i < 256; i = i + 1) send((i % 2) ? -500 : 500);
        check(128, "two windows, second");

        // 8) extreme values -2048 and +2047
        do_reset;
        for (i = 0; i < 128; i = i + 1) send((i % 2) ? -2048 : 2047);
        check(127, "full-scale alternate");

        // 9) random data, 5 windows, compared with the software model
        do_reset;
        for (k = 0; k < 5; k = k + 1) begin
            for (i = 0; i < 128; i = i + 1) begin
                r = ($random % 300);        // -299 .. 299
                send(r);
            end
            check(m_expected, "random window vs model");
        end

        // 10) sample_valid = 0 must not advance the window
        do_reset;
        for (i = 0; i < 127; i = i + 1) send((i % 2) ? -500 : 500);
        @(negedge clk);
        sample_in = 12'h7FF; sample_valid = 0;
        repeat (10) @(negedge clk);
        if (zcr_valid !== 1'b0) begin
            errors = errors + 1;
            $display("FAIL: window advanced while sample_valid = 0");
        end
        send(-500);   // 128th sample: window should finish now
        check(127, "hold while invalid, then finish");

        $display("--------------------------------------------");
        $display("Tests run: %0d   Errors: %0d", tests, errors);
        if (errors == 0) $display("RESULT: PASS");
        else             $display("RESULT: FAIL");
        $display("--------------------------------------------");
        $finish;
    end

endmodule
