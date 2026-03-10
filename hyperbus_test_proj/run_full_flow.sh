#!/usr/bin/env bash
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

JOBS="${JOBS:-8}"
RESET="${RESET:-0}"
EXPORT_DIR="${EXPORT_DIR:-$SCRIPT_DIR/build/export}"

args=(--jobs "$JOBS" --export_dir "$EXPORT_DIR")
if [[ "$RESET" == "1" ]]; then
  args+=(--reset)
fi

exec vivado -mode batch \
  -source "$SCRIPT_DIR/run_full_flow.tcl" \
  -tclargs "${args[@]}"
