// emg_feature_engine.v
// Top level of the EMG feature extraction IP.
//
//   sample_in --> sample_window --> mav_calc ------\
//        |                                          +--> status_classifier --> flags
//        +--------> zcr_calc ----------------------/
//
// Inputs : 12-bit signed EMG samples with a sample_valid strobe,
//          and the two configurable fatigue thresholds.
// Outputs: window-averaged MAV, zero-crossing count, six diagnostic flags
//          (exactly one is high after each window) and a features_valid strobe.

module emg_feature_engine (
    input  wire        clk,
    input  wire        rst_n,                 // active-low synchronous reset

    // sample stream from the ADC / host
    input  wire        sample_valid,
    input  wire [11:0] sample_in,             // 12-bit signed

    // configurable thresholds
    input  wire [11:0] fatigue_mav_thresh,
    input  wire [7:0]  fatigue_zcr_thresh,

    // extracted features
    output wire [11:0] emg_mav_out,
    output wire [7:0]  zcr_count,
    output wire        features_valid,

    // status / alert flags (one-hot after each window)
    output wire        fatigue_alert,         // MUSCLE_FATIGUE_ALERT
    output wire        tremor_flag,           // TREMOR_DETECTED
    output wire        contraction_active,    // SUSTAINED_CONTRACTION
    output wire        muscle_resting,        // MUSCLE_RESTING
    output wire        noise_flag,            // NOISE_BASELINE_INVALID
    output wire        normal_contraction     // NORMAL_CONTRACTION
);

    wire [95:0] taps;
    wire [11:0] mav;
    wire        zcr_valid;

    sample_window u_window (
        .clk          (clk),
        .rst_n        (rst_n),
        .sample_valid (sample_valid),
        .sample_in    (sample_in),
        .taps         (taps),
        .window_full  ()                      // not needed at the top level
    );

    mav_calc u_mav (
        .taps (taps),
        .mav  (mav)
    );

    zcr_calc #(.WIN_BITS(7), .HYST(16)) u_zcr (
        .clk          (clk),
        .rst_n        (rst_n),
        .sample_valid (sample_valid),
        .sample_in    (sample_in),
        .zcr_count    (zcr_count),
        .zcr_valid    (zcr_valid)
    );

    status_classifier u_class (
        .clk                (clk),
        .rst_n              (rst_n),
        .sample_valid       (sample_valid),
        .sample_in          (sample_in),
        .mav                (mav),
        .zcr_count          (zcr_count),
        .zcr_valid          (zcr_valid),
        .fatigue_mav_thresh (fatigue_mav_thresh),
        .fatigue_zcr_thresh (fatigue_zcr_thresh),
        .emg_mav_out        (emg_mav_out),
        .features_valid     (features_valid),
        .fatigue_alert      (fatigue_alert),
        .tremor_flag        (tremor_flag),
        .contraction_active (contraction_active),
        .muscle_resting     (muscle_resting),
        .noise_flag         (noise_flag),
        .normal_contraction (normal_contraction)
    );

endmodule
