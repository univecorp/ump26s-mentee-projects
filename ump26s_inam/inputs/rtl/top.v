`timescale 1ns/1ps

module top (
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire        operation_mode,
    input  wire        digit_valid,
    input  wire        submit,
    input  wire [2:0]  field_id,
    input  wire [2:0]  digit_index,
    input  wire [3:0]  bcd_digit,
    output wire        busy,
    output wire        done,
    output wire        diagnosis_valid,
    output wire [3:0]  bug_id,
    output wire [1:0]  error_row,
    output wire [2:0]  error_col,
    output wire [1:0]  confidence,
    output wire [19:0] correct_result,
    output wire [3:0]  mismatch_score
);

    arithmetic_diagnosis_engine engine (
        .clk(clk),
        .rst_n(rst_n),
        .start(start),
        .operation_mode(operation_mode),
        .digit_valid(digit_valid),
        .submit(submit),
        .field_id(field_id),
        .digit_index(digit_index),
        .bcd_digit(bcd_digit),
        .busy(busy),
        .done(done),
        .diagnosis_valid(diagnosis_valid),
        .bug_id(bug_id),
        .error_row(error_row),
        .error_col(error_col),
        .confidence(confidence),
        .correct_result(correct_result),
        .mismatch_score(mismatch_score)
    );

endmodule
