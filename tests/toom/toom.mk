# Test name - needs to match the directory name
TESTS += toom

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
TOOM_PLATFORMS += m55-an547
TOOM_PLATFORMS += m85-an555

# C sources required for this test
TOOM_SOURCES += main.c
TOOM_SOURCES += misc.c
TOOM_SOURCES += poly.c


# Assembly sources required for this test
# TODO: not all these are required; delete the other ones?
# TODO: should move those to the asm dir
TOOM_ASMS += auto/poly_u16_mul_64_toom4_mve.s 
TOOM_ASMS += auto/poly_u16_mul_192_toom3_mve.s 
TOOM_ASMS += auto/poly_u16_mul_256_toom4_mve.s 
TOOM_ASMS += auto/poly_u16_mul_512_toom4_mve.s 
TOOM_ASMS += auto/poly_u16_mul_768_toom3_mve.s 
TOOM_ASMS += auto/poly_u16_mul_768_toom4_mve.s 
TOOM_ASMS += auto/poly_u16_mul_832_toom4_mve.s 
TOOM_ASMS += auto/poly_u16_toom3_fwd_192.s 
TOOM_ASMS += auto/poly_u16_toom3_fwd_768.s 
TOOM_ASMS += auto/poly_u16_toom3_inv_full_192.s 
TOOM_ASMS += auto/poly_u16_toom3_inv_full_768.s 
TOOM_ASMS += auto/poly_u16_toom3_inv_half_192.s 
TOOM_ASMS += auto/poly_u16_toom3_inv_half_768.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_bottom.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x1_oop.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x2_oop.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_packed_oop.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_top_oop.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256_dual_top.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_256.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_512.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_768.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_832.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_karatsuba_x1_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_karatsuba_x2_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_fwd_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_dual_bottom_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_dual_bottom_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_dual_top_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_dual_top_oop_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_full_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_full_512.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_full_768.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_full_832.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_half_256.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_half_512.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_half_768.s 
TOOM_ASMS += auto/poly_u16_toom4_inv_half_832.s