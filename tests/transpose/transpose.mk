# Test name - needs to match the directory name
TESTS += transpose

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
TRANSPOSE_PLATFORMS += m55-an547
TRANSPOSE_PLATFORMS += m85-an555

# C sources required for this test
TRANSPOSE_SOURCES += main.c

# Assembly sources required for this test
TRANSPOSE_ASMS += ../../asm/auto/gather/transpose_u16x8_4x4.s
