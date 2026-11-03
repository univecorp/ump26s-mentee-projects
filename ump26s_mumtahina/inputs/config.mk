export DESIGN_NICKNAME = soc_estimator
export DESIGN_NAME     = soc_estimator
export PLATFORM        = ihp-sg13g2

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/soc_estimator.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION  = 40
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN       = 20
export PLACE_DENSITY     = 0.60
export TNS_END_PERCENT   = 100
