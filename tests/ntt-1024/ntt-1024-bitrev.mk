# Test name - needs to match the directory name
TESTS += ntt-1024/bitrev

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_1024_BITREV_PLATFORMS += m55-an547
NTT_1024_BITREV_PLATFORMS += m85-an555

# C sources required for this test
NTT_1024_BITREV_SOURCES += main.c

# Assembly sources required for this test
NTT_1024_BITREV_ASM_DIR = ../../asm/auto/ntt_1024
NTT_1024_BITREV_ASMS += ../../asm/manual/montgomery/montgomery.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_complete.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_bitrev_skipfirst.s
NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_bitrev.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_double_rev4.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_double.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_rev4.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete_skipfirst.s
# NTT_1024_BITREV_ASMS += $(NTT_1024_BITREV_ASM_DIR)/ntt_1024_u32_33564673_286215_incomplete.s

NTT_1024_BITREV_CFLAGS = -DTEST_NTT_1024_NO_DEFAULT_CONFIG -DTEST_NTT_BITREV -DNTT_INCOMPLETE
