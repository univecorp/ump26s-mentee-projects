# Real-Time UAV Safety Controller

A synthesizable Verilog safety-controller IP for UAV fault monitoring, deterministic safety arbitration, timed manual intervention, emergency landing, and confirmed multi-target emergency shutdown. The design was verified at RTL and implemented from RTL to GDSII using OpenROAD and the IHP SG13G2 130 nm technology.

**Technology:** IHP SG13G2 130 nm  
**Target Clock:** 50 MHz (20 ns)


---

## Project Overview

The **Real-Time UAV Safety Controller** implements the digital safety-decision layer of a UAV system. It monitors battery, navigation, payload, propulsion, environmental, mission-state, and operator-control inputs, classifies abnormal conditions by severity, and applies deterministic safety responses.

The controller supports preflight qualification, flight inhibition, normal-flight monitoring, Return Home, Manual Safety, persistent Manual Flight, Emergency Landing, and confirmed Emergency Shutdown. Safety behavior is implemented as a modular RTL architecture consisting of condition classification, timer supervision, finite-state control, shutdown transaction management, and output decoding.

After functional verification with a self-checking Icarus Verilog testbench, the frozen RTL was taken through synthesis, floorplanning, placement, clock-tree synthesis, routing, extraction, timing/power analysis, and final GDSII generation using OpenROAD-flow-scripts.

> **Scope:** This repository implements the digital UAV safety-decision controller only. It is not a complete UAV flight-control system and does not include sensor analog front ends, actuator interfaces, communication protocols, or flight-control loops.

---

## Key Features

- Ten-state safety-control finite-state machine
- Deterministic handling of simultaneous fault conditions
- Context-sensitive reset behavior
- Preflight health qualification
- Latched `FLIGHT_INHIBIT` behavior
- Persistent `RETURN_HOME` and `EMERGENCY_LAND` modes
- Five-second Manual Safety grace interval
- One-cycle `force_manual_mode` command at Manual Safety expiry
- Persistent Manual Flight mode while airborne
- Thirty-second emergency-shutdown target-selection timeout
- Three-second shutdown confirmation interval
- `shutdown_select = 4'b0000` treated strictly as **no target selected**
- Non-zero shutdown target captured and frozen during confirmation
- Timeout lockout prevents repeated retries while the request remains high
- Request must be deasserted and reasserted to re-arm after timeout
- Committed shutdown bitmap remains persistent until reset
- Parameterized production timers with accelerated testbench overrides
- Self-checking directed regression with continuous safety invariants
- Complete OpenROAD RTL-to-GDSII implementation
- Archived stage reports, screenshots, final netlist, SDC, GDSII, simulation log, VCD, and clean rerun evidence

---

## Safety Response Priority

When a new eligible in-flight response is selected, the implemented priority is:

| Priority | Action | Qualification |
|---:|---|---|
| 1 | Committed Emergency Shutdown | `shutdown_committed = 1` |
| 2 | Manual Flight | Operator manual-control request |
| 3 | Emergency Landing | Critical response-class condition |
| 4 | Manual Safety | Level-0 safety condition |
| 5 | Return Home | Mission / lower-severity recovery condition |
| 6 | Normal Monitoring | No higher-priority response |

A raw `emergency_shutdown` request is **not** immediately the highest-priority event. Emergency Shutdown becomes dominant only after a valid non-zero target has completed the required confirmation sequence and the shutdown has been committed.

---

## Fault Classification

| Response Class | Trigger Inputs |
|---|---|
| Emergency Landing | `battery_critical`, `propulsion_fault`, `navigation_fault[1]`, `payload_fault[2]` |
| Manual Safety | `navigation_fault[0]`, `payload_fault[1]` |
| Return Home | `battery_low`, `adverse_weather`, `payload_fault[0]` |
| Warning | `obstacle_detected`, Return Home condition, or Manual Safety condition |
| Preflight Fault | Battery low/critical, any navigation fault, any payload fault, propulsion fault |

`adverse_weather` and `obstacle_detected` do not independently inhibit preflight in the current RTL. They are handled through the in-flight safety policy.

---

