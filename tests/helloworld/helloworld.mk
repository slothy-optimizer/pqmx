# Test name - needs to match the directory name
TESTS += helloworld

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
HELLOWORLD_PLATFORMS += m55-an547
HELLOWORLD_PLATFORMS += m85-an555
HELLOWORLD_PLATFORMS += m4-an386
HELLOWORLD_PLATFORMS += m7-an500

# C sources required for this test
HELLOWORLD_SOURCES += main.c

# Assembly sources required for this test
HELLOWORLD_ASMS += mve_test.s

