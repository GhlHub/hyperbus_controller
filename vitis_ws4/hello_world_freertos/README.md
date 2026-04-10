# hello_world_freertos

This directory contains the FreeRTOS-based MicroBlaze application used with the
HyperBus test design.

## Layout

- `src/`: application sources, linker script, and app metadata
- `build/`: generated build output such as `hello_world_freertos.elf`

The app is built from:
- [src/CMakeLists.txt](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/CMakeLists.txt)
- [src/app.yaml](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/app.yaml)

## Current Runtime Structure

Important tasks in the current application:

- `prvHelloTask`
  - periodic demo/status print task
- `Cli_Task`
  - consumes complete command lines and dispatches the CLI parser
- `Cli_RxMsgQTask`
  - consumes UART RX message-queue entries, assembles lines, handles command history, and calls `Cli_SubmitLine()`
- `UartTxMsgQTask`
  - consumes UART TX message-queue entries and pushes data to `e_uart`
- `UartRxMsgQTask`
  - drains the `e_uart` RX FIFO into `UartRxMsgQ`

## UART Message Queues

The UART path uses two FreeRTOS queues defined in:
- [src/UartMsgQ.h](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/UartMsgQ.h)
- [src/UartMsgQ.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/UartMsgQ.c)

Queue properties:

- `UartTxMsgQ`
  - `64` entries
  - each entry holds up to `128` bytes
- `UartRxMsgQ`
  - `64` entries
  - each entry holds up to `128` bytes

Nominal payload capacity per queue is `8192` bytes.

### Transmit flow

- CLI and any future producers enqueue text/data into `UartTxMsgQ`
- `UartTxMsgQTask` checks `e_uart` TX FIFO occupancy
- it writes at most the currently available space
- it prefers 32-bit TX FIFO writes and uses byte writes only for the tail
- if data remains, it enables `TX_FIFO_ALMOST_EMPTY`, then blocks on a task notification
- the UART ISR masks `TX_FIFO_ALMOST_EMPTY` and wakes `UartTxMsgQTask`

Important note:
- `TX_FIFO_ALMOST_EMPTY` is not enabled continuously
- it is armed only on demand when the TX task actually needs more FIFO space

### Receive flow

- `UartRxMsgQTask` drains the hardware RX FIFO into `UartRxMsgQ` in chunks up to one queue entry
- once the RX FIFO is empty, it enables `RX_TIME_COALESCE` and blocks on a task notification
- the UART ISR masks `RX_TIME_COALESCE` and wakes `UartRxMsgQTask`

Important note:
- `RX_TIME_COALESCE` is also demand-armed
- it is enabled only when the RX task has drained the FIFO and is waiting for more data

## CLI Behavior

The CLI implementation lives in:

- [src/cli.h](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/cli.h)
- [src/cli.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/cli.c)
- [src/cli_common.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/cli_common.c)
- [src/cli_mem.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/cli_mem.c)

Current command set:

- `help`
- `mr <addr> [count]`
- `mw <addr> <value>`

### Input path

- `Cli_RxMsgQTask` blocks on `UartRxMsgQ`
- incoming RX bytes are buffered until carriage return
- carriage return submits the buffered line to `Cli_SubmitLine()`
- `Cli_Task` receives the line and dispatches it through the command table

### Echo behavior

- printable typed characters are echoed immediately
- backspace/delete updates the local edit buffer and echoes `"\b \b"`
- carriage return echoes `"\r\n"` before the command is submitted

### Command history

- up to `8` command history entries are stored
- `ESC [ A` selects older history entries
- `ESC [ B` selects newer history entries
- history navigation redraws the prompt and selected command in place without printing a line feed
- history selection loads a working copy into the current edit buffer
- subsequent typing or backspace edits only the working copy on screen
- the stored history entry is not modified during editing
- when carriage return is pressed, the edited command is submitted and then stored as a new history entry

## CLI Output Path

CLI output no longer writes directly through `xil_printf`.

Current behavior in [src/cli_common.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/cli_common.c):

- `Cli_Print()`
- `Cli_Printf()`
- `Cli_PrintPrompt()`

all enqueue text into `UartTxMsgQ`.

That means:

- CLI output is asynchronous
- the UART TX task owns the actual MMIO writes to `e_uart`
- `Cli_Flush()` is currently a no-op for CLI output

Non-CLI code may still use `xil_printf` directly. That output continues to use the
`e_uart` console backend in [src/euart_console.c](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/src/euart_console.c).

## e_uart Notes

The application currently uses `e_uart` through direct MMIO register access for
queue-driven TX/RX handling.

Interrupt usage in the application is intentionally narrow:

- TX wakeup uses `TX_FIFO_ALMOST_EMPTY`
- RX wakeup uses `RX_TIME_COALESCE`

The ISR is installed before the scheduler starts, but the UART interrupt mask is
initialized to zero. Individual interrupt sources are enabled later by the
relevant task only when needed.

## Boot / Vectors

This application is intended to be loaded by the bootloader into HyperRAM.

Important system-level note:
- MicroBlaze vectors are active at low memory in this design
- the bootloader must install the loaded application's vector stubs into the
  low-memory vector slots before transfer

That handoff behavior is handled in the bootloader, not in this application.

## Generated Artifacts

Common generated outputs are expected under:

- [build/hello_world_freertos.elf](/raid/work/hyperbus_controller_freertos_port/vitis_ws4/hello_world_freertos/build/hello_world_freertos.elf)
- optional converted images such as SREC or flash payload files when those flows are run

These artifacts are generated from the sources in `src/` and are not the source of truth.
