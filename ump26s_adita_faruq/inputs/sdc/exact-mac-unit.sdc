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
# Data inputs only; clock and asynchronous reset are excluded.
set_input_delay -clock $clk_name 2.0 [get_ports {valid_in a b}]

# Output delay
set_output_delay -clock $clk_name 2.0 [all_outputs]
