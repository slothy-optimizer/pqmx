# Test name - needs to match the directory name
TESTS += flt-fft

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
FLT_FFT_PLATFORMS += m55-an547
FLT_FFT_PLATFORMS += m85-an555

# C sources required for this test
FLT_FFT_SOURCES += main.c

# Assembly sources required for this test
FLT_FFT_ASMS += base_ref.s
FLT_FFT_ASMS += floatingpoint_radix4_fft_opt_M55.s
FLT_FFT_ASMS += floatingpoint_radix4_fft_opt_M85.s

