<!-- SPDX-FileCopyrightText: 2026 Glen Lowe -->
<!-- SPDX-License-Identifier: Apache-2.0 -->
# HyperBus Controller Theory of Operation

Last updated: 2026-04-08

## Purpose

This document is the definitive source for how the HyperBus / HyperRAM
controller operates.

The architecture narrative, clocking model, transaction flow, and block
responsibilities should be maintained here rather than duplicated elsewhere.

Companion documents are intentionally narrower:

- `README.md`
  - documentation index, reference entry points, and workflow notes
- `doc/system_level_operating_guide.md`
  - checked-in project bring-up, delay tuning, debug workflow, and integration
    procedure
- `doc/hyperbus_phy_design_notes.md`
  - PHY implementation constraints and change checklist

## Scope

This note describes:

- the controller partitioning and data flow
- how AXI-full, AXI-lite, the HB engine, FIFOs, and PHY interact
- how clocks are used across the design
- how a read or write moves through the system
- the intended bring-up and tuning model at a high level

This note does not attempt to replace detailed timing notes, full register
definitions, checked-in project procedures, or primitive-specific integration
rules.

## Top-Level Architecture

The controller is partitioned into five main blocks:

- `rtl/hyperbus_controller.sv`
  - top-level integration only
- `rtl/hyperbus_axi_full_frontend.sv`
  - AXI4-Full slave datapath and burst handling
- `rtl/hyperbus_axi_lite_frontend.sv`
  - AXI4-Lite control and register access path
- `rtl/hyperbus_hb_engine.sv`
  - HyperBus transaction sequencer
- `rtl/hyperbus_phy_xilinx.sv`
  - Xilinx primitive-based physical interface
- `rtl/hyperbus_fifo_bank_xilinx.sv`
  - asynchronous FIFOs used to cross between AXI and HyperBus clock domains

Conceptually, the design separates into three layers:

1. AXI-facing request capture
2. HyperBus-domain transaction execution
3. pin-level PHY transmit/receive logic

The top level exists mainly to connect these layers and expose the software and
pin interfaces.

## Bootloader Handoff

In the checked-in MicroBlaze configuration, the active processor vector base is
fixed at low memory (`XPAR_MICROBLAZE_BASE_VECTORS = 0`). That has an important
software handoff consequence:

- the bootloader is linked with reset, interrupt, and exception vectors at
  `0x0`, `0x8`, `0x10`, and `0x20`
- applications loaded into HyperRAM are linked with their own vector stubs at
  the start of the loaded image, not at low memory
- after a simple jump from the bootloader into the loaded image, the CPU would
  still take interrupts and exceptions through the low-memory vector slots

Because of that, a loaded application that uses interrupts cannot rely on its
own linked vector section becoming active automatically at handoff. The
bootloader must install the application's vector stubs into the active
low-memory vector locations before transferring control.

This was observed directly in bench debug: without that vector handoff step, a
running application could enable its timer interrupt correctly and still fall
back into the bootloader's interrupt exception path, because the CPU continued
to enter the bootloader's low-memory vector stub on the first interrupt.

## Operating Model

The controller accepts host traffic on two interfaces:

- AXI4-Full for burst memory reads and writes
- AXI4-Lite for controller-local registers and HyperRAM register-space access

Both frontends translate accepted requests into an internal command stream. That
command stream is passed through an asynchronous command FIFO into the HyperBus
clock domain. The HB engine then performs the actual HyperBus transaction:

1. assert CS#
2. enable the forwarded HyperBus CK path
3. send command/address (CA)
4. wait through the required latency behavior
5. drive or capture data
6. terminate the transaction cleanly
7. disable CK when the bus returns idle

Data FIFOs decouple the AXI and HyperBus sides:

- write data is buffered from AXI into the write FIFO before or while the HB
  engine consumes it
- read data is captured in the HyperBus domain and pushed into the read FIFO for
  later AXI consumption
- write completion and AXI-lite response FIFOs return completion information to
  the AXI clock domain

This structure lets the design keep AXI protocol handling, HyperBus timing, and
device I/O concerns mostly separate.

## Clocking And Domains

The design is intentionally multi-clock:

- `i_axi_aclk`
  - AXI and software-visible control domain
