# Test name - needs to match the directory name
TESTS += curve448-E-Lenngren-sizeopt

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
CURVE448_E_LENNGREN_SIZEOPT_PLATFORMS += m4-an386
CURVE448_E_LENNGREN_SIZEOPT_PLATFORMS += stm32f4discovery

# C sources required for this test
CURVE448_E_LENNGREN_SIZEOPT_SOURCES += main.c

# Assembly sources required for this test

CURVE448_E_LENNGREN_SIZEOPT_DIR = ./
CURVE448_E_LENNGREN_SIZEOPT_ASMS += $(CURVE448_E_LENNGREN_SIZEOPT_DIR)/curve448-sizeopt.s

