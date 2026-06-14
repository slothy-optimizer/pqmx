# SPDX-License-Identifier: Apache-2.0

"""Host-only regression tests for the NUCLEO-N657X0-Q helper modules.

These tests are debugger- and board-independent: every subprocess interaction
is mocked, so they run on any machine in CI without hardware. Run with:

    cd envs/nucleo-n657x0-q/host && python3 -m unittest -v
"""

import contextlib
import io
import logging
import os
import unittest
from unittest import mock

import flexmem_configure
import run_test

# Keep wrapper diagnostics (e.g. expected "FAIL!" lines on negative-path tests)
# out of the unittest output.
logging.getLogger("run_test").setLevel(logging.CRITICAL)
logging.getLogger("flexmem_configure").setLevel(logging.CRITICAL)
from nucleo_host.flexmem import ENV_DIR, flexmem_config_build_instructions
from nucleo_host.gdb_script import build_run_script
from nucleo_host.openocd_tools import flexmem_script_lines
from nucleo_host.openocd_tools import openocd_base_args
from nucleo_host.openocd_tools import runtime_gdbserver_cmd
from nucleo_host.openocd_tools import speed_khz_from_env
from nucleo_host.openocd_tools import transport_from_env
from nucleo_host.results import decode_cfsr
from nucleo_host.results import decode_hfsr
from nucleo_host.results import fault_info_from_gdb
from nucleo_host.results import gdb_load_failed
from nucleo_host.results import gdb_load_failed_before_target_output
from nucleo_host.results import gdb_observed_hardfault
from nucleo_host.results import output_indicates_success
from nucleo_host.symbols import parse_nm_symbol, parse_readelf_symbol


class SymbolParsingTest(unittest.TestCase):
    """Symbol resolution helpers parse nm/readelf output without a toolchain."""

    def test_parse_nm_symbol(self):
        """The nm parser returns the exact requested symbol address."""
        nm_output = "00000000 T Reset_Handler\n34080000 B nucleo_stdout_capture\n"

        self.assertEqual(
            parse_nm_symbol(nm_output, "nucleo_stdout_capture"), "0x34080000"
        )
        self.assertIsNone(parse_nm_symbol(nm_output, "missing"))

    def test_parse_readelf_symbol(self):
        """The readelf parser returns only exact symbol hits."""
        readelf_output = "   42: 00001234     8 FUNC    GLOBAL DEFAULT    1 __wrap_main\n"

        self.assertEqual(
            parse_readelf_symbol(readelf_output, "__wrap_main"), "0x00001234"
        )
        # "main" is a substring of "__wrap_main" but not an exact field match.
        self.assertIsNone(parse_readelf_symbol(readelf_output, "main"))


class ResultsTest(unittest.TestCase):
    """Success-marker detection, load-failure logic, and fault decoding."""

    def test_output_indicates_success(self):
        """pqmx success is the 'ALL GOOD!' marker, not an exit sentinel."""
        self.assertTrue(output_indicates_success("Hello World! ... Ok\nALL GOOD!\n"))
        self.assertFalse(output_indicates_success("Hello World! ... FAIL!\n"))
        self.assertFalse(output_indicates_success(""))

    def test_gdb_load_failed_detects_representative_output(self):
        """GDB load failures are detected case-insensitively."""
        self.assertTrue(
            gdb_load_failed("Error finishing flash operation\nLoad failed\n")
        )
        self.assertTrue(gdb_load_failed("warning: section write failed: load FAILED"))
        self.assertFalse(gdb_load_failed("Loading section .text, size 0x100 lma 0x0"))

    def test_gdb_load_failed_requires_no_target_output(self):
        """Load-failure recovery is skipped once target output has started."""
        gdb_text = "Load failed\n"

        self.assertTrue(gdb_load_failed_before_target_output(gdb_text))
        self.assertFalse(
            gdb_load_failed_before_target_output(
                gdb_text, target_output_observed=True
            )
        )

    def test_gdb_observed_hardfault(self):
        """HardFault is detected from either the sentinel or a stop frame."""
        self.assertTrue(gdb_observed_hardfault("...\n[[NUCLEO-HARDFAULT]]\n"))
        self.assertTrue(gdb_observed_hardfault("HardFault_Handler () at it.c:84\n"))
        self.assertFalse(gdb_observed_hardfault("continuing\nALL GOOD!\n"))

    def test_decode_cfsr_and_hfsr_bits(self):
        """CFSR/HFSR bit decoding names the set fault bits."""
        self.assertIn("UNDEFINSTR", decode_cfsr(0x00010000))
        self.assertIn("INVSTATE", decode_cfsr(0x00020000))
        self.assertIn("FORCED", decode_hfsr(0x40000000))
        self.assertEqual(decode_cfsr(0), [])

    def test_fault_info_decodes_register_bits(self):
        """Fault formatting expands CFSR/HFSR bit names for diagnostics."""
        gdb_text = "CFSR=0x00030000\nHFSR=0x40000000\nPC=0x00000123\n"

        fault_info = fault_info_from_gdb(gdb_text)

        self.assertIn("CFSR=0x00030000", fault_info)
        self.assertIn("UNDEFINSTR", fault_info)
        self.assertIn("INVSTATE", fault_info)
        self.assertIn("FORCED", fault_info)

    def test_fault_info_empty_without_registers(self):
        """No register lines yields an empty diagnostic string."""
        self.assertEqual(fault_info_from_gdb("nothing to see here"), "")


