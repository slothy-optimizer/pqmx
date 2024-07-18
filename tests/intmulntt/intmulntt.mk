# Test name - needs to match the directory name
TESTS += intmulntt

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
INTMULNTT_PLATFORMS += m55-an547
INTMULNTT_PLATFORMS += m85-an555

# C sources required for this test
INTMULNTT_SOURCES += main.c

# Assembly sources required for this test
INTMULNTT_ASMS += ../../asm/manual/crt/crt.s
INTMULNTT_ASMS += montgomery.s
INTMULNTT_ASM_DIR = ../../asm/auto/ntt_384
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good_bitrev.s
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_88299073_4883425_incomplete_good.s
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good_bitrev.s
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good_oop_half_input.s
INTMULNTT_ASMS += $(INTMULNTT_ASM_DIR)/ntt_384_u32_108643009_640922_incomplete_good.s
