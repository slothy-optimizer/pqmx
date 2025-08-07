# Test name - needs to match the directory name
TESTS += ntt-1024/all

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_1024_ALL_PLATFORMS += m55-an547
NTT_1024_ALL_PLATFORMS += ek-ra8m1

# C sources required for this test
NTT_1024_ALL_SOURCES += main.c

# Assembly sources required for this test
NTT_1024_ALL_ASM_DIR = ../../asm/auto/ntt_1024
NTT_1024_ALL_ASMS += ../../asm/manual/montgomery/montgomery.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_complete.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_bitrev_skipfirst.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_bitrev.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_double_rev4.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_double.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_rev4.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_skipfirst.s
NTT_1024_ALL_ASMS += $(NTT_1024_ALL_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete.s
