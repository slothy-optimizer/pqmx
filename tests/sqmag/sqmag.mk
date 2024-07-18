# Test name - needs to match the directory name
TESTS += sqmag

# All further variables must be prefixed with the capitalized test name

# Platforms this test should run on (matching the directory name in envs/)
SQMAG_PLATFORMS += m55-an547
SQMAG_PLATFORMS += m85-an555

# C sources required for this test
SQMAG_SOURCES += main.c

# Assembly sources required for this test
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M55_unroll1.s 
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M55_unroll2.s 
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M55_unroll4.s 
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M85_unroll1.s 
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M85_unroll2.s
SQMAG_ASMS += cmplx_mag_sqr_fx_opt_M85_unroll4.s
SQMAG_ASMS += cmplx_mag_sqr_fx.s