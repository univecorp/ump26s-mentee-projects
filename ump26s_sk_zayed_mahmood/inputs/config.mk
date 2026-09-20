export DESIGN_NAME = uav_safety_controller
export PLATFORM    = ihp-sg13g2

PROJECT_DIR := /home/skzayedm/Documents/ump26s-mentee-projects/ump26s_sk_zayed_mahmood

export VERILOG_FILES = \
    $(PROJECT_DIR)/inputs/rtl/uav_safety_controller.v \
    $(PROJECT_DIR)/inputs/rtl/safety_conditions.v \
    $(PROJECT_DIR)/inputs/rtl/uav_safety_fsm.v \
    $(PROJECT_DIR)/inputs/rtl/safety_timer.v

export SDC_FILE = $(PROJECT_DIR)/inputs/sdc/constraints.sdc

export USE_FILL = 1

export CORE_UTILIZATION = 30
export PLACE_DENSITY ?= 0.60
export TNS_END_PERCENT = 100
