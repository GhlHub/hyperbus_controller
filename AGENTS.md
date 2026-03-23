# HyperBus AI3 Agent Guide

This repository contains a HyperBus / HyperRAM controller, testbench, software utilities, packaged IP, and checked-in Vivado project artifacts.

## Repository Layout

- `rtl/`: hand-edited source RTL. This is the primary source of truth for the controller logic.
- `tb/`: simulation testbench and AXI helper/check files.
- `software/`: shared software-side helpers and test code.
- `vitis_ws3/hello_world/src/`: Vitis app copy of selected software sources.
- `ip_repo/hyperbus_controller/src/`: packaged IP source mirror generated from `rtl/`.
- `vivado_projects/hyperbus_test_proj/`: checked-in Vivado block design and project artifacts.
- `doc/`: design notes, timing notes, diagrams, scripts, and supporting documentation.

## Source Of Truth

- Treat `rtl/` as the canonical implementation source.
- Treat `ip_repo/hyperbus_controller/src/` as generated output that must be refreshed after RTL changes.
- If a top-level IP interface changes, the consuming Vivado artifacts under `vivado_projects/hyperbus_test_proj/` may also need regeneration.
- Do not assume checked-in `.bd`, `.xci`, `.ui`, or project files are automatically in sync with the RTL.

## Design Assumptions

- The AXI-full slave supports 32-bit beats only.
- WRAP burst support is required.
- AXI-full addresses are handled as word-aligned for controller access; low address bits `[1:0]` are masked to zero in the frontend.
- AXI byte-lane masking is carried through `WSTRB` and converted to active-low HyperBus `RWDS` byte masks.
- The forwarded HyperBus CK design intent is `200 MHz` when enabled. Distinguish that from any separate internal clocking or mistaken divide-by-two assumptions.
- AXI-full writes are posted once the final write-command segment is accepted into the internal command path; `BVALID` does not imply the HyperBus pins have finished draining the payload.
- The AXI-Lite frontend contains the visible controller version register. Bump it when making externally visible HW/SW interface changes.

## Editing Rules

- Preserve SPDX headers.
- Use ASCII unless a file already requires another encoding.
- Do not hand-edit generated Vivado metadata unless the task specifically requires it.
- Prefer small, scoped changes. Keep RTL/IP packaging, project-artifact updates, docs, and software changes in separate commits when practical.
- Never revert or discard unrelated user changes.

## Required Sync Steps

After modifying controller RTL:

1. Update the corresponding packaged IP under `ip_repo/hyperbus_controller/`.
2. If interfaces changed, refresh any affected block-design artifacts under `vivado_projects/hyperbus_test_proj/`.
3. If the software-visible register map or version changed, update the matching software headers and relevant docs.

## Verification Expectations

- For RTL behavior changes, run the most relevant simulation available.
- For IP packaging changes, rerun the Vivado packaging flow and confirm `ip_repo/hyperbus_controller/src/` matches `rtl/` where appropriate.
- For byte-mask, wrap, or address-alignment changes, inspect the AXI-full testbench coverage in `tb/` and the simulation logs under `sim_m/xsim/` when available.
- For AXI write-response timing changes, verify overlap behavior: AXI-full and AXI-Lite traffic should still be accepted while a prior AXI-full write is draining from `wr_fifo`.
- If you do not run verification, state that explicitly.

## Repo-Specific Workflow Notes

- Documentation assets are organized under `doc/`:
  - `doc/dot/` for Graphviz sources
  - `doc/jpg/` for generated images
  - `doc/pdf/` for PDFs
  - `doc/py/` for documentation helper scripts
- `doc/theory_of_operation.md` is the canonical narrative for controller behavior and architecture; companion docs should link to it rather than restating the same theory-of-operation material.
- Some files under `vivado_projects/` and Vitis output trees are generated artifacts. Update them only when the task calls for it.
- Ignore scratch files, swap files, simulator leftovers, and other unrelated untracked files unless asked to clean them up.

## Common Tasks

- Refresh packaged IP after RTL changes.
- Keep `software/` and `vitis_ws3/hello_world/src/` copies aligned when shared helpers are modified.
- Update documentation when behavior, interfaces, or debug visibility changes.
- When reporting implementation facts, distinguish between RTL intent and implemented-design results.