class FlexmemHelpTest(unittest.TestCase):
    """User-facing build instructions reference the env-relative make targets."""

    def test_flexmem_config_build_instructions_show_make_command(self):
        """Missing config diagnostics explain how to build the helper ELF."""
        instructions = flexmem_config_build_instructions("/tmp/flexmem_config.elf")

        self.assertIn(ENV_DIR, instructions)
        self.assertIn("make -C", instructions)
        self.assertIn("flexmem_config", instructions)
        self.assertIn("/tmp/flexmem_config.elf", instructions)


class OpenOcdCommandTest(unittest.TestCase):
    """OpenOCD command and TCL script builders match the platform contract."""

    def test_openocd_base_args_use_stlink_stm32n6_target(self):
        """OpenOCD defaults select the ST-LINK interface and STM32N6 target."""
        args = openocd_base_args(
            openocd="/bin/openocd",
            speed="500",
            serial="ABC",
            transport="swd",
        )

        self.assertEqual(args[0], "/bin/openocd")
        self.assertIn("interface/stlink.cfg", args)
        self.assertIn("target/stm32n6x.cfg", args)
        self.assertIn("transport select swd", args)
        self.assertIn("adapter speed 500", args)
        self.assertIn("adapter serial ABC", args)
        self.assertLess(
            args.index("transport select swd"), args.index("target/stm32n6x.cfg")
        )

    def test_openocd_default_speed_matches_st_recovery_speed(self):
        """The platform default uses the robust ST-LINK recovery speed."""
        with mock.patch.dict(os.environ, {}, clear=True):
            self.assertEqual(speed_khz_from_env(), "8000")

    def test_transport_from_env_normalizes(self):
        """Transport selection lowercases and trims, defaulting to swd."""
        with mock.patch.dict(os.environ, {}, clear=True):
            self.assertEqual(transport_from_env(), "swd")
        with mock.patch.dict(os.environ, {"OPENOCD_TRANSPORT": " JTAG "}):
            self.assertEqual(transport_from_env(), "jtag")

    def test_openocd_runtime_cmd_avoids_under_reset(self):
        """Runtime OpenOCD server does not request connect-under-reset."""
        cmd = runtime_gdbserver_cmd(
            openocd="openocd",
            port=4444,
            speed="200",
            serial="",
            transport="swd",
        )
        joined = "\n".join(cmd)

        self.assertIn("gdb_port 4444", cmd)
        self.assertIn("reset_config srst_only srst_nogate", cmd)
        self.assertIn("halt", cmd)
        self.assertNotIn("reset halt", joined)
        self.assertNotIn("connect_assert_srst", joined)

    def test_flexmem_script_uses_under_reset_and_polls_register(self):
        """FLEXMEM OpenOCD script connects under reset and polls CM55TCMCR."""
        lines = flexmem_script_lines(
            elf="/tmp/flexmem_config.elf",
            main_thumb="0x34064001",
            estack_addr="0x30020000",
            timeout_ms=30000,
            flexmem_addr="0x56008008",
            expected_mask=0xFF,
            expected_value=0x99,
        )
        joined = "\n".join(lines)

        self.assertIn("reset_config srst_only srst_nogate connect_assert_srst", lines)
        self.assertIn("reset halt", lines)
        self.assertIn("load_image {/tmp/flexmem_config.elf}", lines)
        self.assertIn("reg msp 0x30020000", lines)
        self.assertIn("reg pc 0x34064001", lines)
        self.assertIn("read_memory 0x56008008 32 1", joined)
        self.assertIn("== 0x99", joined)
        self.assertLess(lines.index("reset_config none"), lines.index("reset run"))
        self.assertIn("reset run", lines)

    def test_flexmem_script_can_skip_under_reset(self):
        """The fallback FLEXMEM script can attach without connect-under-reset."""
        lines = flexmem_script_lines(
            elf="/tmp/flexmem_config.elf",
            main_thumb="0x34064001",
            estack_addr="0x30020000",
            timeout_ms=30000,
            connect_under_reset=False,
        )
        joined = "\n".join(lines)

        self.assertIn("reset_config srst_only srst_nogate", lines)
        self.assertNotIn("connect_assert_srst", joined)
        self.assertIn("reset halt", lines)


