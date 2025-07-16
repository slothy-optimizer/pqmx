# Test name - needs to match the directory name
TESTS += unpack

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
UNPACK_PLATFORMS += m55-an547
UNPACK_PLATFORMS += m85-an555
UNPACK_PLATFORMS += ek-ra8m1

# C sources required for this test
UNPACK_SOURCES += main.c

# Assembly sources required for this test
UNPACK_ASM_DIR=../../asm/auto/unpack/
UNPACK_ASMS += $(UNPACK_ASM_DIR)unpack_22_2048_96.s
UNPACK_ASMS += $(UNPACK_ASM_DIR)unpack_22_4096_192.s
UNPACK_ASMS += $(UNPACK_ASM_DIR)unpack_22_4224_192.s
