// mac_unit.v — Exact Multiply-Accumulate Unit
module mac_unit #(
    parameter WIDTH = 8
) (
    input  wire             clk,
    input  wire             rst_n,
    input  wire             valid_in,
    input  wire [WIDTH-1:0] a,
    input  wire [WIDTH-1:0] b,
    output reg  [2*WIDTH:0] result,
    output reg              valid_out
);

    wire [2*WIDTH-1:0] product;

    assign product = a * b;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            result    <= 0;
            valid_out <= 0;
        end else if (valid_in) begin
            result    <= result + product;
            valid_out <= 1'b1;
        end else begin
            valid_out <= 1'b0;
        end
    end

endmodule
