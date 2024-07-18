# Test name - needs to match the directory name
TESTS += helloworld

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
HELLOWORLD_PLATFORMS += m55-an547
HELLOWORLD_PLATFORMS += m85-an555

# C sources required for this test
HELLOWORLD_SOURCES += main.c
HELLOWORLD_SOURCES += misc.c

# Assembly sources required for this test
HELLOWORLD_ASMS += mve_test.s

