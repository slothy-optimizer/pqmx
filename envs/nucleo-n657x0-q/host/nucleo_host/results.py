# SPDX-License-Identifier: Apache-2.0

"""Parse target result markers and Cortex-M fault diagnostics.

pqmx tests signal success by printing ``ALL GOOD!`` (see tests/*/main.c). There
is no numeric exit sentinel; the host greps the captured stdout for the success
marker instead. The layout-fail and hardfault markers are emitted by the GDB
batch script for diagnostics.
"""

import re

SUCCESS_MARKER = "ALL GOOD!"
LAYOUT_FAIL_SENTINEL = "[[NUCLEO-LAYOUT-FAIL]]"
HARDFAULT_SENTINEL = "[[NUCLEO-HARDFAULT]]"


def output_indicates_success(captured_text: str) -> bool:
    """Return whether captured target stdout contains the success marker."""
    return SUCCESS_MARKER in captured_text


def gdb_load_failed(gdb_text: str) -> bool:
    """Return whether GDB reported a failed ``load`` command."""
    return re.search(r"\bload\s+failed\b", gdb_text, re.IGNORECASE) is not None


def gdb_load_failed_before_target_output(
    gdb_text: str,
    *,
    target_output_observed=False,
) -> bool:
    """Return whether a GDB load failure is safe to recover with FLEXMEM."""
    return gdb_load_failed(gdb_text) and not target_output_observed


def decode_cfsr(cfsr: int):
    """Return names of set Configurable Fault Status Register bits."""
    bits = [
        (0, "IACCVIOL"),
        (1, "DACCVIOL"),
        (3, "MUNSTKERR"),
        (4, "MSTKERR"),
        (5, "MLSPERR"),
        (7, "MMARVALID"),
        (8, "IBUSERR"),
        (9, "PRECISERR"),
        (10, "IMPRECISERR"),
        (11, "UNSTKERR"),
        (12, "STKERR"),
        (13, "LSPERR"),
        (15, "BFARVALID"),
        (16, "UNDEFINSTR"),
        (17, "INVSTATE"),
        (18, "INVPC"),
        (19, "NOCP"),
        (24, "UNALIGNED"),
        (25, "DIVBYZERO"),
    ]
    return [name for bit, name in bits if cfsr & (1 << bit)]


def decode_hfsr(hfsr: int):
    """Return names of set HardFault Status Register bits."""
    bits = [(1, "VECTTBL"), (30, "FORCED"), (31, "DEBUGEVT")]
    return [name for bit, name in bits if hfsr & (1 << bit)]


def fault_info_from_gdb(gdb_text: str) -> str:
    """Format fault registers emitted by the GDB script into readable text."""
    values = {}
    register_pattern = (
        r"^(CFSR|HFSR|DFSR|MMFAR|BFAR|AFSR|SHCSR|CCR|MSP|PSP|LR|PC)"
        r"=0x([0-9a-fA-F]+)$"
    )
    for name, value in re.findall(register_pattern, gdb_text, re.MULTILINE):
        values[name] = int(value, 16)

    if not values:
        return ""

    lines = ["Fault registers:"]
    for name in (
        "CFSR",
        "HFSR",
        "DFSR",
        "MMFAR",
        "BFAR",
        "AFSR",
        "SHCSR",
        "CCR",
        "MSP",
        "PSP",
        "LR",
        "PC",
    ):
        if name in values:
            lines.append(f"  {name}=0x{values[name]:08x}")

    cfsr_bits = decode_cfsr(values.get("CFSR", 0))
    hfsr_bits = decode_hfsr(values.get("HFSR", 0))
    if cfsr_bits:
        lines.append("  CFSR bits: " + ", ".join(cfsr_bits))
    if hfsr_bits:
        lines.append("  HFSR bits: " + ", ".join(hfsr_bits))

    # The stack dump follows a marker printed by the GDB script. Keep parsing
    # permissive because GDB may format the memory rows differently by version.
    stacked = re.search(
        r"^STACKED_R0_R1_R2_R3_R12_LR_PC_XPSR:\s*\n"
        r"((?:0x[0-9a-fA-F]+:\s+.*\n?)?)",
        gdb_text,
        re.MULTILINE,
    )
    if stacked:
        stack_lines = [
            line.strip() for line in stacked.group(1).splitlines() if line.strip()
        ]
        if stack_lines:
            lines.append("  stacked frame dump:")
            lines.extend(f"    {line}" for line in stack_lines)

    return "\n".join(lines)


def gdb_observed_hardfault(gdb_text: str) -> bool:
    """Return whether GDB output shows the target entered HardFault_Handler."""
    return (
        HARDFAULT_SENTINEL in gdb_text
        or re.search(r"^HardFault_Handler \(\)", gdb_text, re.MULTILINE) is not None
    )
