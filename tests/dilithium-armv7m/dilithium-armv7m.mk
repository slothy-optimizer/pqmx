# Test name - needs to match the directory name
TESTS += dilithium-armv7m

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
DILITHIUM_ARMV7M_PLATFORMS += m7-an500
DILITHIUM_ARMV7M_PLATFORMS += nucleo-f767zi
DILITHIUM_ARMV7M_PLATFORMS += stm32f4discovery

# C sources required for this test
DILITHIUM_ARMV7M_SOURCES += main.c
DILITHIUM_ARMV7M_SOURCES += ref.c

# Assembly sources required for this test



DILITHIUM_ARMV7M_ASM_SLOTHY_DIR = ../../slothy/


DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE = $(DILITHIUM_ARMV7M_ASM_SLOTHY_DIR)/examples/naive/armv7m/dilithium
DILITHIUM_ARMV7M_SLOTHY_ASM_OPT = $(DILITHIUM_ARMV7M_ASM_SLOTHY_DIR)/examples/opt/armv7m/dilithium




DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_257_asymmetric_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_257_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/caddq_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/fnt_257_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/ifnt_257_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/intt_769_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/ntt_769_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/ntt_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/intt_dilithium_123_456_78.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/pointwise_769_asymmetric_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/pointwise_769_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/pointwise_acc_montgomery_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/pointwise_montgomery_dilithium.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_NAIVE)/reduce32_dilithium.s

DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/basemul_257_asymmetric_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/basemul_257_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/caddq_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/fnt_257_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/ifnt_257_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/intt_769_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/ntt_769_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/ntt_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/intt_dilithium_123_456_78_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/pointwise_769_asymmetric_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/pointwise_769_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/pointwise_acc_montgomery_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/pointwise_montgomery_dilithium_opt_m7.s
DILITHIUM_ARMV7M_ASMS += $(DILITHIUM_ARMV7M_SLOTHY_ASM_OPT)/reduce32_dilithium_opt_m7.s
