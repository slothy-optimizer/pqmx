# Test name - needs to match the directory name
TESTS += kyber-all

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KYBER_ALL_PLATFORMS += m7-an500
KYBER_ALL_PLATFORMS += nucleo-f767zi

# C sources required for this test
KYBER_ALL_SOURCES += main.c

# Assembly sources required for this test
KYBER_ALL_ASM_DIR = ../../asm/manual/kyber-all
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/ntt_kyber.s
KYBER_ALL_ASMS += $(KYBER_ALL_ASM_DIR)/ntt_kyber_opt_m7.s
