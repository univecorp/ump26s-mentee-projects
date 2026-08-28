// approx-mac-unit.v — Approximate Multiply-Accumulate Unit
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

    wire [WIDTH-1:0] a_approx;
    wire [WIDTH-1:0] b_approx;
    wire [2*WIDTH-1:0] product;

    // Approximate multiplication:
    // discard the 2 least-significant bits of each operand
    // and replace them with zeros.
    assign a_approx = {a[WIDTH-1:2], 2'b00};
    assign b_approx = {b[WIDTH-1:2], 2'b00};

    assign product = a_approx * b_approx;

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
