`timescale 1ns/1ps

module tb_mac_unit;

    reg clk = 0;
    reg rst_n = 0;
    reg valid_in = 0;
    reg [7:0] a = 0;
    reg [7:0] b = 0;

    wire [16:0] result;
    wire valid_out;

    reg [16:0] expected;
    integer i, j;
    integer errors = 0;
    integer tested = 0;

    mac_unit #(.WIDTH(8)) dut (
        .clk(clk),
        .rst_n(rst_n),
        .valid_in(valid_in),
        .a(a),
        .b(b),
        .result(result),
        .valid_out(valid_out)
    );

    always #5 clk = ~clk;

    initial begin
        for (i = 0; i < 256; i = i + 1) begin
            for (j = 0; j < 256; j = j + 1) begin
                @(negedge clk);
                rst_n = 0;
                valid_in = 0;
                a = i;
                b = j;

                @(negedge clk);
                rst_n = 1;
                valid_in = 1;

                @(posedge clk);
                #1;

`ifdef APPROX
                expected = (i & 252) * (j & 252);
`else
                expected = i * j;
`endif

                tested = tested + 1;

                if (result !== expected || valid_out !== 1'b1) begin
                    errors = errors + 1;
                    if (errors <= 10)
                        $display(
                            "Mismatch: A=%0d B=%0d expected=%0d got=%0d valid_out=%b",
                            i, j, expected, result, valid_out
                        );
                end
            end
        end

        $display("Input pairs tested: %0d", tested);
        $display("Mismatches: %0d", errors);

        if (errors == 0)
            $display("EXHAUSTIVE TEST PASSED");
        else
            $display("EXHAUSTIVE TEST FAILED");

        $finish;
    end

endmodule
