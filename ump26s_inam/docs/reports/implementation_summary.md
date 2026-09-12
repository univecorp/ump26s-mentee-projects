# OpenROAD Implementation Summary

## RTL Verification

- Tests passed: 12
- Tests failed: 0

## Synthesis

- Synthesized cells: 653
- Mapped area: 8412.83 µm²
- Wire declarations: 557
- Signal I/O bits: 54
- Example sequential cell: `sg13g2_dfrbpq_1`
- Example combinational cell: `sg13g2_nand4_1`

## Floorplan

- Die: 208.965 µm × 208.965 µm
- Core: 173.280 µm × 170.100 µm
- Core area: 29474.928 µm²
- Standard-cell rows: 45
- Initial utilization: approximately 31%

## Placement

- Placement area: 9145 µm²
- Utilization: 31%
- HPWL improvement: 10.7%
- Placement legality violations: 0
- Setup slack: +16.09 ns
- Hold slack: +0.09 ns

## Clock-Tree Synthesis

- Clock buffers: 17
- Maximum tree level: 4
- Setup and hold violations: 0
- Post-CTS hold slack: +0.07 ns
- Documented root fanout: 16 against limit 8

## Routing and Final Verification

- Routed nets: 689
- Final routed wire length: approximately 17412 µm
- Final vias: 4357
- Detailed-routing DRC violations: 0
- Antenna violations: 0
- Final area/utilization: 9976 µm² / 34%
- Setup WNS/TNS: +16.29 ns / 0.00 ns
- Hold WNS/TNS: +0.07 ns / 0.00 ns
- Estimated power: 0.408 mW
- VDD/VSS worst IR drop: 1.13 mV / 0.984 mV
- Power and ground connectivity: passed
- Final GDS merge: passed
