# Test name - needs to match the directory name
TESTS += ntt-512

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_512_PLATFORMS += m55-an547
NTT_512_PLATFORMS += m85-an555

# C sources required for this test
NTT_512_SOURCES += main.c
NTT_512_SOURCES += misc.c
NTT_512_SOURCES += poly.c

# Assembly sources required for this test
NTT_512_ASM_DIR = ../../asm/auto/ntt_512
NTT_512_ASMS += $(NTT_512_ASM_DIR)/ntt_512_u32_33564673_21224105_complete.s 
NTT_512_ASMS += $(NTT_512_ASM_DIR)/ntt_512_u32_33564673_21224105_incomplete_double.s 
NTT_512_ASMS += $(NTT_512_ASM_DIR)/ntt_512_u32_33564673_21224105_incomplete.s