## RTL Architecture

```text
uav_safety_controller
├── safety_conditions
├── safety_timer
└── uav_safety_fsm
```

### Module Responsibilities

- **`uav_safety_controller.v`**  
  Top-level integration, shutdown target capture, confirmation/lockout control, commitment logic, and state-dependent output decoding.

- **`safety_conditions.v`**  
  Combinational fault classification, preflight health qualification, and warning-condition aggregation.

- **`safety_timer.v`**  
  Implements the Manual Safety grace timer, shutdown confirmation timer, and shutdown target-selection timer.

- **`uav_safety_fsm.v`**  
  Implements the ten-state operating FSM, ordered transitions, reset handling, and persistent in-flight modes.

---

## FSM States

| Code | State | Purpose |
|---:|---|---|
| 0 | `IDLE` | Controller inactive |
| 1 | `PREFLIGHT_CHECK` | Internal health qualification |
| 2 | `FLIGHT_READY` | Preflight accepted |
| 3 | `FLIGHT_INHIBIT` | Unsafe preflight condition latched |
| 4 | `NORMAL_FLIGHT` | Normal in-flight monitoring |
| 5 | `MANUAL_SAFETY` | Timed manual-intervention grace state |
| 6 | `MANUAL_FLIGHT` | Persistent manual-control mode |
| 7 | `RETURN_HOME` | Persistent recovery command |
| 8 | `EMERGENCY_LAND` | Persistent emergency-landing command |
| 9 | `EMERGENCY_SHUTDOWN` | Confirmed shutdown commitment |

For the complete transition policy, timer-boundary behavior, state outputs, shutdown transaction sequence, and waveform evidence, see the final technical report in `docs/Final_Report.pdf`.

---

## Timing Requirements

At the 50 MHz production clock:

| Function | Production Interval | Clock Cycles |
|---|---:|---:|
| Manual Safety grace | 5 s | 250,000,000 |
| Shutdown confirmation | 3 s | 150,000,000 |
| Shutdown target selection | 30 s | 1,500,000,000 |

The testbench overrides these parameters with short cycle counts to verify the same control sequencing efficiently without simulating billions of clock edges.

---

## Repository Structure

```text
.
├── docs/
│   ├── Final_Report.pdf
│   ├── openroad_full_reproducibility_run.log
│   ├── openroad_reports/
│   │   ├── 1_Post_synthesis.rpt
│   │   ├── 2_floorplan_final.rpt
│   │   ├── 3_detailed_place.rpt
│   │   ├── 4_cts_final.rpt
│   │   ├── 5_global_route.rpt
│   │   ├── 5_route_drc.rpt
│   │   └── 6_finish.rpt
│   └── Screenshots/
├── inputs/
│   ├── config.mk
│   ├── rtl/
│   │   ├── uav_safety_controller.v
│   │   ├── safety_conditions.v
│   │   ├── safety_timer.v
│   │   └── uav_safety_fsm.v
│   └── sdc/
│       └── constraints.sdc
├── outputs/
│   ├── gds/
│   │   └── final.gds
│   ├── netlist/
│   │   ├── final.v
│   │   └── final.sdc
│   └── sim/
│       ├── uav_safety_controller_simulation.log
│       ├── uav_safety_controller_tb.out
│       └── uav_safety_controller.vcd
├── tb/
│   └── tb_uav_safety_controller.v
└── README.md
```

The repository separates source inputs, verification evidence, physical-design outputs, and report artifacts to maintain traceability throughout the project.

---

## RTL Simulation

### Requirements

- Icarus Verilog
- GTKWave (optional, for waveform inspection)

### Compile and Run

From the repository root:

```bash
mkdir -p outputs/sim

rm -f outputs/sim/uav_safety_controller_tb.out \
      outputs/sim/uav_safety_controller_simulation.log \
      outputs/sim/uav_safety_controller.vcd

iverilog -g2012 -Wall \
  -s tb_uav_safety_controller \
  -o outputs/sim/uav_safety_controller_tb.out \
  inputs/rtl/uav_safety_controller.v \
  inputs/rtl/safety_conditions.v \
  inputs/rtl/uav_safety_fsm.v \
  inputs/rtl/safety_timer.v \
  tb/tb_uav_safety_controller.v

vvp outputs/sim/uav_safety_controller_tb.out \
  2>&1 | tee outputs/sim/uav_safety_controller_simulation.log
```

