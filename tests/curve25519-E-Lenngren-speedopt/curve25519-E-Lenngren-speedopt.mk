# Test name - needs to match the directory name
TESTS += curve25519-E-Lenngren-speedopt

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
CURVE25519_E_LENNGREN_SPEEDOPT_PLATFORMS += m4-an386
CURVE25519_E_LENNGREN_SPEEDOPT_PLATFORMS += stm32f4discovery

# C sources required for this test
CURVE25519_E_LENNGREN_SPEEDOPT_SOURCES += main.c

# Assembly sources required for this test

CURVE25519_E_LENNGREN_SPEEDOPT_DIR = ./
CURVE25519_E_LENNGREN_SPEEDOPT_ASMS += $(CURVE25519_E_LENNGREN_SPEEDOPT_DIR)/curve25519-speedopt.s

