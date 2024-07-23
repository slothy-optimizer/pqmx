# Test name - needs to match the directory name
TESTS += saber/ntt-full

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SABER_NTT_FULL_PLATFORMS += m55-an547
SABER_NTT_FULL_PLATFORMS += m85-an555

# C sources required for this test
SABER_NTT_FULL_SOURCES += main.c
SABER_NTT_FULL_SOURCES += kem.c
SABER_NTT_FULL_SOURCES += fips202.c
SABER_NTT_FULL_SOURCES += verify.c
SABER_NTT_FULL_SOURCES += SABER_indcpa.c
SABER_NTT_FULL_SOURCES += pack_unpack.c
SABER_NTT_FULL_SOURCES += poly_ntt.c
SABER_NTT_FULL_SOURCES += poly_ref_c.c
SABER_NTT_FULL_SOURCES += cbd.c
SABER_NTT_FULL_SOURCES += rng.c

SABER_NTT_FULL_CFLAGS = "-DTEST_CONFIG_NTT_FULL"
ifdef SABER_L
SABER_NTT_FULL_CFLAGS += "-DSABER_L=${SABER_L}"
endif

# Assembly sources required for this test
SABER_NTT_FULL_ASMS  = saber_round.s
SABER_NTT_FULL_ASM_AUTO_DIR = asm/auto/saber
SABER_NTT_FULL_ASM_MANUAL_DIR = asm/manual/saber

SABER_NTT_FULL_ASMS += ../../asm/auto/saber/inv_ntt_n256_u32_33556993_28678040_complete.s
SABER_NTT_FULL_ASMS += ../../asm/auto/saber/inv_ntt_u32_33556993_28678040_complete.s
SABER_NTT_FULL_ASMS += ../../asm/auto/saber/ntt_n256_u32_33556993_28678040_complete.s
SABER_NTT_FULL_ASMS += ../../asm/auto/saber/ntt_u32_33556993_28678040_complete.s

SABER_NTT_FULL_ASMS += ../../asm/manual/saber/karatsuba.s
SABER_NTT_FULL_ASMS += ../../asm/manual/saber/montgomery.s
