#!/usr/bin/env bash
set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
repo_root="$(cd "${script_dir}/.." && pwd)"

write_file() {
    local path="$1"
    shift
    cat > "${path}" <<EOF
$*
EOF
}

write_file "${script_dir}/bootloader/src/app.yaml" "domain_path: ${repo_root}/vitis_ws4/platform/export/platform/sw/standalone_microblaze_0
app_src_dir: ${repo_root}/vitis_ws4/bootloader/src
template: empty_application
lang: c"

write_file "${script_dir}/bootloader_hdio/src/app.yaml" "domain_path: ${repo_root}/vitis_ws4/platform/export/platform/sw/standalone_microblaze_0
app_src_dir: ${repo_root}/vitis_ws4/bootloader_hdio/src
template: empty_application
lang: c"

write_file "${script_dir}/hello_world/src/app.yaml" "domain_path: ${repo_root}/vitis_ws4/platform/export/platform/sw/standalone_microblaze_0
app_src_dir: ${repo_root}/vitis_ws4/hello_world/src
template: empty_application
lang: c"

write_file "${script_dir}/hello_world_freertos/src/app.yaml" "domain_path: ${repo_root}/vitis_ws4/platform_freertos/export/platform_freertos/sw/standalone_microblaze_0
app_src_dir: ${repo_root}/vitis_ws4/hello_world_freertos/src
template: empty_application
lang: c"

python3 - "${repo_root}" <<'PY'
import json
import pathlib
import sys

repo_root = pathlib.Path(sys.argv[1])
script_dir = repo_root / "vitis_ws4"

def write_json(path, update):
    data = json.loads(path.read_text())
    update(data)
    path.write_text(json.dumps(data, indent=2) + "\n")

write_json(
    script_dir / "platform" / "vitis-comp.json",
    lambda data: data["configuration"].__setitem__(
        "xsa", str(repo_root / "vivado_projects" / "hyperbus_test_proj" / "design_1_wrapper.xsa")
    ),
)

write_json(
    script_dir / "platform_freertos" / "vitis-comp.json",
    lambda data: data["configuration"].__setitem__(
        "xsa", str(script_dir / "platform_freertos" / "export" / "platform_freertos" / "hw" / "design_1_wrapper.xsa")
    ),
)
PY

python3 - "${repo_root}" <<'PY'
import pathlib
import sys

repo_root = pathlib.Path(sys.argv[1])
script_dir = repo_root / "vitis_ws4"

updates = {
    script_dir / "platform" / "microblaze_0" / "standalone_microblaze_0" / "bsp" / "bsp.yaml":
        f"path: {repo_root / 'vitis_ws4' / 'platform' / 'microblaze_0' / 'standalone_microblaze_0' / 'bsp'}",
    script_dir / "platform_freertos" / "microblaze_0" / "standalone_microblaze_0" / "bsp" / "bsp.yaml":
        f"path: {repo_root / 'vitis_ws4' / 'platform_freertos' / 'microblaze_0' / 'standalone_microblaze_0' / 'bsp'}",
    script_dir / "platform_freertos" / "export" / "platform_freertos" / "sw" / "standalone_microblaze_0" / "bsp.yaml":
        f"path: {repo_root / 'vitis_ws4' / 'platform_freertos' / 'microblaze_0' / 'standalone_microblaze_0' / 'bsp'}",
}

for path, replacement in updates.items():
    lines = path.read_text().splitlines()
    lines[2] = replacement
    path.write_text("\n".join(lines) + "\n")
PY
