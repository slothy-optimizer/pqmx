# Test name - needs to match the directory name
TESTS += ntt-dilithium

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_DILITHIUM_PLATFORMS += m55-an547
NTT_DILITHIUM_PLATFORMS += m85-an555

# C sources required for this test
NTT_DILITHIUM_SOURCES += main.c
NTT_DILITHIUM_SOURCES += poly.c
NTT_DILITHIUM_SOURCES += misc.c

# Assembly sources required for this test
NTT_DILITHIUM_ASM_DIR = ../../asm/manual/ntt_dilithium
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_no_trans_vld4_opt_m85.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_no_trans_vld4.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_opt_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_opt_m85.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_123_456_78_opt_size_m55.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_123_456_78_opt_size_m85.s
NTT_DILITHIUM_ASMS += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_123_456_78.s

# Additional required files (needed for packaging a standalone artifact)
NTT_DILITHIUM_OTHER += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_12_34_56_78_twiddles.s
NTT_DILITHIUM_OTHER += $(NTT_DILITHIUM_ASM_DIR)/ntt_dilithium_123_456_78_twiddles.s
NTT_DILITHIUM_OTHER += misc.h
NTT_DILITHIUM_OTHER += poly.h
