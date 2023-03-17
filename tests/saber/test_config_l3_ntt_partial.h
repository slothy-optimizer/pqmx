#if !defined(SABER_TEST_CONFIG_H)
#define SABER_TEST_CONFIG_H

/*
 * Security level
 *
 * Uncoment exactly one of the following three lines.
 */

//#define SABER_L 2  /* LightSaber */
#define SABER_L 3    /* Saber */
//#define SABER_L 4  /* FireSaber */

/*
 * Implementation strategy
 *
 * Uncomment exactly one of those to choose the
 * polynomial multiplication strategy to use.
 */

//#define USE_POLY_MUL_REF_C                      /* C reference implementation based on Toom-Cook + Karatsuba */
//#define USE_POLY_MUL_CLASSIC_TC_KARA_M4
//#define USE_POLY_MUL_STRIDING_TC_KARA_M4
//#define USE_POLY_MUL_STRIDING_TC_KARA_MVE         /* Optimized MVE-assembly for Toom-Cook + Karatsuba */
//#define USE_POLY_MUL_NTT_M4
#define USE_POLY_MUL_NTT_MVE                      /* Optimized MVE-assembly for full and partial NTT */

/*
 * Sub-configurations per approach
 */

/* Configuration for USE_POLY_MUL_STRIDING_TC_KARA_MVE */
#define USE_TC_KARA_LAZY_INTERPOLATION

/* Configuration for USE_POLY_MUL_CLASSIC_TC_KARA_M4 */


/* Configuration for USE_POLY_MUL_STRIDING_TC_KARA_M4 */


/* Configuration for USE_POLY_MUL_STRIDING_TC_KARA_MVE */


/* Configuration for USE_POLY_MUL_NTT_M4 */


/* Configuration for USE_POLY_MUL_NTT_MVE */

#define USE_NTT_INCOMPLETE              /* Commented: full NTT, uncommented: partial NTT */
#define USE_NTT_LAZY_INTERPOLATION        /* Outcomment for lazy evaluation */

/*
 * Measurement configuration
 */

#define     RUN_INDCPA_KEM_KEYPAIR
#define MEASURE_INDCPA_KEM_KEYPAIR

#define     RUN_INDCPA_KEM_ENC
#define MEASURE_INDCPA_KEM_ENC

#define     RUN_INDCPA_KEM_DEC
#define MEASURE_INDCPA_KEM_DEC

#define RUN_INDCPA_KEM_CHECK

#define     RUN_INDCCA_KEM_KEYPAIR
#define MEASURE_INDCCA_KEM_KEYPAIR

#define     RUN_INDCCA_KEM_ENC
#define MEASURE_INDCCA_KEM_ENC
#define     RUN_INDCCA_KEM_DEC
#define MEASURE_INDCCA_KEM_DEC

#define RUN_INDCCA_KEM_CHECK

//#define MEASURE_SHAKE128
//#define MEASURE_SHA3_512
//#define MEASURE_SHA3_256

/*
 * Debug configuration
 */

//#define DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE
//#define DEBUG_INDCPA_KEM_ENC_VERBOSE
//#define DEBUG_INDCPA_KEM_DEC_VERBOSE

/*
 * Miscalleneous
 */

/* Use 8-bit packing of secret key, instead of 13-bit packing. */
#define USE_SECRET_KEY_8BIT_PACKING

#endif /* SABER_TEST_CONFIG_H */
