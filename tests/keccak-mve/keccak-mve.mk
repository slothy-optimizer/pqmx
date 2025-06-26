# Test name - needs to match the directory name
TESTS += keccak-mve

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KECCAK_MVE_PLATFORMS += m55-an547
KECCAK_MVE_PLATFORMS += m85-an555

# C sources required for this test
KECCAK_MVE_SOURCES += main.c

# Assembly sources required for this test
KECCAK_MVE_SLOTHY_DIR = ../../slothy/
KECCAK_MVE_SLOTHY_ASM_OPT = $(KECCAK_MVE_SLOTHY_DIR)/examples/opt/armv8m/keccak/

# Optimized implementations
KECCAK_MVE_ASMS += $(KECCAK_MVE_SLOTHY_ASM_OPT)/mve-keccak-4x_opt_m55.s
KECCAK_MVE_ASMS += $(KECCAK_MVE_SLOTHY_ASM_OPT)/mve-keccak-4x_opt_m85.s