class GdbScriptTest(unittest.TestCase):
    """The GDB run script keeps the critical load/run/harvest ordering."""

    def test_build_run_script_contains_required_sequence(self):
        """The GDB script loads, runs from reset, then harvests stdout."""
        gdb_lines = build_run_script(
            port=3333,
            wrap_main_break="*0x100",
            reset_handler_jump="*0x5",
            stdout_capture_addr="0x34080000",
            stdout_capture_len_addr="0x30000100",
            stdout_capture_truncated_addr="0x30000104",
            stdout_capture_size=1536,
            stdout_capture_bin="stdout.bin",
        )

        # pqmx tests take no argv, so there is no 'restore <argv.bin>' step.
        self.assertEqual(
            gdb_lines[:6],
            [
                "set pagination off",
                "set confirm off",
                "target remote localhost:3333",
                "load",
                "tbreak *0x100",
                "jump *0x5",
            ],
        )
        self.assertNotIn("restore", "\n".join(gdb_lines))
        self.assertIn("break HardFault_Handler", gdb_lines)
        self.assertIn("break nucleo_layout_fail", gdb_lines)
        expected_dump = (
            "  dump binary memory stdout.bin 0x34080000 "
            "0x34080000 + $nucleo_stdout_len"
        )
        self.assertIn(expected_dump, gdb_lines)
        self.assertIn("p/x $nucleo_stdout_truncated", gdb_lines)
        self.assertIn("echo CFSR=", gdb_lines)
        self.assertEqual(
            gdb_lines[-2:], ["monitor reset_config none", "monitor reset run"]
        )

    def test_build_run_script_skips_dump_without_capture_symbols(self):
        """Without capture symbols, no stdout dump commands are emitted."""
        gdb_lines = build_run_script(
            port=3333,
            wrap_main_break="__wrap_main",
            reset_handler_jump="*0x5",
            stdout_capture_addr=None,
            stdout_capture_len_addr=None,
            stdout_capture_truncated_addr=None,
            stdout_capture_size=1536,
            stdout_capture_bin="stdout.bin",
        )

        self.assertNotIn("dump binary memory", "\n".join(gdb_lines))


