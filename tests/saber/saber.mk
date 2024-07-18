# Test name - needs to match the directory name
TESTS += saber

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SABER_PLATFORMS += m55-an547
SABER_PLATFORMS += m85-an555

# C sources required for this test
SABER_SOURCES += main.c
SABER_SOURCES += kem.c
SABER_SOURCES += fips202.c
SABER_SOURCES += verify.c
SABER_SOURCES += SABER_indcpa.c
SABER_SOURCES += pack_unpack.c
SABER_SOURCES += poly_ntt.c
SABER_SOURCES += cbd.c
SABER_SOURCES += rng.c


# Assembly sources required for this test
SABER_ASMS += saber_round.s
SABER_ASMS += montgomery.s
SABER_ASMS += auto/inv_ntt_u32_33556993_28678040_incomplete.s
SABER_ASMS += auto/ntt_u32_33556993_28678040_incomplete.s
SABER_ASMS += auto/ntt_u32_33556993_28678040_incomplete_double.s
