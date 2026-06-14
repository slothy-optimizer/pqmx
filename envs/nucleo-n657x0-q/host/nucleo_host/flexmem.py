# SPDX-License-Identifier: Apache-2.0

"""User-facing helpers for NUCLEO FLEXMEM configuration."""

ENV_DIR = "envs/nucleo-n657x0-q"


def flexmem_config_build_instructions(config_elf: str) -> str:
    """Return instructions for generating a missing FLEXMEM config ELF."""
    return "\n".join(
        [
            "Build the FLEXMEM config ELF from the repository root with:",
            f"  make -C {ENV_DIR} flexmem_config",
            "Then configure the board with:",
            f"  make -C {ENV_DIR} run_flexmem_config",
            f"Expected FLEXMEM config ELF: {config_elf}",
        ]
    )
