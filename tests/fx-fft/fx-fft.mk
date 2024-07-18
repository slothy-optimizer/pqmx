# Test name - needs to match the directory name
TESTS += fx-fft

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
FX_FFT_PLATFORMS += m55-an547
FX_FFT_PLATFORMS += m85-an555

# C sources required for this test
FX_FFT_SOURCES += main.c
FX_FFT_SOURCES += misc.c


# Assembly sources required for this test
FX_FFT_ASMS += base_concrete.s
FX_FFT_ASMS += base_symbolic.s
FX_FFT_ASMS += fixedpoint_radix4_fft_opt_M55.s
FX_FFT_ASMS += fixedpoint_radix4_fft_opt_M85.s
FX_FFT_ASMS += ref_handwritten_asm.s
FX_FFT_ASMS += ref_intrinsics.s

