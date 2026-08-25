# mac_unit.sdc
# Timing constraints for the exact MAC unit

set clk_name   clk
set clk_port   clk
set clk_period 10.0

# 100 MHz clock
create_clock -name $clk_name \
    -period $clk_period \
    [get_ports $clk_port]

# Input delays
# Exclude clock and asynchronous reset
set_input_delay -clock $clk_name 2.0 \
    [remove_from_collection [all_inputs] \
    [get_ports [list $clk_port rst_n]]]

# Output delay
set_output_delay -clock $clk_name 2.0 [all_outputs]