- `i_hb_clk_200`
  - main HyperBus fabric domain used by the HB engine
- `i_hb_clk_200_samp_90`
  - sample clock for `IDDRE1` capture of DQ and RWDS
- `i_ref_clk_300`
  - `IDELAYCTRL` reference clock
- `i_hb_clk_200_gated`
  - gated transmit clock used only to forward HyperBus CK

An important implementation detail is that the gated HyperBus clock is not
ordinary LUT-gated fabric logic. In the checked-in project, it is a dedicated
clock-wizard output whose CE is driven by the controller. The HB engine requests
CK activity through `o_hb_clk_ce`, and that enable controls whether the forwarded
clock reaches the PHY CK path.

This matters because idle-bus behavior is part of the design intent:

- CK should run only when a transaction is active or when software intentionally
  forces it on for bring-up or tuning
- CS#/CK ordering during startup and termination must be preserved
- extra stray CK pulses are considered a functional error, not just a cosmetic
  issue

## Internal Data And Control Flow

### AXI4-Full Path

The AXI4-Full frontend handles 32-bit data beats and burst traffic. It accepts:

- write address and write data bursts
- read address bursts

For writes:

- accepted AXI write data beats are packed with `WSTRB` and pushed into the write
  FIFO
- once the final beat is accepted, the frontend emits a write command into the
  command FIFO
- malformed `WLAST` handling is detected in the AXI domain and reported back as
  `SLVERR`
- once the final write command segment is queued internally, the AXI frontend can
  return the write response before the HB-side serializer has finished draining
  all payload data to the pins

Because WRAP reads may require the frontend to queue two command entries for one
accepted AXI transaction, the command FIFO `prog_full` threshold is currently
set conservatively so `prog_full` asserts with only three entries remaining.
This is an intentional workaround, not the ideal end-state behavior.

The working theory is that AXI writes can complete back to the host before the
HB side has fully consumed the associated write command and payload stream, so a
run of short consecutive writes could otherwise overrun the command-path margin.
That `3 entries left` setting should therefore be adjusted with care in future
work or in derivative designs.

However, the design intent is still that temporary command FIFO fullness should
be handled correctly. In particular, the second command of a split WRAP
transaction should remain pending and later enqueue successfully once command
FIFO space is available. A WRAP transaction should not be lost solely because
the command FIFO was temporarily busy.

That means the current `prog_full` setting should be viewed as a workaround for
an underlying erratum that still needs future investigation, not as proof that
the split-command / full-FIFO behavior is architecturally solved.

For reads:

- an accepted AXI read request becomes a read command in the command FIFO
- the HB engine performs the external memory read and pushes returned 32-bit data
  beats into the asynchronous read FIFO
- the AXI side prefetches that data into a local AXI-clock read FIFO and then
  generates `RVALID`, `RDATA`, and `RLAST`

If AXI-full read and write commands arrive together, the frontend gives priority
to writes.

The AXI-full slave now enforces that priority at the handshake boundary as well:
it does not leave both `AWREADY` and `ARREADY` preasserted while idle. If the
host presents `AWVALID` and `ARVALID` together, the slave accepts only the write
address in that cycle and leaves the read pending for a later cycle. This avoids
accepting both transactions externally while only one is tracked internally.

### AXI4-Lite Path

The AXI4-Lite frontend is used for:

- controller-local status and control registers
- HyperRAM register-space reads and writes

The AXI-lite path is intentionally conservative. It is single-beat and can apply
backpressure when command-issue resources are busy so AXI-lite traffic does not
collide with AXI-full command generation.

This path is also the software-visible control surface for delay management,
status reporting, debug counters, and the version register.

### FIFO Bank

The FIFO bank isolates the AXI domain from the HyperBus domain. Functionally, the
important point is not the exact FIFO primitive choice but the role of each queue:

- command FIFO carries transaction descriptors into the HB engine
- write FIFO carries AXI write payloads and byte strobes into the HB domain
- read FIFO carries returned read data back to the AXI domain
- local AXI read FIFO decouples async read-data arrival from AXI `R` channel
  return timing
- AXI-lite response FIFO returns AXI-lite read data or completion values

The FIFOs allow the frontend logic and the HB engine to make progress with only
limited cycle-by-cycle coupling.

