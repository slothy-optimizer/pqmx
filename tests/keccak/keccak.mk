# Test name - needs to match the directory name
TESTS += keccak

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KECCAK_PLATFORMS += m55-an547
KECCAK_PLATFORMS += m85-an555
KECCAK_PLATFORMS += m4-an386
KECCAK_PLATFORMS += m7-an500
KECCAK_PLATFORMS += nucleo-f767zi
KECCAK_PLATFORMS += stm32f4discovery

# C sources required for this test
KECCAK_SOURCES += main.c

# Assembly sources required for this test

KECCAK_ASMDIR = ../../asm/manual/keccak
KECCAK_ASMS += $(KECCAK_ASMDIR)/keccakf1600_pqm4.s
KECCAK_ASMS += $(KECCAK_ASMDIR)/keccakf1600.s
KECCAK_ASMS += $(KECCAK_ASMDIR)/keccakf1600_old.s
KECCAK_ASMS += $(KECCAK_ASMDIR)/keccakf1600_m7.s
KECCAK_ASMS += $(KECCAK_ASMDIR)/keccakf1600_opt_m7.s