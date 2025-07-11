# Test name - needs to match the directory name
TESTS += ntt-384

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_384_PLATFORMS += m55-an547
NTT_384_PLATFORMS += m85-an555
NTT_384_PLATFORMS += ek-ra8m1

# C sources required for this test
NTT_384_SOURCES += main.c

# Assembly sources required for this test
NTT_384_ASM_DIR = ../../asm/auto/ntt_384
NTT_384_ASMS += ../../asm/manual/montgomery/montgomery.s
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_33556993_15047299_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_33556993_15047299_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_45387457_923104_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_45387457_923104_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good_oop.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_106117153_1392340_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_106117153_1392340_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good_oop_half_input.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good_oop.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_114826273_2551686_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_114826273_2551686_incomplete_good_oop_half_input.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_114826273_2551686_incomplete_good_oop.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_114826273_2551686_incomplete_good.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_128919937_4666088_incomplete_good_bitrev.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_128919937_4666088_incomplete_good_oop_half_input.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_128919937_4666088_incomplete_good_oop.s 
NTT_384_ASMS += $(NTT_384_ASM_DIR)/ntt_384_u32_128919937_4666088_incomplete_good.s