## HyperBus Transaction Execution

The HB engine is the behavioral core of the controller. It translates internal
commands into HyperBus bus activity.

At a high level, every transaction follows the same structure:

1. Leave idle and assert CS#
2. Enable the CK forwarding path
3. Send the CA sequence
4. Determine and wait through the required latency behavior
5. Transfer write or read data
6. Observe any required RWDS-based completion behavior
7. Hold and terminate CS#/CK in the required order
8. Return to idle and shut CK off

### Command/Address Phase

The engine emits the HyperBus command/address sequence after a request is dequeued
from the command FIFO. This phase defines:

- read versus write
- memory space versus register space
- target address
- transfer length and follow-on data movement

### Latency Handling

The design uses RWDS to help decide the effective latency mode after the CA phase.
That decision determines when read capture or write data movement should begin.

For writes, the engine applies the post-CA wait behavior needed before launching
write data. For reads, the engine waits until returning data is expected and then
qualifies capture using RWDS activity and the aligned internal samples.

Observed-system note:

- In bench and implemented-system debug, HyperRAM read behavior has not always
  matched the simplest datasheet interpretation that RWDS strobes begin only when
  returned data is already valid at the controller capture point.
- In this design, RWDS may begin toggling before the retimed DQ samples are ready
  to be consumed by the HB engine.
- Because of that, the controller should not treat the first post-latency RWDS
  transition as automatically valid data. The read path may need an additional
  post-CA gate interval before RWDS transitions are allowed to qualify read data.
- It is also firmware/software responsibility to avoid HyperRAM accesses until the
  full reset timing window has elapsed. That means software should wait long
  enough to cover both the possible `RESET#` assertion interval and the required
  post-deassert quiet time before issuing any HyperBus transaction.
- There also appears to be a power-on-reset sequencing issue on the actual
  system. After initial boot, the first HyperRAM reset sequence is not always
  sufficient to leave the device in a clean state.
- The observed symptom of that condition was that HyperBus write transactions
  could land at the wrong memory location.
- As a temporary mitigation, the bootloader added a post-load verification step
  after loading the SREC image so that this condition could be detected before
  transferring control.
- A second explicit software-controlled pulse of the HyperRAM `RESET#` pin,
  issued after the initial guard delay, appears to clear the condition. After
  adding that second reset, the misplaced-write behavior has no longer been
  observed in bench testing.
- This is still being treated as an observed-system behavior to monitor, not as
  a fully root-caused hardware explanation.
- In bench and implemented-system debug, the HyperRAM write path also showed
  behavior that was more permissive than the simplest write-latency model.
  The device may sometimes sample write data while still nominally inside the
  latency window.
- Because of that, the controller should not default write-latency RWDS low
  after the initial post-CA undriven interval. The implemented write path drives
  RWDS high during the remaining latency wait and only switches to the active-low
  byte mask when real write data starts.

### Read Transactions

For reads, the engine:

1. issues CA
2. waits through initial latency
3. monitors RWDS and DQ capture
4. assembles read words from the aligned sampled data
5. pushes completed data beats into the read FIFO
6. performs the required termination sequence

Read completion therefore depends on both correct command sequencing and correct
capture alignment.

Observed implementation note:

- The AXI read path now uses a 16-entry local FIFO in the AXI clock domain.
- Before starting the AXI `R` channel for a burst, the frontend prefills that
  local FIFO with up to 8 words, or the full burst if fewer than 8 words are
  required.
- That prefill allows the beginning of a burst to return at one beat per AXI
  clock while the local FIFO is drained and refilled in parallel from the async
  read FIFO.
- For longer bursts, sustained throughput still depends on how quickly the async
  FIFO refill path can keep the local AXI-side FIFO supplied.

### Write Transactions

For writes, the engine:

1. issues CA
2. waits through the required post-CA delay
3. consumes payload beats from the write FIFO
4. drives DQ data and RWDS byte-mask information to the PHY
5. completes the transfer on the HyperBus pins

The byte-lane mask carried in AXI `WSTRB` is preserved through the internal path
and converted into the active-low HyperBus RWDS mask convention at write time.

## PHY Operation

