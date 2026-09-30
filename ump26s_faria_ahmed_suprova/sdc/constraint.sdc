# =============================================================================
# GridGuard - timing constraints (SDC)
# Place this file at:  flow/designs/ihp-sg13g2/gridguard/constraint.sdc
# Time unit is ns (from the IHP SG13G2 library)
# =============================================================================

current_design gridguard_top

set clk_name      core_clock
set clk_port_name clk
set clk_period    20.0
set clk_io_pct    0.2

set clk_port [get_ports $clk_port_name]

# 50 MHz clock on port "clk"
create_clock -name $clk_name -period $clk_period $clk_port

# All inputs except the clock
set non_clock_inputs [lsearch -inline -all -not -exact [all_inputs] $clk_port]

# Inputs arrive / outputs are needed 20% of the period (4 ns) around the clock
set_input_delay  [expr {$clk_period * $clk_io_pct}] -clock $clk_name $non_clock_inputs
set_output_delay [expr {$clk_period * $clk_io_pct}] -clock $clk_name [all_outputs]

# rst_n is an ASYNCHRONOUS external reset: it can change at any time, so an
# input delay relative to clk means nothing for it. Inside the design rst_n
# drives ONLY the reset synchronizer (rst_sync_ff1/ff2), which is built to
# accept a reset release at any time. So paths starting at this port are not
# timed. The internal reset release (rst_sync_ff2 -> all other flip-flops)
# starts at a clock edge, so it is still fully timed (recovery/removal).
set_false_path -from [get_ports rst_n]
