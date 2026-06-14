#!/usr/bin/env python3
# SPDX-License-Identifier: Apache-2.0

"""
Run one RAM-resident NUCLEO-N657X0-Q test ELF through OpenOCD + GDB.

The wrapper expects ``flexmem_configure.py`` to have expanded ITCM/DTCM before
normal runs. It loads the test ELF into the expanded RAM layout, lets C startup
clear memory, runs the test, harvests the RAM stdout capture buffer, and prints
it. The test is considered successful when the captured output contains the
pqmx "ALL GOOD!" marker.

If the initial GDB ``load`` reports a failure before target output, or the
target enters ``HardFault_Handler``, the wrapper can re-run FLEXMEM
configuration and retry the same ELF, controlled by the recovery environment
variables documented in the env README.
"""

import logging
import os
import select
import subprocess
import sys
import tempfile
import time

from nucleo_host.flexmem import flexmem_config_build_instructions
from nucleo_host.gdb_script import build_run_script
from nucleo_host.openocd_tools import find_openocd
from nucleo_host.openocd_tools import runtime_gdbserver_cmd
from nucleo_host.openocd_tools import serial_from_env
from nucleo_host.openocd_tools import speed_khz_from_env
from nucleo_host.openocd_tools import transport_from_env
from nucleo_host.results import LAYOUT_FAIL_SENTINEL
from nucleo_host.results import fault_info_from_gdb
from nucleo_host.results import gdb_load_failed_before_target_output
from nucleo_host.results import gdb_observed_hardfault
from nucleo_host.results import output_indicates_success
from nucleo_host.symbols import default_readelf
from nucleo_host.symbols import resolve_symbol

VERBOSE = False
TARGET_FAILURE_KIND = ""
LAST_CAPTURED_OUTPUT = ""
LOG = logging.getLogger(__name__)


def configure_logging():
    """Configure process-wide logging after ``VERBOSE`` has been parsed."""
    level = logging.DEBUG if VERBOSE else logging.INFO
    logging.basicConfig(level=level, format="%(message)s")


def log_output(output, level=logging.INFO):
    """Log multiline subprocess output one line at a time."""
    if not output:
        return
    for line in str(output).rstrip().splitlines():
        LOG.log(level, "%s", line)


def err(msg):
    """Report an error message regardless of verbose mode."""
    log_output(msg, logging.ERROR)


def info(msg):
    """Report an informational message only in verbose mode."""
    if VERBOSE:
        LOG.debug("%s", msg)


def run(cmd, **kwargs):
    """Thin wrapper around ``subprocess.run`` for test-time monkeypatching."""
    return subprocess.run(cmd, **kwargs)


def popen(cmd, **kwargs):
    """Wrap ``subprocess.Popen`` for test-time monkeypatching."""
    return subprocess.Popen(cmd, **kwargs)


def _default_flexmem_config_elf() -> str:
    """Return the default build path for the FLEXMEM configuration ELF."""
    env_dir = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
    target = os.environ.get("TARGET", "")
    return os.path.join(env_dir, "build", target, "flexmem_config.elf")


def _recover_flexmem(reason: str) -> bool:
    """Re-run FLEXMEM after a retryable setup or target failure."""
    configure_script = os.path.join(os.path.dirname(__file__), "flexmem_configure.py")
    config_elf = os.environ.get("FLEXMEM_CONFIG_ELF", _default_flexmem_config_elf())

    if not os.path.exists(configure_script):
        err(f"FLEXMEM configure script not found: {configure_script}")
        return False
    if not os.path.exists(config_elf):
        err(f"FLEXMEM config ELF not found: {config_elf}")
        err(flexmem_config_build_instructions(config_elf))
        return False

    info(f"[run_test] recovering from {reason}: re-running FLEXMEM config")
    cp = run(
        [sys.executable, configure_script, config_elf],
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        text=True,
        env=os.environ.copy(),
    )
    if cp.returncode != 0:
        err(f"FLEXMEM reconfiguration after {reason} failed")
        log_output(cp.stdout, logging.ERROR)
        return False
    if VERBOSE:
        log_output(cp.stdout, logging.DEBUG)
    return True


