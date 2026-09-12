export DESIGN_NAME = top
export DESIGN_NICKNAME = arithmetic_error_diagnosis
export PLATFORM = ihp-sg13g2

export VERILOG_FILES = $(sort $(wildcard $(dir $(DESIGN_CONFIG))rtl/*.v))
export SDC_FILE = $(dir $(DESIGN_CONFIG))sdc/constraints.sdc

# Keep the automatically generated floorplan square and leave routing room.
export CORE_ASPECT_RATIO = 1
export CORE_UTILIZATION = 30
export PLACE_DENSITY ?= 0.55

export USE_FILL = 1
export TNS_END_PERCENT = 100
export SYNTH_USE_SYN = 1
