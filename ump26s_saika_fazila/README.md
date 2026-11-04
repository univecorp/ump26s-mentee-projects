# EMG Feature Extraction Engine (MAV + ZCR, Fatigue/Tremor Detection)

**Author:** Saika Fazila, EEE, Islamic University of Technology (IUT)
**Program:** UMP Mentorship Summer 2026
**Technology:** IHP SG13G2 (130 nm), OpenROAD-flow-scripts, Verilog RTL to GDSII

## Overview
Synthesizable IP that takes 12-bit signed streaming sEMG samples and computes
an 8-sample sliding-window Mean Absolute Value (MAV) and a hysteresis-based
zero-crossing count (ZCR). A status classifier flags muscle fatigue, tremor,
sustained/normal contraction, rest, and invalid input (rail saturation).

## Folder layout
| Folder / file | Contents |
|---|---|
| rtl/ | Verilog: emg_feature_engine, mav_calc, zcr_calc, sample_window, status_classifier |
| testbench/ | Testbenches tb_top.v, tb_mav.v, tb_zcr.v and waveform dumps (top.vcd, mav.vcd, zcr.vcd) |
| sdc/ | constraint.sdc (20 MHz clock) |
| config.mk | ORFS design configuration |
| output/ | Synthesized netlist 1_synth.v, final netlist 6_final.v, layout 6_final.gds, 6_final.sdc, 6_final.spef |
| reports/ | Stage reports (.rpt), flow logs, and layout images (final_*.webp) |
| doc/ | Simulation log sim_top.log |

## Verification
The self-checking top-level testbench ran 17 checks with 0 errors (RESULT: PASS).
Scenarios covered: rest (noise only), normal contraction, sustained contraction,
muscle fatigue, tremor, rail saturation (+2047 and -2048), raised fatigue
threshold (no alert), and back-to-back samples. Full output: doc/sim_top.log

Re-run the simulation:

    cd testbench
    iverilog -o sim_top tb_top.v ../rtl/*.v && vvp sim_top

View the waveforms with: gtkwave top.vcd (also mav.vcd, zcr.vcd)

## Physical implementation results (IHP SG13G2, 20 MHz)
| Metric | Result |
|---|---|
| Target clock | 20 MHz (50 ns period) |
| Setup timing | WNS 0.00 ns, TNS 0.00 ns, worst setup slack +38.31 ns (met) |
| Cell area | 23,829 um^2 |
| Core utilization | 24% |
| Cell count (excluding fill) | 1,751 |
| Sequential cells | 162 |
| Combinational logic cells | 1,308 |
| Timing-repair buffers | 124 |
| Inverters | 106 |
| Clock buffers / clock inverters | 49 / 2 |
| Total power | about 563 uW (internal 396 uW, switching 162 uW, leakage 5 uW) |
| DRC violations | 0 (reports/5_route_drc.rpt is empty) |

The final GDSII is output/6_final.gds. Layout images are in reports/final_*.webp.
