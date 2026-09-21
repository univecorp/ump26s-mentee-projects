export DESIGN_NICKNAME = mac_unit
export DESIGN_NAME     = mac_unit
export PLATFORM        = ihp-sg13g2

export VERILOG_FILES   = $(sort $(wildcard ./inputs/rtl/*.v))
export SDC_FILE        = ./inputs/sdc/mac_unit.sdc

export CORE_UTILIZATION = 40
export PLACE_DENSITY    = 0.60

export CLOCK_PERIOD     = 10.0
