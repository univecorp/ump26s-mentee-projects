export PLATFORM        = ihp-sg13g2

export DESIGN_NAME      = bio_access_hd_matcher
export DESIGN_NICKNAME  = bio_access_hd_matcher

export VERILOG_FILES    = $(sort $(wildcard ./designs/src/$(DESIGN_NICKNAME)/*.v))
export SDC_FILE         = ./designs/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

export CORE_UTILIZATION = 40
export CORE_ASPECT_RATIO = 1
export CORE_MARGIN      = 20
export PLACE_DENSITY    = 0.60

export TNS_END_PERCENT  = 100
