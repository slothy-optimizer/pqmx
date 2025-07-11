# Test name - needs to match the directory name
TESTS += ntt-192

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_192_PLATFORMS += m55-an547
NTT_192_PLATFORMS += m85-an555
NTT_192_PLATFORMS += ek-ra8m1

# C sources required for this test
NTT_192_SOURCES += main.c

# Assembly sources required for this test
NTT_192_ASM_DIR = ../../asm/auto/ntt_192
NTT_192_ASMS += ../../asm/manual/montgomery/montgomery.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_33556993_27792935_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_33556993_27792935_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_45387457_16877098_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_45387457_16877098_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_88299073_9670361_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_88299073_9670361_incomplete_good_oop_half_input.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_88299073_9670361_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_106117153_62524596_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_106117153_62524596_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_108643009_1793055_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_108643009_1793055_incomplete_good_oop_half_input.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_108643009_1793055_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_114826273_107284677_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_114826273_107284677_incomplete_good_oop_half_input.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_114826273_107284677_incomplete_good_oop.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_114826273_107284677_incomplete_good.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_128919937_120423310_incomplete_good_bitrev.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_128919937_120423310_incomplete_good_oop_half_input.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_128919937_120423310_incomplete_good_oop.s
NTT_192_ASMS += $(NTT_192_ASM_DIR)/ntt_192_u32_128919937_120423310_incomplete_good.s