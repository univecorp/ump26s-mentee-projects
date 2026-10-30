// tb_top.v
// Full-system self-checking testbench for emg_feature_engine.
//
// Test signals are square waves of amplitude A and half-period H samples:
//   MAV of such a signal is exactly A, and its zero-crossing count per
//   128-sample window is about 128 / H.
//
// Thresholds used: fatigue_mav_thresh = 350, fatigue_zcr_thresh = 10.
// Each scenario: reset, then two 128-sample windows.
//   window 1 = warm-up: features_valid must stay low, all flags low
//   window 2 = the real check: exactly the expected flag, right MAV

`timescale 1ns/1ps

module tb_top;

    reg         clk = 0;
    reg         rst_n = 0;
    reg         sample_valid = 0;
    reg  [11:0] sample_in = 0;
    reg  [11:0] fatigue_mav_thresh = 12'd350;
    reg  [7:0]  fatigue_zcr_thresh = 8'd10;

    wire [11:0] emg_mav_out;
    wire [7:0]  zcr_count;
    wire        features_valid;
    wire        fatigue_alert, tremor_flag, contraction_active;
    wire        muscle_resting, noise_flag, normal_contraction;

    emg_feature_engine dut (
        .clk(clk), .rst_n(rst_n),
        .sample_valid(sample_valid), .sample_in(sample_in),
        .fatigue_mav_thresh(fatigue_mav_thresh),
        .fatigue_zcr_thresh(fatigue_zcr_thresh),
        .emg_mav_out(emg_mav_out), .zcr_count(zcr_count),
        .features_valid(features_valid),
        .fatigue_alert(fatigue_alert), .tremor_flag(tremor_flag),
        .contraction_active(contraction_active),
        .muscle_resting(muscle_resting), .noise_flag(noise_flag),
        .normal_contraction(normal_contraction)
    );

    always #25 clk = ~clk;   // 20 MHz

    // flag codes
    localparam F_NONE = 0, F_REST = 1, F_FATIGUE = 2, F_TREMOR = 3,
               F_SUSTAIN = 4, F_NORMAL = 5, F_NOISE = 6;

    integer errors = 0;
    integer checks = 0;

    // number of flags currently high
    function integer flag_count;
        input dummy;
        begin
            flag_count = fatigue_alert + tremor_flag + contraction_active
                       + muscle_resting + noise_flag + normal_contraction;
        end
    endfunction

    function integer which_flag;
        input dummy;
        begin
            which_flag = F_NONE;
            if (muscle_resting)     which_flag = F_REST;
            if (fatigue_alert)      which_flag = F_FATIGUE;
            if (tremor_flag)        which_flag = F_TREMOR;
            if (contraction_active) which_flag = F_SUSTAIN;
            if (normal_contraction) which_flag = F_NORMAL;
            if (noise_flag)         which_flag = F_NOISE;
        end
    endfunction

    task do_reset;
        begin
            @(negedge clk);
            rst_n = 0;
            repeat (2) @(negedge clk);
            rst_n = 1;
        end
    endtask

    // one sample: valid for one clock, then a gap clock
    task send;
        input integer s;
        begin
            @(negedge clk);
            sample_in    = s[11:0];
            sample_valid = 1;
            @(negedge clk);
            sample_valid = 0;
        end
    endtask

    // 128 samples of a square wave (amplitude a, half period h),
    // starting at sample index base. If sat_idx >= 0 the sample at that
    // index within the window is replaced by sat_val.
    task send_window;
        input integer a;
        input integer h;
        input integer base;
        input integer sat_idx;
        input integer sat_val;
        integer n;
        begin
            for (n = 0; n < 128; n = n + 1) begin
                if (n == sat_idx) send(sat_val);
                else              send((((base + n) / h) % 2) ? -a : a);
            end
        end
    endtask

    task expect_state;
        input integer exp_flag;
        input integer exp_valid;
        input integer exp_mav;       // -1 = do not check
        input [255:0] name;
        begin
            checks = checks + 1;
            if (features_valid !== exp_valid[0] ||
                which_flag(0) !== exp_flag ||
                flag_count(0) !== ((exp_flag == F_NONE) ? 0 : 1) ||
                (exp_mav >= 0 && emg_mav_out !== exp_mav[11:0])) begin
                errors = errors + 1;
                $display("FAIL %0s: valid=%b flag=%0d (count %0d) mav=%0d zcr=%0d | expected valid=%0d flag=%0d mav=%0d",
                         name, features_valid, which_flag(0), flag_count(0),
                         emg_mav_out, zcr_count, exp_valid, exp_flag, exp_mav);
            end else begin
                $display("ok   %0s: valid=%b flag=%0d mav=%0d zcr=%0d",
                         name, features_valid, which_flag(0), emg_mav_out, zcr_count);
            end
        end
    endtask

    // run one scenario: reset, warm-up window, real window
    task scenario;
        input integer a;
        input integer h;
        input integer exp_flag;
        input integer sat_idx;
        input integer sat_val;
        input [255:0] name;
        begin
            do_reset;
            send_window(a, h, 0, -1, 0);
            @(negedge clk);                       // wait for the classifier
            expect_state(F_NONE, 0, -1, "  warm-up window");
            send_window(a, h, 128, sat_idx, sat_val);
            @(negedge clk);
            if (exp_flag == F_NOISE) expect_state(exp_flag, 0, -1, name);
            else                     expect_state(exp_flag, 1, a, name);
        end
    endtask

    // ---- continuous back-to-back samples (valid high every clock) ----
    integer burst_pulses = 0;
    integer burst_bad    = 0;
    reg     monitor_on   = 0;

    always @(negedge clk) begin
        if (monitor_on && features_valid) begin
            burst_pulses = burst_pulses + 1;
            if (which_flag(0) !== F_NORMAL || flag_count(0) !== 1 ||
                emg_mav_out !== 12'd250)
                burst_bad = burst_bad + 1;
        end
    end

    integer i;

    initial begin
        $dumpfile("top.vcd");
        $dumpvars(0, tb_top);

        repeat (3) @(negedge clk);
        rst_n = 1;

        //            amplitude half  expected      sat_idx sat_val  name
        scenario(   8,  3, F_REST,    -1, 0,      "resting (noise only)");
        scenario( 250,  7, F_NORMAL,  -1, 0,      "normal contraction");
        scenario( 320,  7, F_SUSTAIN, -1, 0,      "sustained contraction");
        scenario( 420, 21, F_FATIGUE, -1, 0,      "muscle fatigue");
        scenario( 200, 10, F_TREMOR,  -1, 0,      "tremor");
        scenario( 250,  7, F_NOISE,   40, 2047,   "rail saturation +2047");
        scenario( 250,  7, F_NOISE,   90, -2048,  "rail saturation -2048");

        // the fatigue threshold registers really are configurable:
        // raise the MAV threshold above 420 and fatigue must NOT be flagged
        fatigue_mav_thresh = 12'd500;
        // (MAV 420 is >= 300, so it is then called a sustained contraction)
        scenario( 420, 21, F_SUSTAIN, -1, 0,      "threshold raised: no fatigue");
        fatigue_mav_thresh = 12'd350;

        // back-to-back samples, 5 windows, valid high on every clock
        do_reset;
        monitor_on = 1;
        @(negedge clk);
        sample_valid = 1;
        for (i = 0; i < 128 * 5; i = i + 1) begin
            sample_in = ((i / 7) % 2) ? -250 : 250;
            @(negedge clk);
        end
        sample_valid = 0;
        repeat (5) @(negedge clk);
        monitor_on = 0;
        checks = checks + 1;
        if (burst_pulses !== 4 || burst_bad !== 0) begin
            errors = errors + 1;
            $display("FAIL back-to-back: pulses=%0d (expected 4) bad=%0d",
                     burst_pulses, burst_bad);
        end else
            $display("ok   back-to-back samples: 4 strobes, all NORMAL, MAV=250");

        $display("--------------------------------------------");
        $display("Checks run: %0d   Errors: %0d", checks, errors);
        if (errors == 0) $display("RESULT: PASS");
        else             $display("RESULT: FAIL");
        $display("--------------------------------------------");
        $finish;
    end

endmodule
