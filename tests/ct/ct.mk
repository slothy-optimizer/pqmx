# Test name - needs to match the directory name
TESTS += ct

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
CT_PLATFORMS += m55-an547
CT_PLATFORMS += m85-an555
CT_PLATFORMS += ek-ra8m1

# C sources required for this test
CT_SOURCES += main.c

# Assembly sources required for this test
CT_ASMS += ../../asm/manual/ct/ct.s

