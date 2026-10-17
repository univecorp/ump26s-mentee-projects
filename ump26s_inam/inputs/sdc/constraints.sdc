# 50 MHz primary clock: period = 20 ns
create_clock -name core_clock -period 20.000 [get_ports clk]

# Reserve part of the clock period for external input/output paths.
set_input_delay  2.000 -clock core_clock \
    [get_ports {start operation_mode digit_valid submit field_id[*] digit_index[*] bcd_digit[*]}]
set_output_delay 2.000 -clock core_clock \
    [get_ports {busy done diagnosis_valid bug_id[*] error_row[*] error_col[*] confidence[*] correct_result[*] mismatch_score[*]}]

# Clock quality assumptions for synthesis and static timing analysis.
set_clock_uncertainty 0.200 [get_clocks core_clock]
set_clock_transition  0.100 [get_clocks core_clock]

# rst_n is an asynchronous control input and is not a timed data path.
set_false_path -from [get_ports rst_n]
