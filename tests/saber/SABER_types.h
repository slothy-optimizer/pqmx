#ifndef SABER_TYPES_H
#define SABER_TYPES_H

#include "test_config.h"
#include <stdint.h>

#include "SABER_params.h"

/* For NTT-based polynomial multiplication, we want to work
 * with 32-bit coefficients exclusively. */
#if defined(USE_POLY_MUL_NTT_MVE) || \
    defined(USE_POLY_MUL_NTT_M4)
typedef int32_t saber_coeff_t;
#define debug_print_buf_saber_u debug_print_buf_u32
#define debug_print_buf_saber_s debug_print_buf_s32
#else
/* For Toom-Cook/Karatsuba, use native 16-bit coefficients */
typedef uint16_t saber_coeff_t;
#define debug_print_buf_saber_u debug_print_buf_u16
#define debug_print_buf_saber_s debug_print_buf_s16
#endif

typedef saber_coeff_t saber_mat_t[SABER_L][SABER_L][SABER_N];
typedef saber_coeff_t saber_vec_t[SABER_L][SABER_N];
typedef saber_coeff_t saber_pol_t[SABER_N];

#if defined(USE_POLY_MUL_NTT_MVE)
#if defined(USE_NTT_INCOMPLETE)
typedef int32_t saber_vec_ntt_t [SABER_L][2*SABER_N];
#else
typedef int32_t saber_vec_ntt_t [SABER_L][SABER_N];
#endif /* USE_NTT_INCOMPLETE   */
#endif /* USE_POLY_MUL_NTT_MVE */

#if defined(USE_POLY_MUL_STRIDING_TC_KARA_MVE)
#define POLY_DEG     256
#define TC4_DEG      ((256*7)/4)   // == 448
#define TC4_KARA_DEG (TC4_DEG*3)/2 // == 672
#define EVAL_DEG     TC4_KARA_DEG  // == 672
#if defined(USE_TC_KARA_LAZY_INTERPOLATION)
typedef uint16_t saber_vec_eval_t[SABER_L][EVAL_DEG];
#endif
#endif

#endif /* SABER_TYPES_H */
