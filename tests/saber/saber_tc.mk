# Test name - needs to match the directory name
TESTS += saber/tc

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SABER_TC_PLATFORMS += m55-an547
SABER_TC_PLATFORMS += m85-an555

# C sources required for this test
SABER_TC_SOURCES += main.c
SABER_TC_SOURCES += kem.c
SABER_TC_SOURCES += fips202.c
SABER_TC_SOURCES += verify.c
SABER_TC_SOURCES += SABER_indcpa.c
SABER_TC_SOURCES += pack_unpack.c
SABER_TC_SOURCES += poly_ntt.c
SABER_TC_SOURCES += poly_ref_c.c
SABER_TC_SOURCES += poly_tc_kara_mve.c
SABER_TC_SOURCES += cbd.c
SABER_TC_SOURCES += rng.c

SABER_TC_CFLAGS = "-DTEST_CONFIG_TC"
ifdef SABER_L
SABER_TC_CFLAGS += "-DSABER_L=${SABER_L}"
endif

# Assembly sources required for this test
SABER_TC_ASMS  = saber_round.s
SABER_TC_ASM_AUTO_DIR = asm/auto/saber
SABER_TC_ASM_MANUAL_DIR = asm/manual/saber

# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_16_anticyclic_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_16_anticyclic_opt_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_16_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_256_toom4_mve.s
SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd.s
SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_anticyclic_karatsuba_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_anticyclic_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_anticyclic_opt_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_32_mve_simd.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_512_toom4_mve.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_64_toom4_mve.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_768_toom4_mve.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_mul_832_toom4_mve.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_bottom.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x1_oop.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_packed_limbs_karatsuba_x2_oop.s
SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_packed_limbs_oop.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_packed_oop.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_top.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_256_dual_top_oop.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_512.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_768.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_832.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_karatsuba_x1_oop_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_karatsuba_x2_oop_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_fwd_oop_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_dual_bottom_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_dual_bottom_oop_256.s
SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_dual_packed_limbs_oop_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_dual_top_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_dual_top_oop_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_full_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_full_512.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_full_768.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_full_832.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_half_256.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_half_512.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_half_768.s
# SABER_TC_ASMS += ../../asm/auto/saber/poly_u16_toom4_inv_half_832.s

SABER_TC_ASMS += ../../asm/manual/saber/karatsuba.s
SABER_TC_ASMS += ../../asm/manual/saber/montgomery.s
