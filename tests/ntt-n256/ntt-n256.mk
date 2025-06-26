# Test name - needs to match the directory name
TESTS += ntt-n256

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
NTT_N256_PLATFORMS += m55-an547
NTT_N256_PLATFORMS += m85-an555
NTT_N256_PLATFORMS += ek-ra8m1

# C sources required for this test
NTT_N256_SOURCES += main.c

# Assembly sources required for this test
NTT_N256_ASM_DIR = ../../asm/auto/ntt_n256
NTT_N256_ASMS += $(NTT_N256_ASM_DIR)/inv_ntt_n256_u32_33556993_28678040_complete.s 
NTT_N256_ASMS += $(NTT_N256_ASM_DIR)/inv_ntt_n256_u32_33556993_28678040_incomplete.s 
NTT_N256_ASMS += $(NTT_N256_ASM_DIR)/ntt_n256_u32_33556993_28678040_complete.s 
NTT_N256_ASMS += $(NTT_N256_ASM_DIR)/ntt_n256_u32_33556993_28678040_incomplete_double.s 
NTT_N256_ASMS += $(NTT_N256_ASM_DIR)/ntt_n256_u32_33556993_28678040_incomplete.s