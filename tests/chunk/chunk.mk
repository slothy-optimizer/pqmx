# Test name - needs to match the directory name
TESTS += chunk

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
CHUNK_PLATFORMS += m55-an547
CHUNK_PLATFORMS += m85-an555
CHUNK_PLATFORMS += ek-ra8m1

# C sources required for this test
CHUNK_SOURCES += main.c

# Assembly sources required for this test
CHUNK_ASMS += ../../asm/manual/chunk/chunk.s

