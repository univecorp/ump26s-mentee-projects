###############################################################################
# Created by write_sdc
###############################################################################
current_design uav_safety_controller
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name core_clock -period 20.0000 [get_ports {clk}]
set_propagated_clock [get_clocks {core_clock}]
create_clock -name vclk_core_clock -period 20.0000 
set_clock_latency 0.1850 [get_clocks {vclk_core_clock}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {adverse_weather}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {battery_critical}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {battery_low}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {emergency_shutdown}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {flight_active}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {manual_flight_control}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {navigation_fault[0]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {navigation_fault[1]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {obstacle_detected}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {payload_fault[0]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {payload_fault[1]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {payload_fault[2]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {propulsion_fault}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {reset}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_select[0]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_select[1]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_select[2]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_select[3]}]
set_input_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {uav_active}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {alarm}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {emergency_land}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {flight_inhibit}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {flight_ready}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {force_manual_mode}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {return_home}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_cmd[0]}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_cmd[1]}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_cmd[2]}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {shutdown_cmd[3]}]
set_output_delay 4.0000 -clock [get_clocks {vclk_core_clock}] -add_delay [get_ports {warning}]
###############################################################################
# Environment
###############################################################################
###############################################################################
# Design Rules
###############################################################################
