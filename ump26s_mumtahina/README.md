# Hardware Battery SoC Estimator with Rest-Triggered Drift Correction

Mumtahina Mustafize, B.Sc. EEE, IUT. Unive Mentorship Program, Summer 2026.

A synthesizable Verilog block that tracks battery state of charge by Coulomb counting
(divider-free) and corrects drift from a piecewise-linear OCV curve whenever the pack is idle.
Implemented RTL to GDSII with OpenROAD-flow-scripts on IHP SG13G2 (130 nm), 50 MHz target.

## Layout
- inputs/rtl/top.v : RTL (module name: soc_estimator)
- inputs/sdc/constraints.sdc : timing constraints
- inputs/config.mk : ORFS configuration
- inputs/tb/ : testbench
- outputs/netlist/ : final gate-level netlist and SDC
- outputs/gds/final.gds : final layout
- outputs/reports/ : synthesis, timing, routing reports, waveform, pin list
- docs/ : final report and project proposal

## capacity_scale
capacity_scale = round(100 * 2^(16+SHIFT) * I_LSB * dt / (3600 * C_Ah)), SHIFT = 8.
Example: 2 Ah, 1 mA LSB, 1 s sampling gives 233.

## Results
Setup slack +9.06 ns at 20 ns clock, 0 DRC violations, 38% utilization.
