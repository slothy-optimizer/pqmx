# Test name - needs to match the directory name
TESTS += ntt_kyber

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_KYBER_PLATFORMS += m55-an547
NTT_KYBER_PLATFORMS += m85-an555

# C sources required for this test
NTT_KYBER_SOURCES += main.c

# Assembly sources required for this test
NTT_KYBER_ASM_DIR=../../asm/manual/ntt_kyber
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans_opt_m55.s 
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans_opt_m85.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans_vld4_opt_m55.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans_vld4_opt_m85.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans_vld4.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_no_trans.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_12_345_67_opt_size_m55.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_12_345_67_opt_size_m85.s
NTT_KYBER_ASMS += $(NTT_KYBER_ASM_DIR)/ntt_kyber_12_345_67.s

# Additional required files (needed for packaging a standalone artifact)
NTT_KYBER_OTHER += $(NTT_KYBER_ASM_DIR)/ntt_kyber_1_23_45_67_twiddles.s
NTT_KYBER_OTHER += $(NTT_KYBER_ASM_DIR)/ntt_kyber_12_345_67_twiddles.s
