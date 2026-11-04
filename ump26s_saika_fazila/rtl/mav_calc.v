// mav_calc.v
// Mean Absolute Value of the 8 samples in the window, with no multiplier:
//   MAV = (|x0| + |x1| + ... + |x7|) / 8  ->  sum >> 3
// |-2048| = 2048 still fits in 12 unsigned bits, so there is no overflow.
// The sum of eight values up to 2048 is at most 16384, which needs 15 bits.

module mav_calc (
    input  wire [95:0] taps,      // 8 signed 12-bit samples
    output wire [11:0] mav
);

    // absolute value of one 12-bit two's-complement sample
    function [11:0] abs12;
        input [11:0] s;
        begin
            abs12 = s[11] ? (~s + 12'd1) : s;
        end
    endfunction

    wire [11:0] a0 = abs12(taps[11:0]);
    wire [11:0] a1 = abs12(taps[23:12]);
    wire [11:0] a2 = abs12(taps[35:24]);
    wire [11:0] a3 = abs12(taps[47:36]);
    wire [11:0] a4 = abs12(taps[59:48]);
    wire [11:0] a5 = abs12(taps[71:60]);
    wire [11:0] a6 = abs12(taps[83:72]);
    wire [11:0] a7 = abs12(taps[95:84]);

    // adder tree: 3 levels
    wire [12:0] s01   = a0 + a1;
    wire [12:0] s23   = a2 + a3;
    wire [12:0] s45   = a4 + a5;
    wire [12:0] s67   = a6 + a7;
    wire [13:0] s0123 = s01 + s23;
    wire [13:0] s4567 = s45 + s67;
    wire [14:0] total = s0123 + s4567;

    assign mav = total[14:3];   // divide by 8

endmodule