The testbench writes the waveform file to:

```text
outputs/sim/uav_safety_controller.vcd
```

### Final Regression

| Verification Metric | Result |
|---|---:|
| Directed tests | **62 / 62 passed** |
| Individual checks | **491 / 491 passed** |
| Invariant failures | **0** |
| Final status | **PASS** |

The regression covers startup/preflight behavior, individual fault sources, navigation/payload combinations, simultaneous faults, priority conflicts, Manual Safety timing, manual takeover, persistent recovery modes, emergency-shutdown target capture, target freezing, request withdrawal, timeout lockout, re-arming, reset behavior, and boundary conditions.

---

## OpenROAD RTL-to-GDSII Flow

The project was implemented with OpenROAD-flow-scripts targeting the `ihp-sg13g2` platform.

### Working Directory

```bash
cd ~/Softwares/OpenRoad/OpenROAD-flow-scripts/flow

DESIGN_CONFIG=./designs/ihp-sg13g2/uav_safety_controller/config.mk
```

### Stage-by-Stage Flow

The design was first executed and inspected stage by stage:

```bash
make DESIGN_CONFIG=$DESIGN_CONFIG synth
make DESIGN_CONFIG=$DESIGN_CONFIG synth-report

make DESIGN_CONFIG=$DESIGN_CONFIG floorplan

make DESIGN_CONFIG=$DESIGN_CONFIG place

make DESIGN_CONFIG=$DESIGN_CONFIG cts

make DESIGN_CONFIG=$DESIGN_CONFIG route

make DESIGN_CONFIG=$DESIGN_CONFIG finish
```

This sequence allowed synthesis, floorplan/PDN, placement, CTS, routing, extraction, timing, power, and final layout results to be reviewed and archived individually.

### Complete One-Command Flow

After the stage-by-stage implementation was completed and archived, a clean full-flow rerun was performed with:

```bash
make DESIGN_CONFIG=$DESIGN_CONFIG
```

The normal complete ORFS flow executes the major implementation stages in the sequence:

```text
synth → floorplan → place → cts → route → finish
```

---

## Clean Reproducibility Run

The implementation was also rebuilt from a cleaned design-specific ORFS working state:

```bash
cd ~/Softwares/OpenRoad/OpenROAD-flow-scripts/flow

PROJECT=~/Documents/ump26s-mentee-projects/ump26s_sk_zayed_mahmood

make \
  DESIGN_CONFIG=./designs/ihp-sg13g2/uav_safety_controller/config.mk \
  clean_all

time make \
  DESIGN_CONFIG=./designs/ihp-sg13g2/uav_safety_controller/config.mk \
  2>&1 | tee "$PROJECT/docs/openroad_full_reproducibility_run.log"
```

The rerun reproduced the implementation databases, major physical/signoff metrics, and exact final netlist/SDC hashes. The regenerated GDSII stream was not byte-identical to the archived reference GDSII, so **binary GDS reproducibility is not claimed**.

The full rerun log is retained at:

```text
docs/openroad_full_reproducibility_run.log
```

---

## Final Implementation Results

| Metric | Final Result |
|---|---:|
| Technology | IHP SG13G2 130 nm |
| Target clock | 50 MHz / 20 ns |
| Active design area | 14,045.27 µm² |
| Core utilization | ~37% |
| Active physical instances | 927 |
| Filler instances | 2,412 |
| Worst positive setup slack | +10.8479 ns |
| TNS / WNS | 0.00 ns / 0.00 ns |
| Setup / hold violations | 0 / 0 |
| Estimated post-route power | ~0.656 mW |
| Final detailed-route violations | 0 |
| Antenna net / pin violations | 0 / 0 |
| Worst VDD drop | 0.589 mV |
| Worst VSS degradation | 0.928 mV |
| Final GDSII | Generated successfully |

