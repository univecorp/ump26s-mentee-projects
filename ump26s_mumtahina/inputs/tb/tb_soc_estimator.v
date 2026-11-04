`timescale 1ns/1ps
module tb_soc_estimator;
    reg clk = 0, rst_n = 0, start = 0, sample_valid = 0;
    reg [15:0] curr_code = 0, volt_code = 0;
    reg [15:0] capacity_scale = 16'd233, rest_thresh = 16'd200, drift_limit = 16'd512;
    wire [7:0] soc;
    wire soc_valid, at_rest, low_soc_alarm, drift_alarm;

    soc_estimator dut (
        .clk(clk), .rst_n(rst_n), .start(start), .sample_valid(sample_valid),
        .curr_code(curr_code), .volt_code(volt_code),
        .capacity_scale(capacity_scale), .rest_thresh(rest_thresh), .drift_limit(drift_limit),
        .soc(soc), .soc_valid(soc_valid), .at_rest(at_rest),
        .low_soc_alarm(low_soc_alarm), .drift_alarm(drift_alarm));

    always #10 clk = ~clk;

    integer k, errors = 0;
    reg drift_seen = 0;
    always @(posedge clk) if (drift_alarm) drift_seen <= 1'b1;

    task sample(input [15:0] i, input [15:0] v);
        begin
            @(negedge clk); curr_code = i; volt_code = v; sample_valid = 1;
            @(negedge clk); sample_valid = 0;
            @(negedge clk);
        end
    endtask

    task check(input cond, input [8*36-1:0] msg);
        begin
            if (cond) $display("PASS: %0s", msg);
            else begin errors = errors + 1; $display("FAIL: %0s", msg); end
        end
    endtask

    initial begin
        $dumpfile("soc.vcd"); $dumpvars(0, tb_soc_estimator);
        repeat (3) @(negedge clk); rst_n = 1;

        @(negedge clk); start = 1; @(negedge clk); start = 0;
        sample(16'd0, 16'd37667);
        check(soc_valid, "soc_valid after seed");
        check(soc >= 49 && soc <= 51, "seed SoC ~50%");

        for (k = 0; k < 60; k = k + 1) sample(16'd20000, 16'd38500);
        $display("SoC after charge    = %0d %%", soc);
        check(soc >= 65 && soc <= 68, "charging raises SoC to ~66%");

        for (k = 0; k < 120; k = k + 1) sample(-16'sd20000, 16'd36000);
        $display("SoC after discharge = %0d %%", soc);
        check(soc >= 32 && soc <= 35, "discharging lowers SoC to ~33%");

        drift_seen = 0;
        for (k = 0; k < 12; k = k + 1) sample(16'd0, 16'd36555);
        check(at_rest, "at_rest asserted");
        check(!drift_seen, "no drift alarm (agree)");
        check(soc >= 32 && soc <= 34, "SoC kept ~33% after rest");

        for (k = 0; k < 40; k = k + 1) sample(-16'sd20000, 16'd36000);
        drift_seen = 0;
        for (k = 0; k < 12; k = k + 1) sample(16'd0, 16'd37000);
        check(drift_seen, "drift_alarm pulsed");
        check(soc >= 39 && soc <= 41, "accumulator corrected to ~40%");

        for (k = 0; k < 110; k = k + 1) sample(-16'sd20000, 16'd36000);
        $display("SoC after deep dis. = %0d %%", soc);
        check(low_soc_alarm, "low_soc_alarm asserted");

        $display("==== DONE, errors = %0d ====", errors);
        $finish;
    end
endmodule