class FlexmemConfigureTest(unittest.TestCase):
    """The FLEXMEM configuration entry point, with OpenOCD mocked out."""

    def test_reports_build_hint_when_config_missing(self):
        """A missing config ELF reports how to build it and returns 2."""
        messages = []
        argv = ["flexmem_configure.py", "/tmp/missing_flexmem_config.elf"]

        with (
            mock.patch.object(flexmem_configure.sys, "argv", argv),
            mock.patch.object(flexmem_configure.os.path, "exists", return_value=False),
            mock.patch.object(flexmem_configure, "err", side_effect=messages.append),
        ):
            self.assertEqual(flexmem_configure.main(), 2)

        self.assertIn(
            "Config ELF not found: /tmp/missing_flexmem_config.elf", messages
        )
        self.assertTrue(any("make -C" in message for message in messages))

    def test_runs_openocd_script(self):
        """The FLEXMEM backend writes and runs an OpenOCD script, then cleans up."""
        completed = mock.Mock(returncode=0, stdout="")
        env = {
            "OPENOCD": "/usr/bin/openocd",
            "OPENOCD_SPEED": "123",
            "OPENOCD_SERIAL": "SERIAL",
        }

        with (
            mock.patch.dict(os.environ, env),
            mock.patch.object(
                flexmem_configure, "find_openocd", return_value="/usr/bin/openocd"
            ),
            mock.patch.object(
                flexmem_configure, "run_quiet", return_value=completed
            ) as run,
        ):
            rc = flexmem_configure.run_openocd_config(
                "/tmp/flexmem_config.elf", "0x34064001", "0x30020000", 30
            )

        self.assertEqual(rc, 0)
        cmd = run.call_args.args[0]
        self.assertEqual(cmd[0], "/usr/bin/openocd")
        self.assertIn("interface/stlink.cfg", cmd)
        self.assertIn("target/stm32n6x.cfg", cmd)
        self.assertIn("adapter speed 123", cmd)
        self.assertIn("adapter serial SERIAL", cmd)
        # The temporary OpenOCD script is removed after the run.
        script_path = cmd[-1]
        self.assertFalse(os.path.exists(script_path))

    def test_retries_without_under_reset_after_init_failure(self):
        """A failed under-reset attach retries once with a normal attach."""
        failed = mock.Mock(
            returncode=1,
            stdout="Error: init mode failed (unable to connect to the target)",
        )
        completed = mock.Mock(returncode=0, stdout="")

        with (
            mock.patch.dict(os.environ, {"OPENOCD": "/usr/bin/openocd"}),
            mock.patch.object(
                flexmem_configure, "find_openocd", return_value="/usr/bin/openocd"
            ),
            mock.patch.object(
                flexmem_configure, "run_quiet", side_effect=[failed, completed]
            ) as run,
        ):
            rc = flexmem_configure.run_openocd_config(
                "/tmp/flexmem_config.elf", "0x34064001", "0x30020000", 30
            )

        self.assertEqual(rc, 0)
        self.assertEqual(run.call_count, 2)


class FakeProcess:
    """Minimal Popen stand-in for run_test wrapper tests."""

    def __init__(self, returncode=None, communicate_text=("", "")):
        self.returncode = returncode
        self._communicate_text = communicate_text
        self.stdout = mock.Mock()
        self.stdout.read.return_value = ""
        self.stdout.readline.return_value = ""

    def poll(self):
        return self.returncode

    def wait(self, timeout=None):
        return self.returncode

    def terminate(self):
        self.returncode = 0

    def kill(self):
        self.returncode = -9

    def communicate(self, timeout=None):
        return self._communicate_text


