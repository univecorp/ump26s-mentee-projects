// sample_window.v
// 8-sample sliding window for 12-bit signed EMG samples.
// A new sample shifts in only when sample_valid = 1.
// taps[11:0] is the newest sample, taps[95:84] is the oldest.
// window_full goes high once 8 valid samples have been received.

module sample_window (
    input  wire         clk,
    input  wire         rst_n,        // active-low synchronous reset
    input  wire         sample_valid,
    input  wire [11:0]  sample_in,    // 12-bit signed (two's complement)
    output wire [95:0]  taps,         // 8 samples x 12 bits
    output wire         window_full
);

    reg [95:0] sr;       // shift register, newest sample in the low bits
    reg [3:0]  count;    // counts valid samples up to 8

    always @(posedge clk) begin
        if (!rst_n) begin
            sr    <= 96'd0;
            count <= 4'd0;
        end else if (sample_valid) begin
            sr <= {sr[83:0], sample_in};
            if (count != 4'd8)
                count <= count + 4'd1;
        end
    end

    assign taps        = sr;
    assign window_full = (count == 4'd8);

endmodule
