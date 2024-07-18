# Test name - needs to match the directory name
TESTS += poly

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
POLY_PLATFORMS += m55-an547
POLY_PLATFORMS += m85-an555

# C sources required for this test
POLY_SOURCES += main.c

# Assembly sources required for this test
POLY_ASM_DIR = ./auto
POLY_ASMS += ../../asm/manual/montgomery/montgomery.s
POLY_ASMS += ../../asm/manual/karatsuba/karatsuba.s
POLY_ASMS += ../../asm/manual/schoolbook/poly_u16_32.s
POLY_ASMS += ../../asm/manual/schoolbook/poly_u16_32_acc.s
POLY_ASMS += $(POLY_ASM_DIR)/inv_ntt_u32_33556993_28678040_complete.s
POLY_ASMS += $(POLY_ASM_DIR)/ntt_u32_33556993_28678040_complete.s
SABER_ASM_DIR = ../../asm/auto/saber
POLY_ASMS += $(SABER_ASM_DIR)/inv_ntt_u32_33556993_28678040_incomplete.s
POLY_ASMS += $(SABER_ASM_DIR)/ntt_u32_33556993_28678040_incomplete.s
POLY_ASMS += $(SABER_ASM_DIR)/ntt_u32_33556993_28678040_incomplete_double.s
TOOM_ASM_DIR=../../asm/auto/poly/toom4
POLY_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s
POLY_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s