// zcr_calc.v
// Zero-crossing counter with a hysteresis band, counted over a fixed window
// of 2**WIN_BITS samples (WIN_BITS = 7 -> 128 samples).
//
// How the hysteresis works:
//   A sample above +HYST is "clearly positive", a sample below -HYST is
//   "clearly negative". Samples inside the band [-HYST, +HYST] are treated
//   as noise and change nothing. A crossing is counted only when the signal
//   goes from clearly positive to clearly negative, or the other way round.
//   The very first clear sample only sets the starting polarity.
//
// Windows are back-to-back blocks of 2**WIN_BITS valid samples. At the end
// of each block, zcr_count is updated with that block's total and zcr_valid
// pulses for one clock cycle. The polarity memory carries over between
// blocks, so a crossing at a block boundary is counted in the new block.
//
// WIN_BITS must be 7 or less so the count always fits in 8 bits
// (the largest possible count is 2**WIN_BITS).

module zcr_calc #(
    parameter integer WIN_BITS = 7,    // window length = 2**WIN_BITS samples
    parameter integer HYST     = 16    // half-width of the noise band, in LSB
)(
    input  wire        clk,
    input  wire        rst_n,          // active-low synchronous reset
    input  wire        sample_valid,
    input  wire [11:0] sample_in,      // 12-bit signed (two's complement)
    output reg  [7:0]  zcr_count,      // crossings in the last finished window
    output reg         zcr_valid       // 1-cycle pulse when zcr_count updates
);

    // sign-extend so the comparisons below are safe for -2048
    wire signed [12:0] x = {sample_in[11], sample_in};

    wire pos = (x >  HYST);            // clearly positive
    wire neg = (x < -HYST);            // clearly negative

    reg                pol_valid;      // seen a clearly pos/neg sample yet?
    reg                pol;            // 1 = last clear sample was positive
    reg [WIN_BITS-1:0] win_cnt;        // samples seen in this window
    reg [7:0]          cross_cnt;      // crossings so far in this window

    wire crossing = sample_valid && pol_valid && ((pos && !pol) || (neg && pol));
    wire last     = &win_cnt;          // this is the last sample of the window
    wire [7:0] cross_next = cross_cnt + {7'd0, crossing};

    always @(posedge clk) begin
        if (!rst_n) begin
            pol_valid <= 1'b0;
            pol       <= 1'b0;
            win_cnt   <= {WIN_BITS{1'b0}};
            cross_cnt <= 8'd0;
            zcr_count <= 8'd0;
            zcr_valid <= 1'b0;
        end else begin
            zcr_valid <= 1'b0;
            if (sample_valid) begin
                if (pos) begin
                    pol       <= 1'b1;
                    pol_valid <= 1'b1;
                end else if (neg) begin
                    pol       <= 1'b0;
                    pol_valid <= 1'b1;
                end

                win_cnt <= win_cnt + 1'b1;   // wraps to 0 after the last sample

                if (last) begin
                    zcr_count <= cross_next;
                    zcr_valid <= 1'b1;
                    cross_cnt <= 8'd0;
                end else begin
                    cross_cnt <= cross_next;
                end
            end
        end
    end

endmodule
