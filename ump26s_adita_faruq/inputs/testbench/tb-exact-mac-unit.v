`timescale 1ns/1ps

module tb_mac_unit;

    parameter WIDTH = 8;

    reg clk;
    reg rst_n;
    reg valid_in;
    reg [WIDTH-1:0] a;
    reg [WIDTH-1:0] b;

    wire [2*WIDTH:0] result;
    wire valid_out;

    mac_unit #(
        .WIDTH(WIDTH)
    ) dut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_in(valid_in),
        .a(a),
        .b(b),
        .result(result),
        .valid_out(valid_out)
    );

    // 10 ns clock period
    always #5 clk = ~clk;

    initial begin

        // Initial values
        clk = 0;
        rst_n = 0;
        valid_in = 0;
        a = 0;
        b = 0;

        // Hold reset for one clock cycle
        #10;
        rst_n = 1;

        // 3 x 4 = 12
        @(negedge clk);
        a = 8'd3;
        b = 8'd4;
        valid_in = 1;

        @(negedge clk);
        valid_in = 0;

        // 5 x 6 = 30
        // Accumulated result should become 12 + 30 = 42
        @(negedge clk);
        a = 8'd5;
        b = 8'd6;
        valid_in = 1;

        @(negedge clk);
        valid_in = 0;

        // 2 x 10 = 20
        // Accumulated result should become 42 + 20 = 62
        @(negedge clk);
        a = 8'd2;
        b = 8'd10;
        valid_in = 1;

        @(negedge clk);
        valid_in = 0;

        #10;

        $display("Final accumulated result = %0d", result);

        if (result == 63'd62)
            $display("TEST PASSED");
        else
            $display("TEST FAILED: expected 62");

        $finish;
    end

    // Monitor outputs
    always @(posedge clk) begin
        $display("Time=%0t | valid_in=%b | a=%0d | b=%0d | result=%0d | valid_out=%b",
                 $time, valid_in, a, b, result, valid_out);
    end

endmodule
