# Test name - needs to match the directory name
TESTS += permute

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
PERMUTE_PLATFORMS += m55-an547
PERMUTE_PLATFORMS += m85-an555
PERMUTE_PLATFORMS += ek-ra8m1

# C sources required for this test
PERMUTE_SOURCES += main.c

# Assembly sources required for this test
PERMUTE_ASM_DIR = ../../asm/auto/permute
PERMUTE_ASMS += $(PERMUTE_ASM_DIR)/permutation_test_u32.s
PERMUTE_ASMS += $(PERMUTE_ASM_DIR)/permutation_test_u16.s
PERMUTE_ASMS += $(PERMUTE_ASM_DIR)/permutation_test_u8.s
