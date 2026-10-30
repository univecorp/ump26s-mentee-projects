// status_classifier.v
// Turns the raw features into one of six diagnostic states, once per
// 128-sample window (the same window zcr_calc uses).
//
// Per window it does three things:
//   1. averages the sliding 8-sample MAV over the 128 samples of the window
//      (sum of 128 values, then >> 7),
//   2. remembers whether any sample hit the rail (0x7FF or 0x800),
//   3. when zcr_valid pulses, picks ONE state and latches the outputs.
//
// Priority (first match wins), so exactly one flag is high per window:
//   1. NOISE_BASELINE_INVALID  rail sample seen in the window
//   2. MUSCLE_RESTING          window MAV  <  REST_THRESH
//   3. MUSCLE_FATIGUE_ALERT    MAV > fatigue_mav_thresh AND ZCR < fatigue_zcr_thresh
//   4. TREMOR_DETECTED         ZCR inside [TREMOR_ZCR_LO, TREMOR_ZCR_HI] AND MAV >= TREMOR_MAV_MIN
//   5. SUSTAINED_CONTRACTION   MAV >= SUSTAIN_THRESH
//   6. NORMAL_CONTRACTION      everything else
//
// features_valid is a 1-cycle strobe: it pulses when emg_mav_out, zcr_count
// and the flags have all just been updated for a new window. It does not
// pulse for the first window after reset (the shift register was still
// filling up) or for a window that contains a rail sample.
//
// The numeric thresholds below are starting values taken from the numbers
// in the project proposal. Change them here (or override them from the top
// level) once the real sample rate and signal levels are known.

module status_classifier #(
    parameter [11:0] REST_THRESH     = 12'd20,   // below this: resting
    parameter [11:0] SUSTAIN_THRESH  = 12'd300,  // at/above this (no fatigue): sustained
    parameter [11:0] TREMOR_MAV_MIN  = 12'd100,  // tremor needs at least this MAV
    parameter [7:0]  TREMOR_ZCR_LO   = 8'd10,    // tremor ZCR band, per window
    parameter [7:0]  TREMOR_ZCR_HI   = 8'd14
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        sample_valid,
    input  wire [11:0] sample_in,            // raw sample, to spot rail values
    input  wire [11:0] mav,                  // sliding 8-sample MAV
    input  wire [7:0]  zcr_count,            // from zcr_calc
    input  wire        zcr_valid,            // from zcr_calc, end of window
    input  wire [11:0] fatigue_mav_thresh,
    input  wire [7:0]  fatigue_zcr_thresh,

    output reg  [11:0] emg_mav_out,          // MAV averaged over the window
    output reg         features_valid,       // 1-cycle strobe
    output reg         fatigue_alert,        // MUSCLE_FATIGUE_ALERT
    output reg         tremor_flag,          // TREMOR_DETECTED
    output reg         contraction_active,   // SUSTAINED_CONTRACTION
    output reg         muscle_resting,       // MUSCLE_RESTING
    output reg         noise_flag,           // NOISE_BASELINE_INVALID
    output reg         normal_contraction    // NORMAL_CONTRACTION
);

    // 128 values of up to 2048 add up to at most 2**18, which needs 19 bits
    reg [18:0] acc;
    reg        sat_seen;    // a rail sample appeared in the current window
    reg        warm;        // at least one full window has finished

    wire rail = sample_valid && ((sample_in == 12'h7FF) || (sample_in == 12'h800));

    wire [11:0] wmav = acc[18:7];            // divide by 128

    wire is_rest    = (wmav < REST_THRESH);
    wire is_fatigue = (wmav > fatigue_mav_thresh) && (zcr_count < fatigue_zcr_thresh);
    wire is_tremor  = (zcr_count >= TREMOR_ZCR_LO) && (zcr_count <= TREMOR_ZCR_HI)
                      && (wmav >= TREMOR_MAV_MIN);
    wire is_sustain = (wmav >= SUSTAIN_THRESH);

    always @(posedge clk) begin
        if (!rst_n) begin
            acc                <= 19'd0;
            sat_seen           <= 1'b0;
            warm               <= 1'b0;
            emg_mav_out        <= 12'd0;
            features_valid     <= 1'b0;
            fatigue_alert      <= 1'b0;
            tremor_flag        <= 1'b0;
            contraction_active <= 1'b0;
            muscle_resting     <= 1'b0;
            noise_flag         <= 1'b0;
            normal_contraction <= 1'b0;
        end else begin
            features_valid <= 1'b0;

            if (zcr_valid) begin
                // ---- end of window: classify, then start the next window ----
                emg_mav_out <= wmav;
                warm        <= 1'b1;

                // the next window may already have its first sample right now
                acc      <= sample_valid ? {7'd0, mav} : 19'd0;
                sat_seen <= rail;

                fatigue_alert      <= 1'b0;
                tremor_flag        <= 1'b0;
                contraction_active <= 1'b0;
                muscle_resting     <= 1'b0;
                noise_flag         <= 1'b0;
                normal_contraction <= 1'b0;

                if (warm) begin
                    if      (sat_seen)   noise_flag         <= 1'b1;
                    else if (is_rest)    muscle_resting     <= 1'b1;
                    else if (is_fatigue) fatigue_alert      <= 1'b1;
                    else if (is_tremor)  tremor_flag        <= 1'b1;
                    else if (is_sustain) contraction_active <= 1'b1;
                    else                 normal_contraction <= 1'b1;

                    features_valid <= !sat_seen;
                end
            end else begin
                if (sample_valid) acc <= acc + {7'd0, mav};
                if (rail)         sat_seen <= 1'b1;
            end
        end
    end

endmodule
