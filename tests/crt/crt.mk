# Test name - needs to match the directory name
TESTS += crt

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
CRT_PLATFORMS += m55-an547
CRT_PLATFORMS += m85-an555
CRT_PLATFORMS += ek-ra8m1

# C sources required for this test
CRT_SOURCES += main.c

# Assembly sources required for this test
CRT_ASMS += ../../asm/manual/crt/crt.s