class RunTestWrapperTest(unittest.TestCase):
    """The run_test wrapper run/success/failure/recovery logic, fully mocked."""

    SYMBOLS = {
        "__wrap_main": "0x200",
        "Reset_Handler": "0x4",
        "nucleo_stdout_capture": "0x34080000",
        "nucleo_stdout_capture_len": "0x30000100",
        "nucleo_stdout_capture_truncated": None,
    }

    def _run_once_with(self, *, gdb_communicate, capture_bytes):
        """Drive run_test._run_once with a fake OpenOCD + GDB and RAM capture."""
        popen_calls = []

        def fake_popen(cmd, **kwargs):
            popen_calls.append(cmd)
            if len(popen_calls) == 1:
                # OpenOCD gdbserver: stays up (poll -> None).
                return FakeProcess(returncode=None)
            return FakeProcess(returncode=0, communicate_text=gdb_communicate)

        real_open = open

        def fake_open(path, *a, **k):
            if str(path).endswith("stdout-capture.bin"):
                return io.BytesIO(capture_bytes)
            return real_open(path, *a, **k)

        env = {"OPENOCD": "/usr/bin/openocd", "GDB_RUN_TIMEOUT": "0"}
        with (
            mock.patch.dict(os.environ, env),
            mock.patch.object(
                run_test, "find_openocd", return_value="/usr/bin/openocd"
            ),
            mock.patch.object(
                run_test,
                "resolve_symbol",
                side_effect=lambda _elf, sym, **_kw: self.SYMBOLS[sym],
            ),
            mock.patch.object(run_test, "popen", side_effect=fake_popen),
            mock.patch.object(run_test.time, "sleep"),
            mock.patch.object(run_test.select, "select", return_value=([], [], [])),
            mock.patch.object(run_test.os.path, "exists", return_value=True),
            mock.patch("builtins.open", side_effect=fake_open),
            contextlib.redirect_stdout(io.StringIO()),
        ):
            rc = run_test._run_once("/tmp/test.elf")
        return rc, popen_calls

    def test_run_once_starts_openocd_then_gdb(self):
        """The wrapper starts OpenOCD as a gdbserver, then runs gdb --batch."""
        rc, popen_calls = self._run_once_with(
            gdb_communicate=("", ""),
            capture_bytes=b"Hello World! ... Ok\nALL GOOD!\n",
        )

        self.assertEqual(rc, 0)
        self.assertEqual(popen_calls[0][0], "/usr/bin/openocd")
        self.assertIn("gdb_port 3333", popen_calls[0])
        self.assertNotIn("connect_assert_srst", "\n".join(popen_calls[0]))
        self.assertEqual(popen_calls[1][0], "arm-none-eabi-gdb")

    def test_run_once_success_on_all_good_marker(self):
        """Captured 'ALL GOOD!' output is a success (rc 0)."""
        rc, _ = self._run_once_with(
            gdb_communicate=("", ""),
            capture_bytes=b"some test ... Ok\nALL GOOD!\n",
        )
        self.assertEqual(rc, 0)

    def test_run_once_failure_without_marker(self):
        """Captured output without the marker is a failure (rc 1)."""
        rc, _ = self._run_once_with(
            gdb_communicate=("", ""),
            capture_bytes=b"some test ... FAIL!\n",
        )
        self.assertEqual(rc, 1)

    def test_run_once_detects_hardfault(self):
        """A HardFault sentinel in GDB output maps to a hardfault failure."""
        rc, _ = self._run_once_with(
            gdb_communicate=("...\n[[NUCLEO-HARDFAULT]]\nCFSR=0x00000000\n", ""),
            capture_bytes=b"",
        )
        self.assertEqual(rc, 1)
        self.assertEqual(run_test.TARGET_FAILURE_KIND, "hardfault")

    def test_run_once_detects_layout_failure(self):
        """A layout-fail sentinel maps to a layout failure."""
        rc, _ = self._run_once_with(
            gdb_communicate=("...\n[[NUCLEO-LAYOUT-FAIL]]\n", ""),
            capture_bytes=b"",
        )
        self.assertEqual(rc, 1)
        self.assertEqual(run_test.TARGET_FAILURE_KIND, "layout")

    def test_main_recovers_once_after_load_failure(self):
        """main() re-runs FLEXMEM config once before retrying on load failure."""
        run_results = iter([23, 0])

        def fake_run_once(_elf):
            rc = next(run_results)
            run_test.TARGET_FAILURE_KIND = "load-failed" if rc != 0 else ""
            return rc

        env = {
            "GDB_HARDFAULT_RECOVERY_ATTEMPTS": "0",
            "GDB_LOAD_FAILURE_RECOVERY_ATTEMPTS": "1",
        }
        with (
            mock.patch.dict(os.environ, env),
            mock.patch.object(run_test.sys, "argv", ["run_test.py", "/tmp/test.elf"]),
            mock.patch.object(run_test.os.path, "exists", return_value=True),
            mock.patch.object(run_test, "_run_once", side_effect=fake_run_once),
            mock.patch.object(
                run_test, "_recover_flexmem", return_value=True
            ) as recover,
            mock.patch.object(run_test.time, "sleep"),
        ):
            self.assertEqual(run_test.main(), 0)

        recover.assert_called_once()

    def test_main_does_not_recover_when_disabled(self):
        """Zero recovery attempts disables FLEXMEM recovery on load failure."""
        def fake_run_once(_elf):
            run_test.TARGET_FAILURE_KIND = "load-failed"
            return 23

        env = {
            "GDB_HARDFAULT_RECOVERY_ATTEMPTS": "0",
            "GDB_LOAD_FAILURE_RECOVERY_ATTEMPTS": "0",
        }
        with (
            mock.patch.dict(os.environ, env),
            mock.patch.object(run_test.sys, "argv", ["run_test.py", "/tmp/test.elf"]),
            mock.patch.object(run_test.os.path, "exists", return_value=True),
            mock.patch.object(run_test, "_run_once", side_effect=fake_run_once),
            mock.patch.object(run_test, "_recover_flexmem") as recover,
            mock.patch.object(run_test.time, "sleep"),
        ):
            self.assertEqual(run_test.main(), 23)

        recover.assert_not_called()


if __name__ == "__main__":
    unittest.main()