The PHY is intentionally narrow in responsibility. It does not decide transaction
policy. It converts engine-level transmit and receive controls into pin activity
using Xilinx primitives.

### CK Forwarding

The outgoing HyperBus clock path is:

1. gated transmit clock input
2. `ODDRE1` generating a forwarded `1010...` clock pattern
3. `ODELAYE3` shifting CK timing
4. `OBUF` driving `o_hb_ck_p`

The current design uses single-ended CK mode:

- `o_hb_ck_p` is the real forwarded clock
- `o_hb_ck_n` is held low

### DQ And RWDS I/O

For transmit:

- `ODDRE1` launches DDR data
- `IOBUF` controls direction and tri-state behavior

For receive:

- `IOBUF` receives DQ and RWDS from the pads
- `IDELAYE3` provides programmable input delay on both DQ and RWDS receive paths
- `IDDRE1` samples the delayed DQ and RWDS signals on the 90-degree sample clock
- the PHY exports the raw sampled values directly

The PHY therefore captures bits, but it does not perform the final read-path
alignment needed for transaction-level correctness.

## Read-Path Alignment Philosophy

One of the most important design choices is that read alignment lives in the HB
engine, not in the PHY.

The PHY exports raw `IDDRE1` capture results for DQ and RWDS. The HB engine then
delays and aligns those samples before using them to:

- build returned read words
- decide when read data is valid
- expose meaningful debug taps

This separation keeps the PHY primitive-oriented and lets the engine own the
transaction-level interpretation of sampled data. It also means that a read
failure can come from either:

- no valid external response at all, or
- a valid response that is being sampled or aligned incorrectly

That distinction is why CK delay tuning and RWDS delay tuning are central to
bring-up.

## Software Bring-Up And Calibration Model

From a theory-of-operation standpoint, software bring-up follows a simple logic:

1. make sure clocks and resets are valid
2. initialize delay-control hardware
3. confirm basic register access through AXI-lite
4. tune CK so commands are launched into a stable timing region
5. tune RWDS so read capture lands in a stable timing region
6. only then rely on larger AXI-full memory traffic

The reason for this ordering is structural:

- command launch quality depends strongly on CK timing
- successful reads depend on both command launch and capture alignment
- a design can appear partially alive, especially on writes, while still having a
  marginal read sample point

The `HB_CLK_CE_FORCE` control exists because the forwarded CK path may need to be
held on during delay stepping, calibration, or debug even when no normal memory
transaction is in flight.

## Debug View Of The Design

When debugging the controller, it is useful to think in layers:

- if CS# and CK never behave correctly, the issue is likely in command launch,
  clock enable, or top-level integration
- if CK and CS# look active but RWDS never responds, the issue is more likely
  device response, CK timing, or gross sample-point placement
- if RWDS responds but data is wrong, the issue is more likely read alignment,
  DQ timing, or delay tuning

The existing debug outputs and status registers support exactly that layered view:

- control-path observability around CS#, CK enable, and I/O direction
- sample observability around delayed DQ and RWDS capture
- status visibility for timeout and delay-control state

## Design Intent Summary

The controller is designed around a clean division of responsibility:

- frontends enforce AXI behavior and create internal requests
- FIFOs isolate clock domains and decouple timing
- the HB engine owns transaction sequencing and protocol timing
- the PHY owns primitive-level pin driving and sampling
- software-visible controls exist mainly to support bring-up, delay tuning, and
  debug of the external interface

The most important behavioral intent to preserve in future changes is:

- AXI semantics stay local to the frontends
- HyperBus sequencing stays local to the HB engine
- primitive-specific I/O behavior stays local to the PHY
- CK gating remains deliberate and glitch-free at the architectural level
- read-path alignment remains explicitly understood, not implicit

## Related Documents

- `README.md`
  - documentation index, testbench notes, software API summary, packaging flow
- `doc/system_level_operating_guide.md`
  - checked-in project clock-source table, bring-up order, delay workflow, debug
    guide
- `doc/hyperbus_phy_design_notes.md`
  - PHY implementation contract, reset/clock assumptions, integration checklist
- `doc/hb_dq_input_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_timing.md`
- `doc/hb_dq_vs_hb_ck_p_output_relative_timing.md`
- `doc/odelaye3_SUP.md`
