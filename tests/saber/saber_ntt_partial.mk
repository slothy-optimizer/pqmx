# Test name - needs to match the directory name
TESTS += saber/ntt-partial

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SABER_NTT_PARTIAL_PLATFORMS += m55-an547
SABER_NTT_PARTIAL_PLATFORMS += m85-an555

# C sources required for this test
SABER_NTT_PARTIAL_SOURCES += main.c
SABER_NTT_PARTIAL_SOURCES += kem.c
SABER_NTT_PARTIAL_SOURCES += fips202.c
SABER_NTT_PARTIAL_SOURCES += verify.c
SABER_NTT_PARTIAL_SOURCES += SABER_indcpa.c
SABER_NTT_PARTIAL_SOURCES += pack_unpack.c
SABER_NTT_PARTIAL_SOURCES += poly_ntt.c
SABER_NTT_PARTIAL_SOURCES += poly_ref_c.c
SABER_NTT_PARTIAL_SOURCES += poly_tc_kara_mve.c
SABER_NTT_PARTIAL_SOURCES += cbd.c
SABER_NTT_PARTIAL_SOURCES += rng.c

SABER_NTT_PARTIAL_CFLAGS = "-DTEST_CONFIG_NTT_PARTIAL"
ifdef SABER_L
SABER_NTT_PARTIAL_CFLAGS += "-DSABER_L=${SABER_L}"
endif

# Assembly sources required for this test
SABER_NTT_PARTIAL_ASMS  = saber_round.s
SABER_NTT_PARTIAL_ASM_AUTO_DIR = asm/auto/saber
SABER_NTT_PARTIAL_ASM_MANUAL_DIR = asm/manual/saber

SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/inv_ntt_n256_u32_33556993_28678040_incomplete.s
SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/inv_ntt_u32_33556993_28678040_incomplete.s
SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/ntt_n256_u32_33556993_28678040_incomplete.s
SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/ntt_n256_u32_33556993_28678040_incomplete_double.s
SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/ntt_u32_33556993_28678040_incomplete.s
SABER_NTT_PARTIAL_ASMS += ../../asm/auto/saber/ntt_u32_33556993_28678040_incomplete_double.s

SABER_NTT_PARTIAL_ASMS += ../../asm/manual/saber/karatsuba.s
SABER_NTT_PARTIAL_ASMS += ../../asm/manual/saber/montgomery.s
