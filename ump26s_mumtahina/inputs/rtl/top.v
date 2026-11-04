// soc_estimator.v : hardware battery SoC estimator with rest-triggered OCV correction
// SoC format  : Q8.16 percent  (acc = SoC% * 2^16, full scale = 100<<16)
// curr_code   : signed two's complement, + = charging, - = discharging
// volt_code   : unsigned, 1 LSB = 0.1 mV (30000 = 3.0 V, 42000 = 4.2 V)
// capacity_scale = round(100 * 2^(16+SHIFT) * I_LSB * dt / (3600 * C_Ah))
module soc_estimator #(
    parameter integer SHIFT   = 8,
    parameter integer REST_N  = 8,
    parameter [7:0]   LOW_SOC = 8'd15
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        start,
    input  wire        sample_valid,
    input  wire [15:0] curr_code,
    input  wire [15:0] volt_code,
    input  wire [15:0] capacity_scale,
    input  wire [15:0] rest_thresh,
    input  wire [15:0] drift_limit,
    output wire [7:0]  soc,
    output reg         soc_valid,
    output reg         at_rest,
    output wire        low_soc_alarm,
    output reg         drift_alarm
);

    localparam [23:0] FULL   = 24'd6553600;
    localparam [1:0]  S_IDLE = 2'd0, S_INIT = 2'd1, S_TRACK = 2'd2;

    reg [1:0]  state;
    reg [23:0] acc;
    reg [7:0]  rest_cnt;
    reg        corrected;

    reg [23:0] ocv_q;
    always @* begin
        if      (volt_code <= 16'd30000) ocv_q = 24'd0;
        else if (volt_code <  16'd35000) ocv_q = (volt_code - 16'd30000) * 24'd131;
        else if (volt_code <  16'd37000) ocv_q = 24'd655360  + (volt_code - 16'd35000) * 24'd983;
        else if (volt_code <  16'd39000) ocv_q = 24'd2621440 + (volt_code - 16'd37000) * 24'd983;
        else if (volt_code <  16'd42000) ocv_q = 24'd4587520 + (volt_code - 16'd39000) * 24'd655;
        else                             ocv_q = FULL;
    end

    wire signed [15:0] curr_s   = curr_code;
    wire        [15:0] curr_abs = curr_s[15] ? (~curr_code + 16'd1) : curr_code;
    wire               idle_i   = (curr_abs < rest_thresh);

    wire signed [32:0] prod  = curr_s * $signed({1'b0, capacity_scale});
    wire signed [32:0] delta = prod >>> SHIFT;
    wire signed [34:0] acc_s = $signed({11'd0, acc}) + delta;
    wire        [23:0] acc_int = acc_s[34] ? 24'd0 :
                                 (acc_s > $signed({11'd0, FULL})) ? FULL : acc_s[23:0];

    wire [23:0] diff      = (acc > ocv_q) ? (acc - ocv_q) : (ocv_q - acc);
    wire        drift_hit = (diff[23:8] > drift_limit);

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            state <= S_IDLE; acc <= 24'd0; rest_cnt <= 8'd0;
            corrected <= 1'b0; at_rest <= 1'b0; soc_valid <= 1'b0; drift_alarm <= 1'b0;
        end else begin
            drift_alarm <= 1'b0;
            if (start) begin
                state <= S_INIT; acc <= 24'd0; rest_cnt <= 8'd0;
                corrected <= 1'b0; at_rest <= 1'b0; soc_valid <= 1'b0;
            end else begin
                case (state)
                    S_IDLE: ;
                    S_INIT: if (sample_valid) begin
                        acc <= ocv_q; state <= S_TRACK; soc_valid <= 1'b1;
                    end
                    S_TRACK: if (sample_valid) begin
                        if (idle_i) begin
                            if (rest_cnt < REST_N)      rest_cnt <= rest_cnt + 8'd1;
                            if (rest_cnt >= REST_N - 1) at_rest  <= 1'b1;
                        end else begin
                            rest_cnt <= 8'd0; at_rest <= 1'b0; corrected <= 1'b0;
                        end
                        if (at_rest && !corrected && idle_i) begin
                            acc <= ocv_q; corrected <= 1'b1; drift_alarm <= drift_hit;
                        end else
                            acc <= acc_int;
                    end
                    default: state <= S_IDLE;
                endcase
            end
        end
    end

    assign soc           = acc[23:16];
    assign low_soc_alarm = soc_valid && (soc < LOW_SOC);
endmodule
