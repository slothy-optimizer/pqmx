# Test name - needs to match the directory name
TESTS += kyber-armv7m

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
KYBER_ARMV7M_PLATFORMS += m7-an500
KYBER_ARMV7M_PLATFORMS += nucleo-f767zi
KYBER_ARMV7M_PLATFORMS += stm32f4discovery

# C sources required for this test
KYBER_ARMV7M_SOURCES += main.c
KYBER_ARMV7M_SOURCES += fips202.c

# Keccak source
KYBER_ARMV7M_ASMS +=  ../../slothy/examples/opt/armv7m/keccak/keccakf1600_adomnicai_m4_opt_m7.s
KYBER_ARMV7M_ASMS +=  keccakf1600-misc.s

# Assembly sources required for this test
KYBER_ARMV7M_SLOTHY_DIR = ../../slothy/
KYBER_ARMV7M_SLOTHY_ASM_NAIVE = $(KYBER_ARMV7M_SLOTHY_DIR)/examples/naive/armv7m/kyber
KYBER_ARMV7M_SLOTHY_ASM_OPT = $(KYBER_ARMV7M_SLOTHY_DIR)/examples/opt/armv7m/kyber

KYBER_ARMV7M_ASM_DIR = ../../asm/manual/kyber-armv7m


KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/ntt_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/ntt_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/intt_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/intt_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/add_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/add_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/sub_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/sub_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/barrett_reduce_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/barrett_reduce_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/fromplant_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/fromplant_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/basemul_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_acc_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/basemul_acc_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_acc_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/basemul_acc_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/frombytes_mul_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/frombytes_mul_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/frombytes_mul_acc_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/frombytes_mul_acc_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/frombytes_mul_acc_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/frombytes_mul_acc_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/basemul_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/basemul_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/basemul_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/frombytes_mul_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/frombytes_mul_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/frombytes_mul_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/frombytes_mul_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_acc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_acc_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_cache_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_cache_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_cache_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_cache_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_cache_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_cache_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_opt_16_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_opt_16_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_opt_32_16_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_opt_32_16_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_asm_opt_32_32_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_asm_opt_32_32_kyber_opt_m7.s

KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_NAIVE)/matacc_kyber.s
KYBER_ARMV7M_ASMS += $(KYBER_ARMV7M_SLOTHY_ASM_OPT)/matacc_kyber_opt_m7.s