def _run_once(elf):
    """Run the target ELF once and return its wrapper exit code."""
    global TARGET_FAILURE_KIND
    global LAST_CAPTURED_OUTPUT
    TARGET_FAILURE_KIND = ""
    LAST_CAPTURED_OUTPUT = ""

    gdb = os.environ.get("GDB", "arm-none-eabi-gdb")
    nm = os.environ.get("NM", "arm-none-eabi-nm")
    readelf = os.environ.get("READELF", default_readelf())
    port = int(os.environ.get("GDB_PORT", "3333"))
    gdb_run_timeout = float(os.environ.get("GDB_RUN_TIMEOUT", "180"))

    def _sym(sym):
        return resolve_symbol(elf, sym, nm=nm, readelf=readelf)

    wrap_main_addr = _sym("__wrap_main")
    wrap_main_break = f"*{wrap_main_addr}" if wrap_main_addr else "__wrap_main"

    reset_handler_addr = _sym("Reset_Handler")
    if reset_handler_addr is None:
        err("Failed to resolve Reset_Handler in ELF.")
        return 2
    reset_handler_jump = f"*{hex(int(reset_handler_addr, 16) | 1)}"

    stdout_capture_addr = _sym("nucleo_stdout_capture")
    stdout_capture_len_addr = _sym("nucleo_stdout_capture_len")
    stdout_capture_truncated_addr = _sym("nucleo_stdout_capture_truncated")
    stdout_capture_size = int(
        os.environ.get("NUCLEO_STDOUT_CAPTURE_SIZE", str(1536 * 1024))
    )

    with tempfile.TemporaryDirectory() as td:
        stdout_capture_bin = os.path.join(td, "stdout-capture.bin")
        openocd = find_openocd(os.environ.get("OPENOCD", ""))
        if openocd is None:
            err("OpenOCD not found; set OPENOCD or ensure openocd is on PATH")
            return 2

        gdbserver_cmd = runtime_gdbserver_cmd(
            openocd=openocd,
            port=port,
            speed=speed_khz_from_env(),
            serial=serial_from_env(),
            transport=transport_from_env(),
        )

        info(f"[run_test] starting OpenOCD on port {port}...")
        stp = popen(
            gdbserver_cmd,
            stdout=subprocess.PIPE,
            stderr=subprocess.STDOUT,
            text=True,
            bufsize=1,
            universal_newlines=True,
        )

        gdb_script_path = None
        try:
            time.sleep(0.8)
            if stp.poll() is not None:
                out_rem = stp.stdout.read() if stp.stdout else ""
                if out_rem:
                    log_output(out_rem, logging.ERROR)
                return 2

            gdb_lines = build_run_script(
                port=port,
                wrap_main_break=wrap_main_break,
                reset_handler_jump=reset_handler_jump,
                stdout_capture_addr=stdout_capture_addr,
                stdout_capture_len_addr=stdout_capture_len_addr,
                stdout_capture_truncated_addr=stdout_capture_truncated_addr,
                stdout_capture_size=stdout_capture_size,
                stdout_capture_bin=stdout_capture_bin,
            )

            if VERBOSE:
                LOG.debug("============ GDB SCRIPT ============")
                log_output("\n".join(gdb_lines), logging.DEBUG)
                LOG.debug("====================================")

            with tempfile.NamedTemporaryFile("w", delete=False, suffix=".gdb") as gs:
                for line in gdb_lines:
                    gs.write(line + "\n")
                gdb_script_path = gs.name

            gdb_cmd = [gdb, "--batch", "-x", gdb_script_path, elf]
            info("[run_test] running gdb batch")
            gdbp = popen(
                gdb_cmd,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                text=True,
            )
            gdb_deadline = time.time() + gdb_run_timeout if gdb_run_timeout > 0 else None

            while True:
                if stp.stdout is not None:
                    try:
                        r, _, _ = select.select([stp.stdout], [], [], 0.1)
                        if r:
                            line = stp.stdout.readline()
                            if line and VERBOSE:
                                log_output(line, logging.DEBUG)
                    except Exception:
                        pass
                if gdbp.poll() is not None:
                    break
                if gdb_deadline is not None and time.time() > gdb_deadline:
                    err("FAIL!")
                    err(f"gdb batch timed out after {gdb_run_timeout:.0f}s")
                    try:
                        gdbp.terminate()
                        gdbp.wait(timeout=1.0)
                    except Exception:
                        try:
                            gdbp.kill()
                        except Exception:
                            pass
                    return 124

            out, errout = gdbp.communicate()
            if out and VERBOSE:
                log_output(out, logging.DEBUG)
            if errout and VERBOSE:
                err(errout)

            gdb_text = f"{out}\n{errout}"
            layout_failed = LAYOUT_FAIL_SENTINEL in gdb_text
            hardfaulted = gdb_observed_hardfault(gdb_text)

            captured_output = ""
            if os.path.exists(stdout_capture_bin):
                try:
                    with open(stdout_capture_bin, "rb") as capture_file:
                        captured_output = capture_file.read().decode(
                            "utf-8", errors="replace"
                        )
                except Exception as exc:
                    info(f"[run_test] failed to read stdout capture: {exc}")

            LAST_CAPTURED_OUTPUT = captured_output

            if "$nucleo_stdout_truncated = 0x1" in gdb_text:
                err("WARNING: target stdout capture truncated")

            if layout_failed:
                TARGET_FAILURE_KIND = "layout"
                err("FAIL!")
                err("FLEXMEM layout check failed on target")
                return 1

            if hardfaulted:
                TARGET_FAILURE_KIND = "hardfault"
                err("FAIL!")
                err("Target entered HardFault_Handler")
                fault_info = fault_info_from_gdb(gdb_text)
                if fault_info:
                    err(fault_info)
                return 1

            target_output_observed = bool(captured_output.strip())
            if gdbp.returncode != 0 and gdb_load_failed_before_target_output(
                gdb_text, target_output_observed=target_output_observed
            ):
                TARGET_FAILURE_KIND = "load-failed"
                return gdbp.returncode

            # Emit captured target output for the caller (e.g. the make check
            # target greps it for the success marker).
            if captured_output:
                sys.stdout.write(captured_output)
                if not captured_output.endswith("\n"):
                    sys.stdout.write("\n")
                sys.stdout.flush()

            if output_indicates_success(captured_output):
                return 0

            err("FAIL!")
            err("target output did not contain success marker 'ALL GOOD!'")
            return 1

        finally:
            try:
                stp.terminate()
                stp.wait(timeout=1.5)
            except Exception:
                try:
                    stp.kill()
                except Exception:
                    pass
            if gdb_script_path:
                try:
                    os.unlink(gdb_script_path)
                except Exception:
                    pass


