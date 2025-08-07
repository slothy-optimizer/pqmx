# Test name - needs to match the directory name
TESTS += ntt-256

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_256_PLATFORMS += m55-an547
NTT_256_PLATFORMS += m85-an555
NTT_256_PLATFORMS += ek-ra8m1

# C sources required for this test
NTT_256_SOURCES += main.c

# Assembly sources required for this test
NTT_256_ASM_DIR = ../../asm/auto/ntt_256
NTT_256_ASMS += $(NTT_256_ASM_DIR)/ntt_256_u32_33556993_26036764_complete.s
NTT_256_ASMS += $(NTT_256_ASM_DIR)/ntt_256_u32_33556993_26036764_incomplete.s
