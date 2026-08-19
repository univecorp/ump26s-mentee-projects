// =============================================================================
// bio_access_hd_matcher.v
//
// Hardware-Accelerated Masked Hamming-Distance Matcher for High-Security
// Biometric Access Control.
//
// - Streams in a 256-bit template code + reliability mask and a 256-bit
//   probe code + reliability mask, 64 bits per cycle (4 words).
// - Computes the masked Hamming distance using a combinational popcount.
// - Accepts/rejects using fixed-point cross-multiplication against a
//   programmable threshold (numerator/denominator) -- no divider needed.
// - Implements an anti-brute-force lockout: after MAX_FAILS consecutive
//   rejects, further attempts are blocked for LOCKOUT_CYCLES clock cycles.
//
// Single flat module, no sub-modules, no SRAM/ROM memory macros.
// Target flow: OpenROAD-flow-scripts, platform ihp-sg13g2 (130 nm).
// =============================================================================

module bio_access_hd_matcher #(
    parameter integer WORD_WIDTH     = 64,   // bits streamed per cycle (fixed at 64 for the popcount below)
    parameter integer NUM_WORDS      = 4,    // 4 x 64 = 256-bit biometric code
    parameter integer MAX_FAILS      = 5,    // consecutive rejects before lockout
    parameter integer LOCKOUT_CYCLES = 1024, // cycles the design stays locked out
    parameter integer ACC_WIDTH      = 16    // width of distance/threshold accumulators
)(
    input  wire                              clk,
    input  wire                              rst_n,

    // Streaming load interface: hold word_valid high for NUM_WORDS cycles
    input  wire                              word_valid,
    input  wire [WORD_WIDTH-1:0]              template_word,
    input  wire [WORD_WIDTH-1:0]              template_mask,   // 1 = reliable bit
    input  wire [WORD_WIDTH-1:0]              probe_word,
    input  wire [WORD_WIDTH-1:0]              probe_mask,

    // Control: pulse start_match once all NUM_WORDS have been loaded
    input  wire                              start_match,
    input  wire [ACC_WIDTH-1:0]               thresh_num,      // acceptance threshold numerator
    input  wire [ACC_WIDTH-1:0]               thresh_den,      // acceptance threshold denominator

    // Result
    output reg                               match_valid,      // 1-cycle pulse: result ready
    output reg                               match_ok,         // 1 = accept, 0 = reject
    output reg  [ACC_WIDTH-1:0]               hd_numerator,     // masked Hamming distance
    output reg  [ACC_WIDTH-1:0]               hd_denominator,   // number of valid compared bits

    // Anti-brute-force security status
    output reg                               locked_out,
    output reg  [$clog2(MAX_FAILS+1)-1:0]     fail_count,
    output reg                               busy
);

    // -------------------------------------------------------------------
    // Local sizing
    // -------------------------------------------------------------------
    localparam integer WCNT_WIDTH = $clog2(NUM_WORDS+1);
    localparam integer LCNT_WIDTH = $clog2(LOCKOUT_CYCLES+1);

    localparam [2:0] ST_IDLE   = 3'd0;
    localparam [2:0] ST_LOAD   = 3'd1;
    localparam [2:0] ST_EVAL   = 3'd2;
    localparam [2:0] ST_RESULT = 3'd3;
    localparam [2:0] ST_LOCKED = 3'd4;

    reg [2:0]            state;
    reg [WCNT_WIDTH-1:0]  word_cnt;
    reg [LCNT_WIDTH-1:0]  lockout_cnt;
    reg [ACC_WIDTH-1:0]   num_acc, den_acc;

    // -------------------------------------------------------------------
    // Combinational masked-XOR datapath for the current word
    // -------------------------------------------------------------------
    wire [WORD_WIDTH-1:0] combined_mask = template_mask & probe_mask;
    wire [WORD_WIDTH-1:0] diff_bits     = (template_word ^ probe_word) & combined_mask;

    // Synthesizable combinational popcount (unrolled adder tree).
    // Fixed to a 64-bit operand to match WORD_WIDTH's default.
    function [6:0] popcount64;
        input [63:0] data;
        integer i;
        begin
            popcount64 = 7'd0;
            for (i = 0; i < 64; i = i + 1)
                popcount64 = popcount64 + data[i];
        end
    endfunction

    wire [6:0] word_num_inc = popcount64(diff_bits);
    wire [6:0] word_den_inc = popcount64(combined_mask);

    // -------------------------------------------------------------------
    // Main FSM: load -> evaluate -> result -> (lockout)
    // -------------------------------------------------------------------
    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state          <= ST_IDLE;
            word_cnt       <= {WCNT_WIDTH{1'b0}};
            lockout_cnt    <= {LCNT_WIDTH{1'b0}};
            fail_count     <= {$clog2(MAX_FAILS+1){1'b0}};
            num_acc        <= {ACC_WIDTH{1'b0}};
            den_acc        <= {ACC_WIDTH{1'b0}};
            match_valid    <= 1'b0;
            match_ok       <= 1'b0;
            hd_numerator   <= {ACC_WIDTH{1'b0}};
            hd_denominator <= {ACC_WIDTH{1'b0}};
            locked_out     <= 1'b0;
            busy           <= 1'b0;
        end else begin
            match_valid <= 1'b0; // default; only pulsed in ST_RESULT

            case (state)

                // Wait for the first streamed word of a new attempt.
                ST_IDLE: begin
                    busy <= 1'b0;
                    if (word_valid) begin
                        num_acc  <= word_num_inc;
                        den_acc  <= word_den_inc;
                        word_cnt <= {{(WCNT_WIDTH-1){1'b0}}, 1'b1};
                        state    <= ST_LOAD;
                        busy     <= 1'b1;
                    end
                end

                // Accumulate the remaining NUM_WORDS-1 words.
                ST_LOAD: begin
                    busy <= 1'b1;
                    if (word_valid) begin
                        num_acc  <= num_acc + word_num_inc;
                        den_acc  <= den_acc + word_den_inc;
                        word_cnt <= word_cnt + 1'b1;
                        if (word_cnt + 1'b1 == NUM_WORDS)
                            state <= ST_EVAL;
                    end
                end

                // All words loaded; wait for start_match, then compare
                // using cross-multiplication (no divider):
                //   num/den <= thresh_num/thresh_den
                //   <=> num*thresh_den <= den*thresh_num
                ST_EVAL: begin
                    busy <= 1'b1;
                    if (start_match) begin
                        hd_numerator   <= num_acc;
                        hd_denominator <= den_acc;
                        if ((num_acc * thresh_den) <= (den_acc * thresh_num))
                            match_ok <= 1'b1;
                        else
                            match_ok <= 1'b0;
                        state <= ST_RESULT;
                    end
                end

                // Publish result for one cycle, update lockout state.
                ST_RESULT: begin
                    busy        <= 1'b1;
                    match_valid <= 1'b1;
                    if (match_ok) begin
                        fail_count <= {$clog2(MAX_FAILS+1){1'b0}};
                        state      <= ST_IDLE;
                    end else begin
                        if (fail_count + 1'b1 >= MAX_FAILS) begin
                            fail_count  <= {$clog2(MAX_FAILS+1){1'b0}};
                            locked_out  <= 1'b1;
                            lockout_cnt <= LOCKOUT_CYCLES;
                            state       <= ST_LOCKED;
                        end else begin
                            fail_count <= fail_count + 1'b1;
                            state      <= ST_IDLE;
                        end
                    end
                end

                // Reject all attempts until the lockout timer expires.
                ST_LOCKED: begin
                    busy       <= 1'b1;
                    locked_out <= 1'b1;
                    if (lockout_cnt == {LCNT_WIDTH{1'b0}}) begin
                        locked_out <= 1'b0;
                        state      <= ST_IDLE;
                    end else begin
                        lockout_cnt <= lockout_cnt - 1'b1;
                    end
                end

                default: state <= ST_IDLE;

            endcase
        end
    end

endmodule
