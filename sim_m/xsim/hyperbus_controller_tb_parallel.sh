#!/usr/bin/env bash
set -Eeuo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

mkdir -p "$script_dir/runs/usplus" "$script_dir/runs/7series"

"$script_dir/hyperbus_controller_tb.sh" "$@" > "$script_dir/runs/usplus/launcher.log" 2>&1 &
pid_usplus=$!

"$script_dir/hyperbus_controller_tb_7series.sh" "$@" > "$script_dir/runs/7series/launcher.log" 2>&1 &
pid_7series=$!

status=0

if ! wait "$pid_usplus"; then
  echo "UltraScale+ simulation failed. See $script_dir/runs/usplus/launcher.log"
  status=1
fi

if ! wait "$pid_7series"; then
  echo "7-series simulation failed. See $script_dir/runs/7series/launcher.log"
  status=1
fi

if [[ "$status" -eq 0 ]]; then
  echo "Both simulations completed successfully."
  echo "UltraScale+ logs: $script_dir/runs/usplus"
  echo "7-series logs: $script_dir/runs/7series"
fi

exit "$status"
