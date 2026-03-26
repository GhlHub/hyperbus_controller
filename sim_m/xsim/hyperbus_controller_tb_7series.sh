#!/usr/bin/env bash
set -Eeuo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

export TB_XVLOG_DEFINES="--define TB_PHY_FAMILY=1 --define TB_SAMP_OFFSET_PS=2000"
export SIM_RUN_NAME="7series"

exec "$script_dir/hyperbus_controller_tb.sh" "$@"
