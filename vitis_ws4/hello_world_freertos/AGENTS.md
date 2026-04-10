# hello_world_freertos Agent Notes

This file applies to work under `vitis_ws4/hello_world_freertos/`.

## Scope

- `src/` contains the source of truth for this application.
- `build/` contains generated artifacts only.

## Application Structure

Current major tasks:

- `prvHelloTask`
- `Cli_Task`
- `Cli_RxMsgQTask`
- `UartTxMsgQTask`
- `UartRxMsgQTask`

The CLI is split into:

- byte-stream frontend in `Cli_RxMsgQTask`
- line queue / parser in `Cli_Task`

Do not collapse those roles unless the task explicitly requires a redesign.

## UART Queue Design

UART traffic is mediated by two message queues:

- `UartTxMsgQ`
- `UartRxMsgQ`

Each queue currently holds:

- `64` entries
- `128` bytes per entry

Keep queue depth / entry size changes deliberate because they affect task blocking,
latency, and RAM use.

## e_uart Behavior

This application currently uses direct MMIO access to `e_uart` registers from
application code.

Important current design choices:

- TX path prefers 32-bit FIFO writes and uses byte writes for the tail
- RX path currently reads bytes one at a time from the RX byte FIFO
- `TX_FIFO_ALMOST_EMPTY` is not left enabled by default
- `RX_TIME_COALESCE` is not left enabled by default
- both interrupt sources are armed on demand by the owning task, then masked
  again in the ISR

Preserve that one-shot interrupt-arm behavior unless the task explicitly asks
for a different policy.

## CLI Behavior

Current CLI properties:

- `CLI_INPUT_BUFFER_SIZE` is `96`
- command history depth is `8`
- up-arrow is `ESC [ A`
- down-arrow is `ESC [ B`
- selected history entries are copied into a live edit buffer
- editing a recalled command does not mutate stored history until carriage return

CLI output currently goes through `UartTxMsgQ`, not directly through `xil_printf`.

When modifying CLI behavior:

- keep terminal-style echo behavior coherent
- ensure redraw logic still works for history navigation
- preserve the distinction between submitted command history and the temporary
  edit buffer unless intentionally changing that model

## Build / Verification

Preferred verification for this subtree:

- rebuild with:
  - `cmake --build vitis_ws4/hello_world_freertos/build`

If application runtime behavior is changed but not hardware-tested, say so
explicitly.

## Generated Artifacts

Generated outputs include:

- `build/hello_world_freertos.elf`
- optional SREC / flash payload files if those flows are run

Do not hand-edit generated files under `build/`.
