# Test name - needs to match the directory name
TESTS += karatsuba

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KARATSUBA_PLATFORMS += m55-an547
KARATSUBA_PLATFORMS += m85-an555
KARATSUBA_PLATFORMS += ek-ra8m1

# C sources required for this test
KARATSUBA_SOURCES += main.c

# Assembly sources required for this test
KARATSUBA_ASMS += ../../asm/manual/karatsuba/karatsuba.s

