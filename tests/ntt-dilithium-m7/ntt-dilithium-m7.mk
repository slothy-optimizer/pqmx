# Test name - needs to match the directory name
TESTS += ntt-dilithium-m7

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_DILITHIUM_M7_PLATFORMS += m7-an500
NTT_DILITHIUM_M7_PLATFORMS += nucleo-f767zi

# C sources required for this test
NTT_DILITHIUM_M7_SOURCES += main.c

# Assembly sources required for this test
NTT_DILITHIUM_M7_ASM_DIR = ../../asm/manual/ntt_dilithium
NTT_DILITHIUM_M7_ASMS += $(NTT_DILITHIUM_ASM_DIR)/dilithium5_ntt.s
NTT_DILITHIUM_M7_ASMS += $(NTT_DILITHIUM_ASM_DIR)/dilithium5_ntt_opt.s
