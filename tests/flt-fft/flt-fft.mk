# Test name - needs to match the directory name
TESTS += flt-fft

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
FLT_FFT_PLATFORMS += m55-an547
FLT_FFT_PLATFORMS += m85-an555
FLT_FFT_PLATFORMS += ek-ra8m1

# C sources required for this test
FLT_FFT_SOURCES += main.c

# Assembly sources required for this test
FLT_FFT_ASM_SLOTHY_DIR = ../../slothy/

FLT_FFT_SLOTHY_ASM_OPT = $(FLT_FFT_ASM_SLOTHY_DIR)/examples/opt/armv8m/flt_r4_fft

FLT_FFT_ASMS += $(FLT_FFT_SLOTHY_ASM_OPT)/base_ref.s
FLT_FFT_ASMS += $(FLT_FFT_SLOTHY_ASM_OPT)/floatingpoint_radix4_fft_opt_M55.s
FLT_FFT_ASMS += $(FLT_FFT_SLOTHY_ASM_OPT)/floatingpoint_radix4_fft_opt_M85.s

