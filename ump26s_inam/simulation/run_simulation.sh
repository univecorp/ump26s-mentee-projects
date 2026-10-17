#!/usr/bin/env bash
set -euo pipefail

project_dir="$(cd "$(dirname "$0")/.." && pwd)"
cd "$project_dir"

iverilog -g2012 -Wall \
  -s tb_arithmetic_diagnosis_engine \
  -o simulation/simv \
  inputs/rtl/arithmetic_diagnosis_engine.v \
  simulation/tb_arithmetic_diagnosis_engine.v

vvp simulation/simv | tee simulation/simulation.log
