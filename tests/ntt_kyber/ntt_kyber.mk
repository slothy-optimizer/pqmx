TESTS += ntt_kyber

NTT_KYBER_PLATFORMS += m55-an547
NTT_KYBER_PLATFORMS += m85-an555

NTT_KYBER_SOURCES += main.c

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