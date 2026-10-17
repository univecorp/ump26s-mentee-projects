`timescale 1ns/1ps

module tb_arithmetic_diagnosis_engine;
    reg clk;
    reg rst_n;
    reg start;
    reg operation_mode;
    reg digit_valid;
    reg submit;
    reg [2:0] field_id;
    reg [2:0] digit_index;
    reg [3:0] bcd_digit;

    wire busy;
    wire done;
    wire diagnosis_valid;
    wire [3:0] bug_id;
    wire [1:0] error_row;
    wire [2:0] error_col;
    wire [1:0] confidence;
    wire [19:0] correct_result;
    wire [3:0] mismatch_score;

    integer pass_count;
    integer fail_count;
    integer i;

    localparam ADD = 1'b0;
    localparam MUL = 1'b1;

    localparam F_A       = 3'd0;
    localparam F_B       = 3'd1;
    localparam F_CARRY   = 3'd2;
    localparam F_ROW0    = 3'd3;
    localparam F_ROW1    = 3'd4;
    localparam F_FINAL   = 3'd5;

    arithmetic_diagnosis_engine dut (
        .clk(clk), .rst_n(rst_n), .start(start),
        .operation_mode(operation_mode), .digit_valid(digit_valid),
        .submit(submit), .field_id(field_id), .digit_index(digit_index),
        .bcd_digit(bcd_digit), .busy(busy), .done(done),
        .diagnosis_valid(diagnosis_valid), .bug_id(bug_id),
        .error_row(error_row), .error_col(error_col),
        .confidence(confidence), .correct_result(correct_result),
        .mismatch_score(mismatch_score)
    );

    always #10 clk = ~clk; // 50 MHz clock

    task begin_case;
        input mode;
        begin
            @(negedge clk);
            operation_mode = mode;
            start = 1'b1;
            @(negedge clk);
            start = 1'b0;
        end
    endtask

    task send_digit;
        input [2:0] field_value;
        input [2:0] index_value;
        input [3:0] digit_value;
        begin
            @(negedge clk);
            field_id = field_value;
            digit_index = index_value;
            bcd_digit = digit_value;
            digit_valid = 1'b1;
            @(negedge clk);
            digit_valid = 1'b0;
        end
    endtask

    task send_number;
        input [2:0] field_value;
        input [31:0] number;
        input [31:0] digits;
        integer temporary;
        begin
            temporary = number;
            for (i = 0; i < digits; i = i + 1) begin
                send_digit(field_value, i, temporary % 10);
                temporary = temporary / 10;
            end
        end
    endtask

    task finish_case;
        input [3:0] expected_bug;
        input [19:0] expected_correct_result;
        input expected_valid;
        input [8*40-1:0] test_name;
        begin
            @(negedge clk);
            submit = 1'b1;
            @(negedge clk);
            submit = 1'b0;
            #1;
            if (done && bug_id == expected_bug &&
                correct_result == expected_correct_result &&
                diagnosis_valid == expected_valid) begin
                pass_count = pass_count + 1;
                $display("PASS: %0s | bug=%0d result=%0d score=%0d", test_name,
                         bug_id, correct_result, mismatch_score);
            end else begin
                fail_count = fail_count + 1;
                $display("FAIL: %0s | expected bug=%0d result=%0d valid=%0d; got bug=%0d result=%0d valid=%0d done=%0d",
                         test_name, expected_bug, expected_correct_result, expected_valid,
                         bug_id, correct_result, diagnosis_valid, done);
            end
        end
    endtask

    initial begin
        $dumpfile("simulation/arithmetic_diagnosis.vcd");
        $dumpvars(0, tb_arithmetic_diagnosis_engine);

        clk = 1'b0;
        rst_n = 1'b0;
        start = 1'b0;
        operation_mode = ADD;
        digit_valid = 1'b0;
        submit = 1'b0;
        field_id = 3'd0;
        digit_index = 3'd0;
        bcd_digit = 4'd0;
        pass_count = 0;
        fail_count = 0;

        repeat (3) @(negedge clk);
        rst_n = 1'b1;

        // Correct addition: 248 + 135 = 383.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_number(F_B, 135, 3);
        send_digit(F_CARRY, 0, 1);
        send_digit(F_CARRY, 1, 0);
        send_number(F_FINAL, 383, 4);
        finish_case(4'd0, 20'd383, 1'b1, "correct addition");

        // Carry from ones column is not generated.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_number(F_B, 135, 3);
        send_digit(F_CARRY, 0, 0);
        send_digit(F_CARRY, 1, 0);
        send_number(F_FINAL, 373, 4);
        finish_case(4'd1, 20'd383, 1'b1, "carry not generated");

        // Carry is recorded but not added to the tens column.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_number(F_B, 135, 3);
        send_digit(F_CARRY, 0, 1);
        send_digit(F_CARRY, 1, 0);
        send_number(F_FINAL, 373, 4);
        finish_case(4'd2, 20'd383, 1'b1, "carry not added");

        // Carry from ones column is applied to hundreds column.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_number(F_B, 135, 3);
        send_digit(F_CARRY, 0, 1);
        send_number(F_FINAL, 473, 4);
        finish_case(4'd3, 20'd383, 1'b1, "carry wrong column");

        // Correct multiplication: 243 x 17 = 4131.
        begin_case(MUL);
        send_number(F_A, 243, 3);
        send_number(F_B, 17, 2);
        send_number(F_ROW0, 1701, 5);
        send_number(F_ROW1, 2430, 5);
        send_number(F_FINAL, 4131, 6);
        finish_case(4'd0, 20'd4131, 1'b1, "correct multiplication");

        // Tens partial product is not shifted.
        begin_case(MUL);
        send_number(F_A, 243, 3);
        send_number(F_B, 17, 2);
        send_number(F_ROW0, 1701, 5);
        send_number(F_ROW1, 243, 5);
        send_number(F_FINAL, 1944, 6);
        finish_case(4'd6, 20'd4131, 1'b1, "missing row shift");

        // Second partial-product row is omitted.
        begin_case(MUL);
        send_number(F_A, 243, 3);
        send_number(F_B, 17, 2);
        send_number(F_ROW0, 1701, 5);
        send_number(F_FINAL, 1701, 6);
        finish_case(4'd7, 20'd4131, 1'b1, "partial row omitted");

        // Both rows are correct, but their final addition is wrong.
        begin_case(MUL);
        send_number(F_A, 243, 3);
        send_number(F_B, 17, 2);
        send_number(F_ROW0, 1701, 5);
        send_number(F_ROW1, 2430, 5);
        send_number(F_FINAL, 4031, 6);
        finish_case(4'd8, 20'd4131, 1'b1, "final addition error");

        // A multiplication-fact error in the first partial row.
        begin_case(MUL);
        send_number(F_A, 243, 3);
        send_number(F_B, 17, 2);
        send_number(F_ROW0, 1681, 5);
        send_number(F_ROW1, 2430, 5);
        send_number(F_FINAL, 4111, 6);
        finish_case(4'd4, 20'd4131, 1'b1, "multiplication fact error");

        // Carry is omitted during 127 x 4, producing 488 instead of 508.
        begin_case(MUL);
        send_number(F_A, 127, 3);
        send_number(F_B, 4, 2);
        send_number(F_ROW0, 488, 5);
        send_number(F_FINAL, 488, 6);
        finish_case(4'd5, 20'd508, 1'b1, "multiplication carry omitted");

        // Invalid BCD digit.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_digit(F_A, 0, 4'd10);
        send_number(F_B, 135, 3);
        send_number(F_FINAL, 383, 4);
        finish_case(4'd14, 20'd0, 1'b0, "invalid BCD");

        // Unsupported mismatch must remain explicitly unknown.
        begin_case(ADD);
        send_number(F_A, 248, 3);
        send_number(F_B, 135, 3);
        send_digit(F_CARRY, 0, 1);
        send_number(F_FINAL, 999, 4);
        finish_case(4'd15, 20'd383, 1'b0, "unknown or ambiguous");

        $display("--------------------------------------------------");
        $display("TEST SUMMARY: %0d passed, %0d failed", pass_count, fail_count);
        if (fail_count == 0)
            $display("ALL TESTS PASSED");
        else
            $display("TEST FAILURE");

        #20;
        $finish;
    end

endmodule
