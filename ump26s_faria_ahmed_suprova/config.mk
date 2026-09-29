# =============================================================================
# GridGuard - OpenROAD-flow-scripts design configuration
# Place this file at:  flow/designs/ihp-sg13g2/gridguard/config.mk
# =============================================================================

# ---- Design ----
export DESIGN_NICKNAME = gridguard
export DESIGN_NAME     = gridguard_top
export PLATFORM        = ihp-sg13g2

# ---- Input files ----
export VERILOG_FILES = $(DESIGN_HOME)/src/$(DESIGN_NICKNAME)/gridguard_top.v
export SDC_FILE      = $(DESIGN_HOME)/$(PLATFORM)/$(DESIGN_NICKNAME)/constraint.sdc

# ---- Floorplan and placement ----
export CORE_UTILIZATION = 40
export PLACE_DENSITY    = 0.60

# ---- Timing repair ----
export TNS_END_PERCENT  = 100

# ---- Antenna repair after detailed routing ----
# Older ORFS versions switch this repair off for IHP SG13G2 (platform file
# says "Temporary: skip post-DRT repair antennas"); newer ORFS runs it by
# default. "override" makes sure the repair runs in both versions.
override SKIP_ANTENNA_REPAIR_POST_DRT = 0
export SKIP_ANTENNA_REPAIR_POST_DRT
