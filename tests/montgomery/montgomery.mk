# Test name - needs to match the directory name
TESTS += montgomery

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
MONTGOMERY_PLATFORMS += m55-an547
MONTGOMERY_PLATFORMS += m85-an555

# C sources required for this test
MONTGOMERY_SOURCES += main.c

# Assembly sources required for this test
MONTGOMERY_ASMS += montgomery.s

