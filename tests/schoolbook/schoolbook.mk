# Test name - needs to match the directory name
TESTS += schoolbook

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SCHOOLBOOK_PLATFORMS += m55-an547
SCHOOLBOOK_PLATFORMS += m85-an555

# C sources required for this test
SCHOOLBOOK_SOURCES += main.c

# Assembly sources required for this test
SCHOOLBOOK_ASMS += poly_u16_32_acc.s
SCHOOLBOOK_ASMS += auto/poly_u16_mul_32_anticyclic_karatsuba_fwd_mve_simd.s
SCHOOLBOOK_ASMS += auto/  
SCHOOLBOOK_ASMS += auto/poly_u16_mul_32_anticyclic_mve_simd.s