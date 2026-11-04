// tb_mav.v
// Self-checking testbench for sample_window + mav_calc.
// It keeps its own software model of the last 8 samples and compares the
// hardware MAV against it after every sample once the window is full.

`timescale 1ns/1ps

module tb_mav;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         sample_valid = 0;
    reg  [11:0] sample_in = 0;
    wire [95:0] taps;
    wire        window_full;
    wire [11:0] mav;

    sample_window u_win (
        .clk(clk), .rst_n(rst_n),
        .sample_valid(sample_valid), .sample_in(sample_in),
        .taps(taps), .window_full(window_full)
    );

    mav_calc u_mav (.taps(taps), .mav(mav));

    always #25 clk = ~clk;   // 20 MHz clock (50 ns period)

    // ---- software reference model ----
    integer hist [0:7];
    integer n_sent;
    integer errors;
    integer checks;
    integer j;
    integer sum;
    integer expected;

    task send;
        input integer s;       // signed value, -2048 .. 2047
        begin
            @(negedge clk);
            sample_in    = s[11:0];
            sample_valid = 1;
            @(negedge clk);    // the posedge in between captured the sample
            sample_valid = 0;

            // update the model
            for (j = 7; j > 0; j = j - 1) hist[j] = hist[j-1];
            hist[0] = s;
            n_sent = n_sent + 1;

            if (n_sent >= 8) begin
                sum = 0;
                for (j = 0; j < 8; j = j + 1)
                    sum = sum + ((hist[j] < 0) ? -hist[j] : hist[j]);
                expected = sum / 8;
                checks = checks + 1;
                if (mav !== expected[11:0] || window_full !== 1'b1) begin
                    errors = errors + 1;
                    $display("FAIL: sample #%0d  mav=%0d expected=%0d full=%b",
                             n_sent, mav, expected, window_full);
                end
            end
        end
    endtask

    integer i;
    integer r;

    initial begin
        $dumpfile("mav.vcd");
        $dumpvars(0, tb_mav);

        n_sent = 0; errors = 0; checks = 0;
        for (i = 0; i < 8; i = i + 1) hist[i] = 0;

        // reset
        repeat (3) @(negedge clk);
        rst_n = 1;

        // 1) rest: all zeros
        for (i = 0; i < 10; i = i + 1) send(0);

        // 2) constant positive value
        for (i = 0; i < 10; i = i + 1) send(100);

        // 3) alternating +300 / -300 (MAV should settle at 300)
        for (i = 0; i < 12; i = i + 1) send((i % 2) ? -300 : 300);

        // 4) rail saturation: all -2048, then all +2047
        for (i = 0; i < 10; i = i + 1) send(-2048);
        for (i = 0; i < 10; i = i + 1) send(2047);

        // 5) random samples across the full 12-bit signed range
        for (i = 0; i < 200; i = i + 1) begin
            r = ($random % 2048);          // -2047 .. 2047
            send(r);
        end

        // 6) sample_valid = 0 must freeze the window
        @(negedge clk);
        sample_in = 12'h123;
        sample_valid = 0;
        repeat (5) @(negedge clk);
        if (mav !== expected[11:0]) begin
            errors = errors + 1;
            $display("FAIL: window changed while sample_valid = 0");
        end

        $display("--------------------------------------------");
        $display("Checks run: %0d   Errors: %0d", checks, errors);
        if (errors == 0) $display("RESULT: PASS");
        else             $display("RESULT: FAIL");
        $display("--------------------------------------------");
        $finish;
    end

endmodule
