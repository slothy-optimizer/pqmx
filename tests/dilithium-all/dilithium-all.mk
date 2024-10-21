# Test name - needs to match the directory name
TESTS += dilithium-all

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
DILITHIUM_ALL_PLATFORMS += m7-an500
DILITHIUM_ALL_PLATFORMS += nucleo-f767zi

# C sources required for this test
DILITHIUM_ALL_SOURCES += main.c
DILITHIUM_ALL_SOURCES += ref.c

# Assembly sources required for this test
DILITHIUM_ALL_ASM_DIR = ../../asm/manual/dilithium-all
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/basemul_257_asymmetric_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/basemul_257_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/caddq_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/fnt_257_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ifnt_257_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/intt_769_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ntt_769_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ntt_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/intt_dilithium_123_456_78.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_769_asymmetric_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_769_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_acc_montgomery_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_montgomery_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/reduce32_central_dilithium.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/reduce32_dilithium.s

DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/basemul_257_asymmetric_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/basemul_257_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/caddq_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/fnt_257_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ifnt_257_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/intt_769_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ntt_769_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/ntt_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/intt_dilithium_123_456_78_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_769_asymmetric_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_769_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_acc_montgomery_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/pointwise_montgomery_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/reduce32_central_dilithium_opt_m7.s
DILITHIUM_ALL_ASMS += $(DILITHIUM_ALL_ASM_DIR)/reduce32_dilithium_opt_m7.s
