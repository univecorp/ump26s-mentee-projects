###############################################################################
# Created by write_sdc
###############################################################################
current_design top
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 20.0000 [get_ports {clk}]
set_clock_transition 0.1000 [get_clocks {core_clock}]
set_clock_uncertainty 0.2000 core_clock
set_propagated_clock [get_clocks {core_clock}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bcd_digit[0]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bcd_digit[1]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bcd_digit[2]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bcd_digit[3]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {digit_index[0]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {digit_index[1]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {digit_index[2]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {digit_valid}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {field_id[0]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {field_id[1]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {field_id[2]}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {operation_mode}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {start}]
set_input_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {submit}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bug_id[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bug_id[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bug_id[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {bug_id[3]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {busy}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {confidence[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {confidence[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[10]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[11]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[12]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[13]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[14]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[15]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[16]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[17]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[18]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[19]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[3]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[4]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[5]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[6]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[7]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[8]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {correct_result[9]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {diagnosis_valid}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {done}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {error_col[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {error_col[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {error_col[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {error_row[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {error_row[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {mismatch_score[0]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {mismatch_score[1]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {mismatch_score[2]}]
set_output_delay 2.0000 -clock [get_clocks {core_clock}] -add_delay [get_ports {mismatch_score[3]}]
set_false_path\
    -from [get_ports {rst_n}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
