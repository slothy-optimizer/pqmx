<!--
Copyright (c) The pqmx project authors
Copyright (c) The mlkem-native project authors
Copyright (c) Arm Ltd.
SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT
-->

# NUCLEO-N657X0-Q Baremetal Platform

This environment runs pqmx tests on the ST NUCLEO-N657X0-Q board (STM32N657X0,
Cortex-M55, Armv8.1-M + MVE) using a Nix-provided OpenOCD backend. The board is
never flashed to ROM: a FLEXMEM configuration binary is downloaded into RAM,
and test binaries are loaded into RAM with GDB `load`.

The platform's Cube headers and HAL/clock/startup sources are provided by the
`stm32cuben6` nix package (which exports `NUCLEO_N657X0_Q_PATH`). The patched
OpenOCD with STM32N6 target support is provided by the `st-openocd` nix package.

## Required Workflow

STM32N657X0 starts with 64 KiB ITCM and 128 KiB DTCM. Tests require 256 KiB
ITCM and 256 KiB DTCM, so the flow uses a deterministic two-binary sequence.
Both binaries are loaded into RAM; nothing is written to flash.

1. Start OpenOCD for the FLEXMEM stage with connect-under-reset enabled.
2. Load `flexmem_config.elf` into the default reset-time RAM layout, set
   `MSP=<_estack>` and `PC=<main|1>`, run it, poll `SYSCFG->CM55TCMCR` at
   `0x56008008` until `(value & 0xff) == 0x99`, then `reset run` so the
   expanded layout is latched.
3. Start a fresh OpenOCD runtime GDB server without connect-under-reset.
4. GDB `load`s the test ELF into the expanded ITCM/DTCM layout and starts it
   from `Reset_Handler`.
5. C startup clears `.bss`; GDB stops at `__wrap_main`, which initializes the
   runtime (cache, clock, FLEXMEM layout check, RAM stdout capture) and calls
   the real test `main`.
6. The wrapper continues execution, dumps the RAM stdout capture buffer, and
   treats the run as successful if the captured output contains the pqmx
   `ALL GOOD!` marker.

Unlike the mlkem-native backend this was ported from, pqmx tests take no argv
and use no numeric exit sentinel; success is signalled by the `ALL GOOD!`
marker that pqmx tests print (see `tests/*/main.c`).

## Connection

The host tools connect to the board through the on-board debug probe using
SWD. OpenOCD uses `interface/stlink.cfg`, `target/stm32n6x.cfg`,
`transport select swd`, and `adapter speed ${OPENOCD_SPEED:-8000}` by default.

```
export OPENOCD_SPEED=8000
export OPENOCD_SERIAL=<optional-probe-serial>
export GDB_PORT=3333
```

`OPENOCD`, `OPENOCD_INTERFACE`, `OPENOCD_TARGET`, and `OPENOCD_TRANSPORT` can
override the executable, script names, and transport. `GDB`, `NM`, and
`READELF` can override the binary utilities.

## Prerequisites

- A NUCLEO-N657X0-Q connected over USB.
- The board devshell, which provides `arm-none-eabi-gdb` and the pinned
  `st-openocd` package:

```
nix develop .#nucleo-n657x0-q
```

Stock OpenOCD 0.12.0 is not sufficient for this board; `st-openocd` pins an
upstream snapshot with native debug-probe support and `target/stm32n6x.cfg`.

## Build

Build a RAM-only test ELF (e.g. helloworld) from the repository root:

```
make build-nucleo-n657x0-q_helloworld
```

The build only requires `NUCLEO_N657X0_Q_PATH` (provided by the default
`nix develop` shell as well as the `.#nucleo-n657x0-q` shell), so CI can build
and `check` this platform without a board. `check` returns SKIP because there
is no emulator for this target.

## Flash / Run on hardware

Drive the full deterministic sequence on a connected board from the
`.#nucleo-n657x0-q` devshell:

```
make flash-nucleo-n657x0-q_helloworld
```

This builds the test ELF and the FLEXMEM config ELF, expands FLEXMEM, then
RAM-loads and runs the test, harvesting its stdout. Or run each stage
explicitly from this directory:

```
make flexmem_config TARGET=helloworld-test.elf
cd host && python3 flexmem_configure.py ../build/helloworld-test.elf/flexmem_config.elf
cd host && python3 run_test.py ../helloworld-test.elf
```

`run_test.py` re-runs FLEXMEM configuration and retries once if the GDB `load`
fails before target output, or if the target enters `HardFault_Handler`. Set
`GDB_LOAD_FAILURE_RECOVERY_ATTEMPTS` / `GDB_HARDFAULT_RECOVERY_ATTEMPTS` to
adjust or disable these.

## Memory Layout

`linker/flexmem_config_default.ld` is used only by the config binary:

- vector/code: SRAM available in the default reset layout
- data/stack: default 128 KiB DTCM
- no flash memory regions or flash LMAs

`linker/ram_secure.ld` is used by tests after the FLEXMEM reset has applied:

- vector table and executable sections: expanded 256 KiB ITCM at `0x00000000`
- `.data`, `.bss`: expanded 256 KiB DTCM at `0x30000000`
- stdout capture: AXI SRAM at `0x34080000`
- stack: top 240 KiB of DTCM, with `_estack = 0x30040000`
- no flash memory regions or flash LMAs

Tests with very large static data (e.g. `ntt-dilithium`, `toom`, the combined
`ntt-1024/all`) do not fit this RAM-only layout and are intentionally not built
for this platform.

## Layout Validation

Each test binary links `flexmem_layout_check.c` and calls it before the test.
It fails with a breakpoint if either expanded region is unavailable:

- executes `nucleo_itcm_above_default_probe()` from `.itcm_probe` placed beyond
  the default 64 KiB ITCM boundary
- writes and reads address `0x30020000`, beyond the default 128 KiB DTCM
  boundary

This proves the flow loaded the test after FLEXMEM configuration and reset.
Actual pass/fail execution remains hardware-dependent on the connected board,
probe firmware, and OpenOCD behavior.

## Notes

- Use OpenOCD plus `arm-none-eabi-gdb` only; no debugger GUI flows.
- Do not run a test binary directly on a freshly reset board; it links into
  expanded ITCM/DTCM that does not exist until after `flexmem_config.elf` and
  reset.
- Target output uses normal libc/newlib `printf` paths linked with
  `--specs=rdimon.specs -lc -lrdimon`; the platform `_write` captures
  stdout/stderr into a RAM buffer for GDB to harvest, because raw semihosting
  `bkpt 0xab` syscalls are not reliable on this board.
