# Test name - needs to match the directory name
TESTS += fx-fft

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
FX_FFT_PLATFORMS += m55-an547
FX_FFT_PLATFORMS += m85-an555
FX_FFT_PLATFORMS += ek-ra8m1

# C sources required for this test
FX_FFT_SOURCES += main.c

# Assembly sources required for this test
FX_FFT_SLOTHY_DIR = ../../slothy/
FX_FFT_SLOTHY_ASM_NAIVE = $(FX_FFT_SLOTHY_DIR)/examples/naive/armv8m/fx_r4_fft/
FX_FFT_SLOTHY_ASM_OPT = $(FX_FFT_SLOTHY_DIR)/examples/opt/armv8m/fx_r4_fft/

FX_FFT_ASM_DIR = ../../asm/manual/fx_fft

FX_FFT_ASMS += $(FX_FFT_ASM_DIR)/ref_handwritten_asm.s
FX_FFT_ASMS += $(FX_FFT_ASM_DIR)/ref_intrinsics.s



FX_FFT_ASMS += $(FX_FFT_SLOTHY_ASM_OPT)/base_concrete.s
FX_FFT_ASMS += $(FX_FFT_SLOTHY_ASM_OPT)/base_symbolic.s
FX_FFT_ASMS += $(FX_FFT_SLOTHY_ASM_OPT)/fixedpoint_radix4_fft_opt_M55.s
FX_FFT_ASMS += $(FX_FFT_SLOTHY_ASM_OPT)/fixedpoint_radix4_fft_opt_M85.s

