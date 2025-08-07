# Test name - needs to match the directory name
TESTS += toom

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
TOOM_PLATFORMS += m55-an547
TOOM_PLATFORMS += m85-an555
TOOM_PLATFORMS += ek-ra8m1

# C sources required for this test
TOOM_SOURCES += main.c

# Assembly sources required for this test
TOOM_ASM_DIR=../../asm/auto/poly/toom4
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_mul_256_toom4_mve.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_bottom.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x1_oop.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x2_oop.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_top_oop.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256_dual_top.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_karatsuba_x1_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_karatsuba_x2_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_fwd_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_bottom_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_bottom_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_top_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_dual_top_oop_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_full_256.s 
TOOM_ASMS += $(TOOM_ASM_DIR)/poly_u16_toom4_inv_half_256.s 