def main():
    """Run the wrapper with the configured FLEXMEM retry policy."""
    global VERBOSE

    argv = sys.argv[1:]
    if "--verbose" in argv:
        VERBOSE = True
        argv.remove("--verbose")
    if "-v" in argv:
        VERBOSE = True
        argv.remove("-v")

    configure_logging()

    if len(argv) < 1:
        err("Usage: run_test.py [--verbose] <ELF>")
        return 2

    elf = os.path.abspath(argv[0])
    if not os.path.exists(elf):
        err(f"ELF not found: {elf}")
        return 2

    hardfault_attempts = max(
        0, int(os.environ.get("GDB_HARDFAULT_RECOVERY_ATTEMPTS", "1"))
    )
    load_failure_attempts = max(
        0, int(os.environ.get("GDB_LOAD_FAILURE_RECOVERY_ATTEMPTS", "1"))
    )
    hardfault_recoveries = 0
    load_failure_recoveries = 0

    while True:
        last_rc = _run_once(elf)
        if last_rc == 0:
            return 0

        if (
            TARGET_FAILURE_KIND == "load-failed"
            and load_failure_recoveries < load_failure_attempts
        ):
            load_failure_recoveries += 1
            if _recover_flexmem("GDB load failure"):
                time.sleep(0.5)
                continue
            return last_rc

        if (
            TARGET_FAILURE_KIND == "hardfault"
            and hardfault_recoveries < hardfault_attempts
        ):
            hardfault_recoveries += 1
            if _recover_flexmem("HardFault"):
                time.sleep(0.5)
                continue
            return last_rc

        return last_rc


if __name__ == "__main__":
    raise SystemExit(main())
