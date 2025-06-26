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
KECCAK_PLATFORMS += ek-ra8m1

# C sources required for this test
KECCAK_SOURCES += main.c

# Assembly sources required for this test

KECCAK_SLOTHY_DIR = ../../slothy/
KECCAK_SLOTHY_ASM_NAIVE = $(KECCAK_SLOTHY_DIR)/examples/naive/armv7m/keccak/
KECCAK_SLOTHY_ASM_OPT = $(KECCAK_SLOTHY_DIR)/examples/opt/armv7m/keccak/

KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_NAIVE)/keccakf1600_adomnicai_m4.s
KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_NAIVE)/keccakf1600_adomnicai_m7.s
KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_NAIVE)/keccakf1600_xkcp.s

KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_OPT)/keccakf1600_adomnicai_m4_opt_m7.s
KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_OPT)/keccakf1600_adomnicai_m7_opt_m7.s
KECCAK_ASMS += $(KECCAK_SLOTHY_ASM_OPT)/keccakf1600_xkcp_opt_m7.s