### Electrical-Rule Note

The final OpenROAD report records **one clock-root max-fanout violation**:

- configured limit: 8
- actual fanout: 16

This is documented separately from timing and routing results. The final design still reports zero setup/hold violations and zero final routing-engine DRC violations. Clock-root fanout is therefore retained as a future backend refinement rather than being hidden or conflated with routing DRC.

---

## Routing and DRC Convergence

Detailed routing used iterative geometric repair. The recorded violation endpoints progressed through:

```text
218 → 121 → 126 → 0
```

The non-monotonic intermediate sequence is expected during iterative routing repair. The relevant completion result is the final endpoint:

- Final detailed-route violations: **0**
- Antenna net violations: **0**
- Antenna pin violations: **0**

`docs/openroad_reports/5_route_drc.rpt` is a zero-byte final route-DRC artifact. The final zero-violation result is independently confirmed by the archived OpenROAD run log.

---

## Output Artifacts

### Final Physical / Netlist Outputs

```text
outputs/gds/final.gds
outputs/netlist/final.v
outputs/netlist/final.sdc
```

### Functional Verification Outputs

```text
outputs/sim/uav_safety_controller_simulation.log
outputs/sim/uav_safety_controller.vcd
outputs/sim/uav_safety_controller_tb.out
```

### OpenROAD Reports

```text
docs/openroad_reports/
```

### Screenshots and Waveform Evidence

```text
docs/Screenshots/
```

---

## Documentation

The complete engineering analysis is provided in:

[`docs/Final_Report.pdf`](docs/Final_Report.pdf)

The report includes:

- project overview and methodology
- implemented RTL architecture
- complete state behavior and safety priority
- timer semantics
- emergency-shutdown transaction details
- verification methodology and coverage
- GTKWave corner-case evidence
- synthesis and floorplan analysis
- placement quality and congestion
- clock-tree synthesis and skew
- routing and DRC convergence
- parasitic extraction
- timing and frequency margin
- power and IR-drop analysis
- reproducibility results
- implementation challenges and engineering decisions
- proposal-to-final design evolution
- reproducibility commands and evidence traceability

Additional project documents are retained under `docs/`, including the original project proposal and the official project guideline.

---

## Tools Used

- **Verilog RTL**
- **Icarus Verilog** — functional simulation
- **GTKWave** — VCD waveform inspection
- **Yosys** — synthesis through ORFS
- **OpenROAD** — physical implementation and analysis
- **OpenROAD-flow-scripts (ORFS)** — RTL-to-GDSII flow
- **IHP SG13G2 Open PDK** — 130 nm target technology
- **KLayout** — final GDSII generation/inspection

Recorded implementation environment includes OpenROAD `26Q3-1278-g4421880472`, Yosys `0.68+`, KLayout `0.30.0`, and Icarus Verilog `12.0`.

---

## Scope and Limitations

This project demonstrates a digital safety-control ASIC block and a complete academic RTL-to-GDSII implementation flow.

The following are outside the demonstrated scope:

- analog sensor interfaces
- actuator drivers
- communication protocols
- complete UAV flight-control loops
- asynchronous input synchronizers at system boundaries
- fabricated-silicon validation
- independent foundry-deck DRC/LVS signoff
- formal proof of all possible input histories
- production-grade multi-corner/multi-mode signoff
- mission-activity-driven silicon power characterization
- dynamic voltage-droop, electromigration, and package-level analysis

The reported timing, power, routing, and IR-drop results should therefore be interpreted within the implemented OpenROAD analysis setup.

---

## Future Work

Potential extensions include:

- resolving the clock-root max-fanout electrical-rule violation
- higher-utilization floorplan experiments
- additional PVT corners
- formal verification of shutdown and force-manual properties
- activity-driven power estimation from realistic UAV mission traces
- counter/timer power optimization
- post-layout gate-level simulation
- synchronized external system interfaces
- expanded power-grid and electromigration analysis
- independent regenerated-layout geometry comparison

---

## Author

**Sk. Zayed Mahmood**  
BSEEE, BRAC University

**UNIVE Mentorship Program — Summer 2026**
