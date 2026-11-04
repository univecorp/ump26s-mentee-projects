export DESIGN_NAME     = emg_feature_engine
export DESIGN_NICKNAME = emg_engine
export PLATFORM        = ihp-sg13g2

export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/sample_window.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/mav_calc.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/zcr_calc.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/status_classifier.v \
                       $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/emg_feature_engine.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export USE_FILL = 1

export PLACE_DENSITY ?= 0.88
export CORE_UTILIZATION = 20
export TNS_END_PERCENT  = 100

export SWAP_ARITH_OPERATORS = 1
export OPENROAD_HIERARCHICAL = 1
export SYNTH_USE_SYN = 1
