`timescale 1ns/1ps

module arithmetic_diagnosis_engine (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire        operation_mode, // 0: addition, 1: multiplication
    input  wire        digit_valid,
    input  wire        submit,
    input  wire [2:0]  field_id,
    input  wire [2:0]  digit_index,    // 0 is the least-significant decimal digit
    input  wire [3:0]  bcd_digit,
    output reg         busy,
    output reg         done,
    output reg         diagnosis_valid,
    output reg  [3:0]  bug_id,
    output reg  [1:0]  error_row,
    output reg  [2:0]  error_col,
    output reg  [1:0]  confidence,
    output reg  [19:0] correct_result,
    output reg  [3:0]  mismatch_score
);

    localparam OP_ADD = 1'b0;
    localparam OP_MUL = 1'b1;

    localparam BUG_NONE                  = 4'd0;
    localparam BUG_CARRY_NOT_GENERATED   = 4'd1;
    localparam BUG_CARRY_NOT_ADDED       = 4'd2;
    localparam BUG_CARRY_WRONG_COLUMN    = 4'd3;
    localparam BUG_MULT_FACT_ERROR       = 4'd4;
    localparam BUG_MULT_CARRY_OMITTED    = 4'd5;
    localparam BUG_MISSING_SHIFT         = 4'd6;
    localparam BUG_PARTIAL_ROW_OMITTED   = 4'd7;
    localparam BUG_FINAL_ADDITION_ERROR  = 4'd8;
    localparam BUG_INVALID_BCD           = 4'd14;
    localparam BUG_UNKNOWN_AMBIGUOUS     = 4'd15;

    localparam FIELD_OPERAND_A = 3'd0;
    localparam FIELD_OPERAND_B = 3'd1;
    localparam FIELD_CARRIES   = 3'd2;
    localparam FIELD_PARTIAL_0 = 3'd3;
    localparam FIELD_PARTIAL_1 = 3'd4;
    localparam FIELD_FINAL     = 3'd5;

    reg operation_reg;
    reg invalid_bcd;
    reg [23:0] operand_a_bcd;
    reg [23:0] operand_b_bcd;
    reg [23:0] carries_bcd;
    reg [23:0] partial_0_bcd;
    reg [23:0] partial_1_bcd;
    reg [23:0] final_bcd;
    reg [5:0] operand_a_mask;
    reg [5:0] operand_b_mask;
    reg [5:0] carries_mask;
    reg [5:0] partial_0_mask;
    reg [5:0] partial_1_mask;
    reg [5:0] final_mask;

    reg        calc_valid;
    reg [3:0]  calc_bug;
    reg [1:0]  calc_row;
    reg [2:0]  calc_col;
    reg [1:0]  calc_confidence;
    reg [19:0] calc_result;
    reg [3:0]  calc_score;

    integer a_value;
    integer b_value;
    integer submitted_final;
    integer submitted_row0;
    integer submitted_row1;
    integer expected_result;
    integer expected_row0;
    integer expected_row1;
    integer no_carry_row0;
    integer no_carry_row1;
    integer ones_sum;
    integer tens_sum;
    integer hundreds_sum;
    integer carry1;
    integer carry2;
    integer add_ignore_c1;
    integer add_ignore_c2;
    integer add_wrong_c1;
    integer add_wrong_c2;
    integer tens_no_c1;
    integer carry2_no_c1;
    integer hundreds_no_c2;

    function [3:0] bcd_at;
        input [23:0] packed_bcd;
        input [2:0] index;
        begin
            case (index)
                3'd0: bcd_at = packed_bcd[3:0];
                3'd1: bcd_at = packed_bcd[7:4];
                3'd2: bcd_at = packed_bcd[11:8];
                3'd3: bcd_at = packed_bcd[15:12];
                3'd4: bcd_at = packed_bcd[19:16];
                3'd5: bcd_at = packed_bcd[23:20];
                default: bcd_at = 4'd0;
            endcase
        end
    endfunction

    function [19:0] bcd6_to_binary;
        input [23:0] packed_bcd;
        begin
            bcd6_to_binary =
                packed_bcd[3:0]       + packed_bcd[7:4]   * 20'd10 +
                packed_bcd[11:8]  * 20'd100  + packed_bcd[15:12] * 20'd1000 +
                packed_bcd[19:16] * 20'd10000 + packed_bcd[23:20] * 20'd100000;
        end
    endfunction

    function [19:0] mul_without_carry;
        input [23:0] multiplicand;
        input [3:0] multiplier;
        integer p0;
        integer p1;
        integer p2;
        begin
            p0 = decimal_ones(multiplicand[3:0] * multiplier);
            p1 = decimal_ones(multiplicand[7:4] * multiplier);
            p2 = decimal_ones(multiplicand[11:8] * multiplier);
            mul_without_carry = p0 + 10*p1 + 100*p2;
        end
    endfunction

    // The largest value reduced here is 81 (9 x 9).  Explicit decimal
    // reduction avoids synthesizing general division and modulo hardware.
    function [3:0] decimal_ones;
        input [6:0] value;
        begin
            if      (value >= 80) decimal_ones = value - 80;
            else if (value >= 70) decimal_ones = value - 70;
            else if (value >= 60) decimal_ones = value - 60;
            else if (value >= 50) decimal_ones = value - 50;
            else if (value >= 40) decimal_ones = value - 40;
            else if (value >= 30) decimal_ones = value - 30;
            else if (value >= 20) decimal_ones = value - 20;
            else if (value >= 10) decimal_ones = value - 10;
            else                  decimal_ones = value[3:0];
        end
    endfunction

    function [3:0] decimal_tens;
        input [6:0] value;
        begin
            if      (value >= 80) decimal_tens = 8;
            else if (value >= 70) decimal_tens = 7;
            else if (value >= 60) decimal_tens = 6;
            else if (value >= 50) decimal_tens = 5;
            else if (value >= 40) decimal_tens = 4;
            else if (value >= 30) decimal_tens = 3;
            else if (value >= 20) decimal_tens = 2;
            else if (value >= 10) decimal_tens = 1;
            else                  decimal_tens = 0;
        end
    endfunction

    always @* begin
        calc_valid      = 1'b0;
        calc_bug        = BUG_UNKNOWN_AMBIGUOUS;
        calc_row        = 2'd0;
        calc_col        = 3'd0;
        calc_confidence = 2'd0;
        calc_result     = 20'd0;
        calc_score      = 4'd0;

        a_value         = bcd6_to_binary(operand_a_bcd);
        b_value         = bcd6_to_binary(operand_b_bcd);
        submitted_final = bcd6_to_binary(final_bcd);
        submitted_row0  = bcd6_to_binary(partial_0_bcd);
        submitted_row1  = bcd6_to_binary(partial_1_bcd);

        expected_result = 0;
        expected_row0   = 0;
        expected_row1   = 0;
        no_carry_row0   = 0;
        no_carry_row1   = 0;
        ones_sum        = 0;
        tens_sum        = 0;
        hundreds_sum    = 0;
        carry1          = 0;
        carry2          = 0;
        add_ignore_c1   = 0;
        add_ignore_c2   = 0;
        add_wrong_c1    = 0;
        add_wrong_c2    = 0;
        tens_no_c1      = 0;
        carry2_no_c1    = 0;
        hundreds_no_c2  = 0;

        if (invalid_bcd) begin
            calc_bug = BUG_INVALID_BCD;
        end else if ((operand_a_mask[2:0] != 3'b111) ||
                     (operation_reg == OP_ADD && operand_b_mask[2:0] != 3'b111) ||
                     (operation_reg == OP_MUL && operand_b_mask[1:0] != 2'b11) ||
                     (final_mask == 6'b000000)) begin
            calc_bug = BUG_UNKNOWN_AMBIGUOUS;
        end else if (operation_reg == OP_ADD) begin
            ones_sum     = operand_a_bcd[3:0] + operand_b_bcd[3:0];
            carry1       = (ones_sum >= 10);
            tens_sum     = operand_a_bcd[7:4] + operand_b_bcd[7:4] + carry1;
            carry2       = (tens_sum >= 10);
            hundreds_sum = operand_a_bcd[11:8] + operand_b_bcd[11:8] + carry2;
            expected_result = decimal_ones(ones_sum) + 10*decimal_ones(tens_sum) +
                              100*decimal_ones(hundreds_sum) + 1000*decimal_tens(hundreds_sum);
            calc_result = expected_result;

            tens_no_c1     = operand_a_bcd[7:4] + operand_b_bcd[7:4];
            carry2_no_c1   = (tens_no_c1 >= 10);
            add_ignore_c1  = decimal_ones(ones_sum) + 10*decimal_ones(tens_no_c1) +
                             100*decimal_ones(operand_a_bcd[11:8] + operand_b_bcd[11:8] + carry2_no_c1) +
                             1000*decimal_tens(operand_a_bcd[11:8] + operand_b_bcd[11:8] + carry2_no_c1);
            add_wrong_c1   = decimal_ones(ones_sum) + 10*decimal_ones(tens_no_c1) +
                             100*decimal_ones(operand_a_bcd[11:8] + operand_b_bcd[11:8] + carry1 + carry2_no_c1) +
                             1000*decimal_tens(operand_a_bcd[11:8] + operand_b_bcd[11:8] + carry1 + carry2_no_c1);

            hundreds_no_c2 = operand_a_bcd[11:8] + operand_b_bcd[11:8];
            add_ignore_c2   = decimal_ones(ones_sum) + 10*decimal_ones(tens_sum) +
                              100*decimal_ones(hundreds_no_c2) + 1000*decimal_tens(hundreds_no_c2);
            add_wrong_c2    = decimal_ones(ones_sum) +
                              10*(decimal_ones(tens_sum) + carry2) +
                              100*decimal_ones(hundreds_no_c2) + 1000*decimal_tens(hundreds_no_c2);

            calc_score = {3'd0, (submitted_final != expected_result)} +
                         {3'd0, ((carries_mask[0]) && (carries_bcd[3:0] != carry1))} +
                         {3'd0, ((carries_mask[1]) && (carries_bcd[7:4] != carry2))};

            if (submitted_final == expected_result) begin
                calc_valid = 1'b1;
                calc_bug = BUG_NONE;
                calc_confidence = 2'd3;
            end else if (carry1 && submitted_final == add_ignore_c1 &&
                         carries_mask[0] && carries_bcd[3:0] == 0) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_NOT_GENERATED;
                calc_col = 3'd0;
                calc_confidence = 2'd3;
            end else if (carry1 && submitted_final == add_ignore_c1 &&
                         carries_mask[0] && carries_bcd[3:0] == 1) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_NOT_ADDED;
                calc_col = 3'd1;
                calc_confidence = 2'd3;
            end else if (carry1 && submitted_final == add_wrong_c1) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_WRONG_COLUMN;
                calc_col = 3'd2;
                calc_confidence = 2'd3;
            end else if (carry2 && submitted_final == add_ignore_c2 &&
                         carries_mask[1] && carries_bcd[7:4] == 0) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_NOT_GENERATED;
                calc_col = 3'd1;
                calc_confidence = 2'd3;
            end else if (carry2 && submitted_final == add_ignore_c2 &&
                         carries_mask[1] && carries_bcd[7:4] == 1) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_NOT_ADDED;
                calc_col = 3'd2;
                calc_confidence = 2'd3;
            end else if (carry2 && submitted_final == add_wrong_c2) begin
                calc_valid = 1'b1;
                calc_bug = BUG_CARRY_WRONG_COLUMN;
                calc_col = 3'd1;
                calc_confidence = 2'd2;
            end
        end else begin
            expected_row0 = a_value * operand_b_bcd[3:0];
            expected_row1 = a_value * operand_b_bcd[7:4] * 10;
            expected_result = expected_row0 + expected_row1;
            no_carry_row0 = mul_without_carry(operand_a_bcd, operand_b_bcd[3:0]);
            no_carry_row1 = mul_without_carry(operand_a_bcd, operand_b_bcd[7:4]) * 10;
            calc_result = expected_result;
            calc_score = {3'd0, ((partial_0_mask == 0) || (submitted_row0 != expected_row0))} +
                         {3'd0, ((expected_row1 != 0) &&
                                  ((partial_1_mask == 0) || (submitted_row1 != expected_row1)))} +
                         {3'd0, (submitted_final != expected_result)};

            if (submitted_row0 == expected_row0 &&
                (expected_row1 == 0 || submitted_row1 == expected_row1) &&
                submitted_final == expected_result) begin
                calc_valid = 1'b1;
                calc_bug = BUG_NONE;
                calc_confidence = 2'd3;
            end else if (expected_row1 != 0 && partial_0_mask != 0 && partial_1_mask != 0 &&
                         submitted_row0 == expected_row0 &&
                         submitted_row1 == (a_value * operand_b_bcd[7:4]) &&
                         submitted_final == (submitted_row0 + submitted_row1)) begin
                calc_valid = 1'b1;
                calc_bug = BUG_MISSING_SHIFT;
                calc_row = 2'd1;
                calc_confidence = 2'd3;
            end else if ((expected_row0 != 0 && partial_0_mask == 0 &&
                          submitted_row1 == expected_row1 && submitted_final == submitted_row1) ||
                         (expected_row1 != 0 && partial_1_mask == 0 &&
                          submitted_row0 == expected_row0 && submitted_final == submitted_row0)) begin
                calc_valid = 1'b1;
                calc_bug = BUG_PARTIAL_ROW_OMITTED;
                calc_row = (partial_0_mask == 0) ? 2'd0 : 2'd1;
                calc_confidence = 2'd3;
            end else if ((partial_0_mask != 0 && submitted_row0 == no_carry_row0 && expected_row0 != no_carry_row0 &&
                          submitted_final == submitted_row0 + submitted_row1) ||
                         (expected_row1 != 0 && partial_1_mask != 0 && submitted_row1 == no_carry_row1 &&
                          expected_row1 != no_carry_row1 && submitted_final == submitted_row0 + submitted_row1)) begin
                calc_valid = 1'b1;
                calc_bug = BUG_MULT_CARRY_OMITTED;
                calc_row = (submitted_row0 == no_carry_row0 && expected_row0 != no_carry_row0) ? 2'd0 : 2'd1;
                calc_confidence = 2'd3;
            end else if (partial_0_mask != 0 &&
                         (expected_row1 == 0 || partial_1_mask != 0) &&
                         (submitted_row0 != expected_row0 || submitted_row1 != expected_row1) &&
                         submitted_final == submitted_row0 + submitted_row1) begin
                calc_valid = 1'b1;
                calc_bug = BUG_MULT_FACT_ERROR;
                calc_row = (submitted_row0 != expected_row0) ? 2'd0 : 2'd1;
                calc_confidence = 2'd2;
            end else if (partial_0_mask != 0 && submitted_row0 == expected_row0 &&
                         (expected_row1 == 0 || (partial_1_mask != 0 && submitted_row1 == expected_row1)) &&
                         submitted_final != expected_result) begin
                calc_valid = 1'b1;
                calc_bug = BUG_FINAL_ADDITION_ERROR;
                calc_row = 2'd2;
                calc_confidence = 2'd3;
            end
        end
    end

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            busy             <= 1'b0;
            done             <= 1'b0;
            diagnosis_valid  <= 1'b0;
            bug_id           <= BUG_NONE;
            error_row        <= 2'd0;
            error_col        <= 3'd0;
            confidence       <= 2'd0;
            correct_result   <= 20'd0;
            mismatch_score   <= 4'd0;
            operation_reg    <= OP_ADD;
            invalid_bcd      <= 1'b0;
            operand_a_bcd    <= 24'd0;
            operand_b_bcd    <= 24'd0;
            carries_bcd      <= 24'd0;
            partial_0_bcd    <= 24'd0;
            partial_1_bcd    <= 24'd0;
            final_bcd        <= 24'd0;
            operand_a_mask   <= 6'd0;
            operand_b_mask   <= 6'd0;
            carries_mask     <= 6'd0;
            partial_0_mask   <= 6'd0;
            partial_1_mask   <= 6'd0;
            final_mask       <= 6'd0;
        end else begin
            done <= 1'b0;
            if (start) begin
                busy             <= 1'b1;
                diagnosis_valid  <= 1'b0;
                bug_id           <= BUG_NONE;
                error_row        <= 2'd0;
                error_col        <= 3'd0;
                confidence       <= 2'd0;
                correct_result   <= 20'd0;
                mismatch_score   <= 4'd0;
                operation_reg    <= operation_mode;
                invalid_bcd      <= 1'b0;
                operand_a_bcd    <= 24'd0;
                operand_b_bcd    <= 24'd0;
                carries_bcd      <= 24'd0;
                partial_0_bcd    <= 24'd0;
                partial_1_bcd    <= 24'd0;
                final_bcd        <= 24'd0;
                operand_a_mask   <= 6'd0;
                operand_b_mask   <= 6'd0;
                carries_mask     <= 6'd0;
                partial_0_mask   <= 6'd0;
                partial_1_mask   <= 6'd0;
                final_mask       <= 6'd0;
            end else if (busy) begin
                if (digit_valid) begin
                    if (bcd_digit > 9 || digit_index > 5) begin
                        invalid_bcd <= 1'b1;
                    end else begin
                        case (field_id)
                            FIELD_OPERAND_A: begin
                                operand_a_bcd[digit_index*4 +: 4] <= bcd_digit;
                                operand_a_mask[digit_index] <= 1'b1;
                            end
                            FIELD_OPERAND_B: begin
                                operand_b_bcd[digit_index*4 +: 4] <= bcd_digit;
                                operand_b_mask[digit_index] <= 1'b1;
                            end
                            FIELD_CARRIES: begin
                                carries_bcd[digit_index*4 +: 4] <= bcd_digit;
                                carries_mask[digit_index] <= 1'b1;
                            end
                            FIELD_PARTIAL_0: begin
                                partial_0_bcd[digit_index*4 +: 4] <= bcd_digit;
                                partial_0_mask[digit_index] <= 1'b1;
                            end
                            FIELD_PARTIAL_1: begin
                                partial_1_bcd[digit_index*4 +: 4] <= bcd_digit;
                                partial_1_mask[digit_index] <= 1'b1;
                            end
                            FIELD_FINAL: begin
                                final_bcd[digit_index*4 +: 4] <= bcd_digit;
                                final_mask[digit_index] <= 1'b1;
                            end
                            default: invalid_bcd <= 1'b1;
                        endcase
                    end
                end
                if (submit) begin
                    busy            <= 1'b0;
                    done            <= 1'b1;
                    diagnosis_valid <= calc_valid;
                    bug_id          <= calc_bug;
                    error_row       <= calc_row;
                    error_col       <= calc_col;
                    confidence      <= calc_confidence;
                    correct_result  <= calc_result;
                    mismatch_score  <= calc_score;
                end
            end
        end
    end

endmodule
