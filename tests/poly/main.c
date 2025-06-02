/*
 * Copyright (c) 2021 Arm Limited
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

#include <hal.h>
#include "misc.h"
#include <poly.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "karatsuba_const.h"
#include "karatsuba.h"

#include "montgomery.h"

void twisted_cyclic_mul_acc_deg4_u32_mve_alt(int32_t *, int32_t *, int32_t *, int32_t *);
void twisted_cyclic_mul_deg4_u32_mve_alt(int32_t *, int32_t *, int32_t *, int32_t *);
void ntt_u32_33556993_28678040_incomplete_double(int32_t *, int32_t *);
void montgomery_pt_acc_u32_mve(int32_t *, int32_t *, int32_t *, int32_t *);
void montgomery_pt_u32_mve(int32_t *, int32_t *, int32_t *, int32_t *);
void poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd_handshuffle(uint16_t *, uint16_t *, uint16_t *);
void poly_u16_mul_32_anticyclic_karatsuba_mve_simd_handshuffle(uint16_t *, uint16_t *, uint16_t *);
void poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve(uint16_t *, uint16_t *);
void poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve(uint16_t *, uint16_t *);

/*
 * Configure which tests to build and run
 *
 * Comment out tests you don't need, and they'll be
 * removed at compile-time. This is useful to generate
 * minimal test images, esp. if simulation is slow.
 */

#define TEST_POLY_FWD_TC_KARA
#define TEST_MAT_VEC_MUL_TC_KARA
#define TEST_POLY_MUL_NTT                /* NOTE: Need to set `inverse_scaling=32` for this */
#define TEST_POLY_MUL_NTT_INCOMPLETE     /* NOTE: Need to set `inverse_scaling=32` for this */
#define TEST_MAT_VEC_MUL_NTT             /* NOTE: Need to set `inverse_scaling=32` for this */
#define TEST_MAT_VEC_MUL_NTT_INCOMPLETE  /* NOTE: Need to set `inverse_scaling=32` for this */

//#define TEST_CORE_ONLY        /* Enable to build for minimal image
//                               * for performance analysis.                 */

#define MAT_DIM   2
#define POLY_DEG  256

#define MATRIX_ENTRIES (POLY_DEG * MAT_DIM * MAT_DIM)
#define VECTOR_ENTRIES (POLY_DEG * MAT_DIM)

/* Generate some schoolbook multiplications  */

MAKE_SCHOOLBOOK(16,16)
MAKE_SCHOOLBOOK(16,32)
MAKE_SCHOOLBOOK(16,64)
MAKE_SCHOOLBOOK(16,128)
MAKE_SCHOOLBOOK(16,192)
MAKE_SCHOOLBOOK(16,208)
MAKE_SCHOOLBOOK(16,256)
MAKE_SCHOOLBOOK(16,512)
MAKE_SCHOOLBOOK(16,768)
MAKE_SCHOOLBOOK(16,832)

/* Anticyclic unsigned schoolbook multiplications */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         ( (idx) < (dim) ? (idx) : (idx) - (dim) )
#define SCHOOLBOOK_FACTOR(dim,idx)  ( (idx) < (dim) ? 1   : -1        )

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)   WRAP_INDEX((dim),(idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)  WRAP_INDEX((dim),(idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)  WRAP_INDEX((dim),(idx))

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _C )

MAKE_SCHOOLBOOK(16,256)

#undef C_SCHOOLBOOK_SYMBOL_NAME
#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_s, BITWIDTH, _mul_anticyclic_, DIM, _C )

#define SCHOOLBOOK_REDUCTION(TMP,MODULUS) mod_red_s32( tmp, modulus )

MAKE_INT_SCHOOLBOOK(32,256)

#if defined(TEST_POLY_FWD_TC_KARA)    || \
    defined(TEST_MAT_VEC_MUL_TC_KARA)

#define TC4_DEG      ((256*7)/4)   // == 448
#define TC4_KARA_DEG (TC4_DEG*3)/2 // == 672
#define EVAL_DEG     TC4_KARA_DEG  // == 672

#if (KARATSUBA_FWD_ITERATIONS != 7)
#error Karatsuba configuration mismatch
#endif

#define toom4_fwd poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve
#define kara_fwd  karatsuba_fwd_dual_32_loop
static inline void poly_u16_256_tc4_kara_fwd( uint16_t src[POLY_DEG],
                                              uint16_t dst[EVAL_DEG] )
{
    /* TODO: Ideally, the whole evaluation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t tc4[TC4_DEG];
    toom4_fwd( src, tc4 );
    kara_fwd ( tc4, dst );
}

#define toom4_inv poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve
#define kara_inv  karatsuba_inv_dual_32_loop
static inline void poly_u16_256_tc4_kara_inv( uint16_t src[EVAL_DEG],
                                              uint16_t dst[POLY_DEG] )
{
    /* TODO: Ideally, the whole interpolation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t tc4[TC4_DEG];
    kara_inv ( src, tc4 );
    toom4_inv( tc4, dst );
}

static inline void poly_u16_256_tc4_kara_fwd_mat( uint16_t src[MAT_DIM][MAT_DIM][POLY_DEG],
                                                  uint16_t dst[MAT_DIM][MAT_DIM][EVAL_DEG] )
{
    for( int i=0; i < MAT_DIM; i++ )
        for( int j=0; j < MAT_DIM; j++ )
            poly_u16_256_tc4_kara_fwd( src[i][j], dst[i][j] );
}

static inline void poly_u16_256_tc4_kara_fwd_vec( uint16_t src[MAT_DIM][POLY_DEG],
                                                  uint16_t dst[MAT_DIM][EVAL_DEG] )
{
    for( int i=0; i < MAT_DIM; i++ )
        poly_u16_256_tc4_kara_fwd( src[i], dst[i] );
}

static inline void poly_u16_256_tc4_kara_inv_mat( uint16_t src[MAT_DIM][MAT_DIM][EVAL_DEG],
                                                  uint16_t dst[MAT_DIM][MAT_DIM][POLY_DEG] )
{
    for( int i=0; i < MAT_DIM; i++ )
        for( int j=0; j < MAT_DIM; j++ )
            poly_u16_256_tc4_kara_inv( src[i][j], dst[i][j] );
}

static inline void poly_u16_256_tc4_kara_inv_vec( uint16_t src[MAT_DIM][EVAL_DEG],
                                                  uint16_t dst[MAT_DIM][POLY_DEG] )
{
    for( int i=0; i < MAT_DIM; i++ )
        poly_u16_256_tc4_kara_inv( src[i], dst[i] );
}

/* Autogenerated variants -- need handshuffling */
//#define poly_deg32_pointmul     poly_u16_mul_32_anticyclic_karatsuba_mve_simd
//#define poly_deg32_pointmul_acc poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd

/* Hand-shuffled variants */
#define poly_deg32_pointmul     poly_u16_mul_32_anticyclic_karatsuba_mve_simd_handshuffle
#define poly_deg32_pointmul_acc poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd_handshuffle

/* Vector-Vector dot product, inputs in evaluation domain */
void vec_vec_dot_eval_tc_kara( uint16_t v[MAT_DIM][EVAL_DEG],
                               uint16_t w[MAT_DIM][EVAL_DEG],
                               uint16_t dst[EVAL_DEG] )
{
    poly_deg32_pointmul( dst, v[0], w[0] );
    for( unsigned i = 1; i < MAT_DIM; i++ )
        poly_deg32_pointmul_acc( dst, v[i], w[i] );
}

/* Vector-Vector accumulate, assuming one vector in expanded form. */
void vec_vec_dot_acc_eval_tc_kara( uint16_t v[MAT_DIM][EVAL_DEG],
                                   uint16_t w[MAT_DIM][EVAL_DEG],
                                   uint16_t dst[EVAL_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        poly_deg32_pointmul_acc( dst, v[i], w[i] );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
void vec_vec_dot_u16_tc_kara( uint16_t v[MAT_DIM][POLY_DEG],
                              uint16_t w[MAT_DIM][POLY_DEG],
                              uint16_t dst[POLY_DEG] )
{
    uint16_t ev_v[MAT_DIM][EVAL_DEG];
    uint16_t ev_w[MAT_DIM][EVAL_DEG];
    uint16_t ev_dst[EVAL_DEG];
    /* Transform vectors into evaluation domain. */
    poly_u16_256_tc4_kara_fwd_vec( v, ev_v );
    poly_u16_256_tc4_kara_fwd_vec( w, ev_w );
    /* Compute vector-vector product in evaluation domain. */
    vec_vec_dot_eval_tc_kara( ev_v, ev_w, ev_dst );
    /* Transform result back into polynomial domain. */
    poly_u16_256_tc4_kara_inv( ev_dst, dst );
}

/* Matrix-Vector product, inputs in polynomial domain */
void mat_vec_mul_u16_tc_kara( uint16_t A[MAT_DIM][MAT_DIM][POLY_DEG],
                              uint16_t v[MAT_DIM][POLY_DEG],
                              uint16_t dst[MAT_DIM][POLY_DEG] )
{
    uint16_t ev_A[MAT_DIM][MAT_DIM][EVAL_DEG];
    uint16_t ev_v[MAT_DIM][EVAL_DEG];
    uint16_t ev_dst[MAT_DIM][EVAL_DEG];
    /* Transform matrix and vector into evaluation domain. */
    poly_u16_256_tc4_kara_fwd_mat( A, ev_A );
    poly_u16_256_tc4_kara_fwd_vec( v, ev_v );
    /* Compute matrix-vector product in evaluation domain. */
    for( unsigned i = 0; i < MAT_DIM; i++ )
        vec_vec_dot_eval_tc_kara( ev_A[i], ev_v, ev_dst[i] );
    /* Transform result back into polynomial domain. */
    poly_u16_256_tc4_kara_inv_vec( ev_dst, dst );
}

static inline void poly_u16_256_tc4_kara_full( uint16_t src_a[POLY_DEG],
                                               uint16_t src_b[POLY_DEG],
                                               uint16_t dst[POLY_DEG] )
{
    /* TODO: Ideally, the whole interpolation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t ev_a[EVAL_DEG];
    uint16_t ev_b[EVAL_DEG];
    uint16_t ev_dst[EVAL_DEG];
    poly_u16_256_tc4_kara_fwd( src_a, ev_a );
    poly_u16_256_tc4_kara_fwd( src_b, ev_b );
    poly_deg32_pointmul( ev_dst, ev_a, ev_b );
    poly_u16_256_tc4_kara_inv( ev_dst, dst );
}

#if !defined(TEST_CORE_ONLY)
int test_poly_fwd_tc_kara(void)
{
    debug_test_start( "Test: degree-256 Toom-Cook + Karatsuba evaluation" );

    uint16_t in_a [POLY_DEG];
    uint16_t in_b [POLY_DEG];
    uint16_t inv_c[POLY_DEG];

    uint16_t ref_C[POLY_DEG];

    fill_random_u16( in_a, POLY_DEG );
    fill_random_u16( in_b, POLY_DEG );

    //memset( in_a, 0, sizeof( in_a ) );
    //memset( in_b, 0, sizeof( in_a ) );
    //in_a[0] = 1;
    //in_b[0] = 1;

#define BIT_PRECISION 13
    mask_poly( in_a, POLY_DEG, BIT_PRECISION );
    mask_poly( in_b, POLY_DEG, BIT_PRECISION );

    /* Reference: C-based anticyclic polynomial multiplication */
    poly_u16_mul_anticyclic_256_C( ref_C, in_a, in_b );

    measure_start();
    poly_u16_256_tc4_kara_full( in_a, in_b, inv_c );
    measure_end();

    mask_poly( inv_c, POLY_DEG, BIT_PRECISION );
    mask_poly( ref_C, POLY_DEG, BIT_PRECISION );

    if( compare_buf_u16( ref_C, inv_c, POLY_DEG ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_u16( ref_C, POLY_DEG, "Ref: " );
        debug_print_buf_u16( inv_c, POLY_DEG, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else
int test_poly_fwd_tc_kara(void)
{
    uint16_t in_a [POLY_DEG];
    uint16_t in_b [POLY_DEG];
    uint16_t inv_c[POLY_DEG];

    debug_test_start( "Test: degree-256 Toom-Cook + Karatsuba evaluation" );
    measure_start();
    poly_u16_256_tc4_kara_full( in_a, in_b, inv_c );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_POLY_FWD_TC_KARA */

#if defined(TEST_MAT_VEC_MUL_TC_KARA)
#if !defined(TEST_CORE_ONLY)
/*
 * C Reference implementations
 */

void vec_vec_dot_u16_C( uint16_t v[MAT_DIM][POLY_DEG],
                        uint16_t w[MAT_DIM][POLY_DEG],
                        uint16_t dst[POLY_DEG] )
{
    uint16_t tmp[POLY_DEG] = { 0 };
    for( unsigned i = 0; i < MAT_DIM; i++ )
    {
        poly_u16_mul_anticyclic_256_C( tmp, v[i], w[i] );
        mod_add_buf_u16( tmp, dst, dst, POLY_DEG );
    }
}

void mat_vec_mul_u16_C( uint16_t A  [MAT_DIM][MAT_DIM][POLY_DEG],
                        uint16_t w  [MAT_DIM][POLY_DEG],
                        uint16_t dst[MAT_DIM][POLY_DEG] )
{
    uint16_t tmp[POLY_DEG] = { 0 };
    for( unsigned i = 0; i < MAT_DIM; i++ )
        vec_vec_dot_u16_C( A[i], w, dst[i] );
}


int test_mat_vec_mul_tc_kara(void)
{
    debug_test_start( "Test: Matrix-Vector multiplication via Toom-Cook + Karatsuba" );

    uint16_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    uint16_t v[MAT_DIM][POLY_DEG];
    uint16_t dst_C  [MAT_DIM][POLY_DEG];
    uint16_t dst_mve[MAT_DIM][POLY_DEG];

    memset( A, 0, sizeof( A ) );
    memset( v, 0, sizeof( v ) );
    memset( dst_C, 0, sizeof( dst_C ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u16( (uint16_t *)A, MATRIX_ENTRIES );
    fill_random_u16( (uint16_t *)v, VECTOR_ENTRIES );

    /* Reference: C-based anticyclic schoolbook multiplication. */
    mat_vec_mul_u16_C( A, v, dst_C );

    /* MVE */
    //measure_start();
    mat_vec_mul_u16_tc_kara( A, v, dst_mve );
    //measure_end();

    mask_poly( (uint16_t *)dst_C,   VECTOR_ENTRIES, BIT_PRECISION );
    mask_poly( (uint16_t *)dst_mve, VECTOR_ENTRIES, BIT_PRECISION );

    if( compare_buf_u16( (uint16_t *)dst_mve, (uint16_t *)dst_C, VECTOR_ENTRIES ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_u16( (uint16_t *)dst_C,   VECTOR_ENTRIES, "Ref: " );
        debug_print_buf_u16( (uint16_t *)dst_mve, VECTOR_ENTRIES, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_mat_vec_mul_tc_kara(void)
{
    int32_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    int32_t v[MAT_DIM][POLY_DEG];
    int32_t dst_mve[MAT_DIM][POLY_DEG];
    measure_start();
    mat_vec_mul_u16_tc_kara( A, v, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_MAT_VEC_MUL_TC_KARA */

#if defined(TEST_POLY_MUL_NTT)                     || \
    defined(TEST_MAT_VEC_MUL_NTT)                  || \
    defined(TEST_MAT_VEC_MUL_NTT_INCOMPLETE)       || \
    defined(TEST_POLY_MUL_NTT_INCOMPLETE)

#define POLY_DEG     256
#define EVAL_DEG     256

void ntt_u32_33556993_28678040(int32_t *src);
void ntt_u32_33556993_28678040_incomplete(int32_t *src);

void inv_ntt_u32_33556993_28678040(int32_t *src);
void inv_ntt_u32_33556993_28678040_incomplete(int32_t *src);

#define ntt_full           ntt_u32_33556993_28678040
#define inv_ntt_full       inv_ntt_u32_33556993_28678040

#define ntt_incomplete        ntt_u32_33556993_28678040_incomplete
#define ntt_incomplete_double ntt_u32_33556993_28678040_incomplete_double
#define inv_ntt_incomplete    inv_ntt_u32_33556993_28678040_incomplete

int32_t base_root       = 28678040; // 512-th root of unity
int32_t modulus         = MODULUS_Q32;
int32_t modulus_inv_u32 = MODULUS_Q32_INV_U32;

void vec_vec_dot_u32_C( int32_t v[MAT_DIM][POLY_DEG],
                        int32_t w[MAT_DIM][POLY_DEG],
                        int32_t dst[POLY_DEG] )
{
    int32_t tmp[POLY_DEG] = { 0 };
    for( unsigned i = 0; i < MAT_DIM; i++ )
    {
        poly_s32_mul_anticyclic_256_C( tmp, v[i], w[i], modulus );
        mod_add_buf_s32( tmp, dst, dst, POLY_DEG, modulus );
    }

    mod_reduce_buf_s32_signed( dst, POLY_DEG, modulus );
}

void mat_vec_mul_u32_C( int32_t A  [MAT_DIM][MAT_DIM][POLY_DEG],
                        int32_t w  [MAT_DIM][POLY_DEG],
                        int32_t dst[MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        vec_vec_dot_u32_C( A[i], w, dst[i] );

    mod_reduce_buf_s32_signed( (int32_t *)dst, VECTOR_ENTRIES, modulus );
}

void rev_4_u32( int32_t *src, unsigned size )
{
    for( unsigned idx=0; idx < size; idx += 4 )
    {
        int32_t s0, s1, s2, s3;
        s0 = src[idx + 0];
        s1 = src[idx + 1];
        s2 = src[idx + 2];
        s3 = src[idx + 3];
        src[idx + 0] = s3;
        src[idx + 1] = s2;
        src[idx + 2] = s1;
        src[idx + 3] = s0;
    }
}

/*
 * Polynomial multiplication, Vector-Vector and Matrix-Vector
 * multiplication based on a full NTT and point multiplication.
 */

/* Polynomial multiplication */
void poly_u32_mul_256_ntt_complete_mve( int32_t src_A[POLY_DEG],
                                    int32_t src_B[POLY_DEG],
                                    int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    ntt_full( src_A );
    ntt_full( src_B );
    montgomery_pt_u32_mve( src_A, src_B, dst, params );
    inv_ntt_full( dst );
}

/* Vector dot product */
void vec_vec_dot_ntt( int32_t v[MAT_DIM][POLY_DEG],
                      int32_t w[MAT_DIM][POLY_DEG],
                      int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    montgomery_pt_u32_mve( v[0], w[0], dst, params );
    for( unsigned i = 1; i < MAT_DIM; i++ )
        montgomery_pt_acc_u32_mve( v[i], w[i], dst, params );
}

/* Vector dot product accumulate */
void vec_vec_dot_acc_ntt( int32_t v[MAT_DIM][POLY_DEG],
                          int32_t w[MAT_DIM][POLY_DEG],
                          int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    for( unsigned i = 0; i < MAT_DIM; i++ )
        montgomery_pt_acc_u32_mve( v[i], w[i], dst, params );
}

/* Forward matrix-NTT */
void ntt_full_mat( int32_t A[MAT_DIM][MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        for( unsigned j = 0; j < MAT_DIM; j++ )
            ntt_full( A[i][j] );
}

/* Forward vector-NTT */
void ntt_full_vec( int32_t v[MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        ntt_full( v[i] );
}

/* Inverse vector-NTT */
void inv_ntt_full_vec( int32_t v[MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        inv_ntt_full( v[i] );
}

/* Vector-Vector product */
void vec_vec_dot_u32_full( int32_t v[MAT_DIM][POLY_DEG],
                           int32_t w[MAT_DIM][POLY_DEG],
                           int32_t dst[POLY_DEG] )
{
    ntt_full_vec( v );
    ntt_full_vec( w );
    vec_vec_dot_ntt( v, w, dst );
    inv_ntt_full( dst );
}

/* Matrix-Vector product */
void mat_vec_mul_u32_full( int32_t A[MAT_DIM][MAT_DIM][POLY_DEG],
                           int32_t v[MAT_DIM][POLY_DEG],
                           int32_t dst[MAT_DIM][POLY_DEG] )
{
    ntt_full_mat( A );
    ntt_full_vec( v );
    for( unsigned i = 0; i < MAT_DIM; i++ )
        vec_vec_dot_ntt( A[i], v, dst[i] );
    inv_ntt_full_vec( dst );
}

/*
 * Polynomial multiplication, Vector-Vector and Matrix-Vector
 * multiplication based on an incomplete NTT and deg-4 schoolbook.
 */

/* Polynomial multiplication */
void poly_u32_mul_256_ntt_incomplete_mve( int32_t src_A[POLY_DEG],
                                          int32_t src_B[POLY_DEG],
                                          int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    int32_t src_B_ntt_double[2*POLY_DEG];
    ntt_incomplete( src_A );
    ntt_incomplete_double( src_B, src_B_ntt_double );
    twisted_cyclic_mul_deg4_u32_mve_alt( src_A, src_B_ntt_double, dst, params );
    inv_ntt_incomplete( dst );
}

/* Vector-Vector product, assuming one vector in expanded form. */
void vec_vec_dot_ntt_incomplete( int32_t v[MAT_DIM][POLY_DEG],
                                 int32_t w[MAT_DIM][2*POLY_DEG],
                                 int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    twisted_cyclic_mul_deg4_u32_mve_alt( v[0], w[0], dst, params);
    for( unsigned i = 1; i < MAT_DIM; i++ )
        twisted_cyclic_mul_acc_deg4_u32_mve_alt( v[i], w[i], dst, params );
}

/* Vector-Vector accumulate, assuming one vector in expanded form. */
void vec_vec_dot_acc_ntt_incomplete( int32_t v[MAT_DIM][POLY_DEG],
                                     int32_t w[MAT_DIM][2*POLY_DEG],
                                     int32_t dst[POLY_DEG] )
{
    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    for( unsigned i = 0; i < MAT_DIM; i++ )
        twisted_cyclic_mul_acc_deg4_u32_mve_alt( v[i], w[i], dst, params );
}

/* Incomplete NTT for full matrix. */
void ntt_incomplete_mat( int32_t A[MAT_DIM][MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        for( unsigned j = 0; j < MAT_DIM; j++ )
            ntt_incomplete( A[i][j] );
}

/* Incomplete non-expanding NTT for vector. */
void ntt_incomplete_vec( int32_t v[MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        ntt_incomplete( v[i] );
}

/* Incomplete expanding NTT for vector. */
void ntt_incomplete_expand_vec( int32_t v[MAT_DIM][POLY_DEG],
                                int32_t w[MAT_DIM][2*POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        ntt_incomplete_double( v[i], w[i] );
}

/* Inverse NTT for vector */
void inv_ntt_incomplete_vec( int32_t v[MAT_DIM][POLY_DEG] )
{
    for( unsigned i = 0; i < MAT_DIM; i++ )
        inv_ntt_incomplete( v[i] );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
void vec_vec_dot_u32_incomplete( int32_t v[MAT_DIM][POLY_DEG],
                                 int32_t w[MAT_DIM][POLY_DEG],
                                 int32_t dst[POLY_DEG] )
{
    int32_t w_expand[MAT_DIM][2*POLY_DEG];
    ntt_incomplete_expand_vec( w, w_expand );
    ntt_incomplete_vec( v );
    vec_vec_dot_ntt_incomplete( v, w_expand, dst );
    inv_ntt_incomplete( dst );
}

/* Matrix-Vector product, inputs in polynomial domain */
void mat_vec_mul_u32_incomplete( int32_t A[MAT_DIM][MAT_DIM][POLY_DEG],
                                 int32_t v[MAT_DIM][POLY_DEG],
                                 int32_t dst[MAT_DIM][POLY_DEG] )
{
    int32_t v_expand[MAT_DIM][2*POLY_DEG];
    ntt_incomplete_mat( A );
    ntt_incomplete_expand_vec( v, v_expand );
    for( unsigned i = 0; i < MAT_DIM; i++ )
        vec_vec_dot_ntt_incomplete( A[i], v_expand, dst[i] );
    inv_ntt_incomplete_vec( dst );
}

#if defined(TEST_MAT_VEC_MUL_NTT)
#if !defined(TEST_CORE_ONLY)
int test_mat_vec_mul_ntt(void)
{
    debug_test_start( "Test: Matrix-Vector multiplication via NTT" );

    int32_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    int32_t v[MAT_DIM][POLY_DEG];
    int32_t dst_C  [MAT_DIM][POLY_DEG];
    int32_t dst_mve[MAT_DIM][POLY_DEG];

    memset( A, 0, sizeof( A ) );
    memset( v, 0, sizeof( v ) );
    memset( dst_C, 0, sizeof( dst_C ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    srand(time(NULL));

    fill_random_u32( (uint32_t *)A, MATRIX_ENTRIES );
    fill_random_u32( (uint32_t *)v, VECTOR_ENTRIES );
    mod_reduce_buf_s32( (int32_t *)A, MATRIX_ENTRIES, modulus );
    mod_reduce_buf_s32( (int32_t *)v, VECTOR_ENTRIES, modulus );

    /* Reference: C-based anticyclic schoolbook multiplication. */
    mat_vec_mul_u32_C( A, v, dst_C );

    /* This is now done in the NTT, see the `inverse_scaling` field. */
    /*
      int32_t one_half = ( modulus + 1 ) / 2;
      int32_t scale = mod_pow_s32( one_half, 32, modulus );
      mod_mul_buf_const_s32( dst_C, scale, dst_C, VECTOR_ENTRIES, modulus );
      mod_reduce_buf_s32( dst_C, VECTOR_ENTRIES, modulus );
    */

    /* MVE */
    //measure_start();
    mat_vec_mul_u32_full( A, v, dst_mve );
    //measure_end();

    if( compare_buf_s32( (int32_t *)dst_mve, (int32_t *)dst_C, VECTOR_ENTRIES ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s32( (int32_t *)dst_C, VECTOR_ENTRIES, "Ref: " );
        debug_print_buf_s32( (int32_t *)dst_mve, VECTOR_ENTRIES, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_mat_vec_mul_ntt(void)
{
    int32_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    int32_t v[MAT_DIM][POLY_DEG];
    int32_t dst_mve[MAT_DIM][POLY_DEG];
    measure_start();
    mat_vec_mul_u32_full( A, v, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_MAT_VEC_MUL_NTT */

#if defined(TEST_MAT_VEC_MUL_NTT_INCOMPLETE)
#if !defined(TEST_CORE_ONLY)
int test_mat_vec_mul_ntt_incomplete(void)
{
    debug_test_start( "Test: Matrix-Vector multiplication via incomplete NTT" );

    int32_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    int32_t v[MAT_DIM][POLY_DEG];
    int32_t dst_C  [MAT_DIM][POLY_DEG];
    int32_t dst_mve[MAT_DIM][POLY_DEG];

    memset( A, 0, sizeof( A ) );
    memset( v, 0, sizeof( v ) );
    memset( dst_C, 0, sizeof( dst_C ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( (uint32_t *)A, MATRIX_ENTRIES );
    fill_random_u32( (uint32_t *)v, VECTOR_ENTRIES );
    mod_reduce_buf_s32_signed( (int32_t *)A, MATRIX_ENTRIES, modulus );
    mod_reduce_buf_s32_signed( (int32_t *)v, VECTOR_ENTRIES, modulus );

    //debug_print_buf_s32( A, VECTOR_ENTRIES, "A: " );
    //debug_print_buf_s32( v, VECTOR_ENTRIES, "v: " );

    /* Reference: C-based anticyclic schoolbook multiplication. */
    mat_vec_mul_u32_C( A, v, dst_C );

    // int32_t one_half = ( modulus + 1 ) / 2;
    // int32_t scale = mod_pow_s32( one_half, 32, modulus );
    //mod_mul_buf_const_s32( dst_C, scale, dst_C, VECTOR_ENTRIES, modulus );
    //mod_reduce_buf_s32( dst_C, VECTOR_ENTRIES, modulus );

    rev_4_u32( (int32_t *)v, VECTOR_ENTRIES );

    /* MVE */
    measure_start();
    mat_vec_mul_u32_incomplete( A, v, dst_mve );
    measure_end();

    //debug_print_buf_s32( dst_C, VECTOR_ENTRIES, "Ref: " );
    //debug_print_buf_s32( dst_mve, VECTOR_ENTRIES, "MVE: " );

    if( compare_buf_s32( (int32_t *)dst_mve, (int32_t *)dst_C, VECTOR_ENTRIES ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s32( (int32_t *)dst_C, VECTOR_ENTRIES, "Ref: " );
        debug_print_buf_s32( (int32_t *)dst_mve, VECTOR_ENTRIES, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_mat_vec_mul_ntt_incomplete(void)
{
    int32_t A[MAT_DIM][MAT_DIM][POLY_DEG];
    int32_t v[MAT_DIM][POLY_DEG];
    int32_t dst_mve[MAT_DIM][POLY_DEG];
    measure_start();
    mat_vec_mul_u32_incomplete( A, v, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_MAT_VEC_MUL_NTT_INCOMPLETE */

#if defined(TEST_POLY_MUL_NTT)
#if !defined(TEST_CORE_ONLY)
int test_poly_mul_ntt()
{
    debug_test_start( "Test: degree-256 polynomial multiplication via NTT" );

    int32_t in_a[POLY_DEG];
    int32_t in_b[POLY_DEG];
    int32_t dst_C  [POLY_DEG];
    int32_t dst_mve[POLY_DEG];

    memset( in_a, 0, sizeof( in_a ) );
    memset( in_b, 0, sizeof( in_b ) );
    memset( dst_C, 0, sizeof( dst_C ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( (uint32_t *)in_a, POLY_DEG );
    fill_random_u32( (uint32_t *)in_b, POLY_DEG );
    mod_reduce_buf_s32( in_a, POLY_DEG, modulus );
    mod_reduce_buf_s32( in_b, POLY_DEG, modulus );

    /* Reference: C-based anticyclic schoolbook multiplication. */
    poly_s32_mul_anticyclic_256_C( dst_C, in_a, in_b, modulus );
    mod_reduce_buf_s32_signed( dst_C, POLY_DEG, modulus );

    /* This can also be done in the NTT, see the `inverse_scaling` field. */
    /* int32_t one_half = ( modulus + 1 ) / 2; */
    /* int32_t scale = mod_pow_s32( one_half, 32, modulus ); */
    /* mod_mul_buf_const_s32( dst_C, scale, dst_C, POLY_DEG, modulus ); */
    /* mod_reduce_buf_s32( dst_C, POLY_DEG, modulus ); */

    mod_reduce_buf_s32_signed( dst_C, POLY_DEG, modulus );

    /* NTT-based negacyclic polynomial multiplication */
    measure_start();
    poly_u32_mul_256_ntt_complete_mve( in_a, in_b, dst_mve );
    measure_end();

    if( compare_buf_s32( dst_mve, dst_C, POLY_DEG ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s32( dst_C, POLY_DEG, "Ref: " );
        debug_print_buf_s32( dst_mve, POLY_DEG, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else
int test_poly_mul_ntt(void)
{
    debug_test_start( "Test: degree-256 polynomial multiplication via NTT" );
    int32_t in_a[POLY_DEG];
    int32_t in_b[POLY_DEG];
    int32_t dst_mve[POLY_DEG];
    measure_start();
    poly_u32_mul_256_ntt_complete_mve( in_a, in_b, dst_mve );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif
#endif /* TEST_POLY_MUL_NTT */

#if defined(TEST_POLY_MUL_NTT_INCOMPLETE)
#if !defined(TEST_CORE_ONLY)
int test_poly_mul_ntt_incomplete(void)
{
    debug_test_start( "Test: degree-256 polynomial multiplication via incomplete NTT" );

    int32_t in_a[POLY_DEG];
    int32_t in_b[POLY_DEG];
    int32_t dst_C  [POLY_DEG];
    int32_t dst_mve[POLY_DEG];

    memset( in_a, 0, sizeof( in_a ) );
    memset( in_b, 0, sizeof( in_b ) );
    memset( dst_C, 0, sizeof( dst_C ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32((uint32_t *) in_a, POLY_DEG );
    fill_random_u32((uint32_t *) in_b, POLY_DEG );
    mod_reduce_buf_s32( in_a, POLY_DEG, modulus );
    mod_reduce_buf_s32( in_b, POLY_DEG, modulus );

    /* Reference: C-based anticyclic schoolbook multiplication. */
    poly_s32_mul_anticyclic_256_C( dst_C, in_a, in_b, modulus );

    /* This can also be done in the NTT, see the `inverse_scaling` field. */
    /* int32_t one_half = ( modulus + 1 ) / 2; */
    /* int32_t scale = mod_pow_s32( one_half, 32, modulus ); */
    /* mod_mul_buf_const_s32( dst_C, scale, dst_C, POLY_DEG, modulus ); */
    /* mod_reduce_buf_s32( dst_C, POLY_DEG, modulus ); */

    mod_reduce_buf_s32_signed( dst_C, POLY_DEG, modulus );

    /* NTT-based negacyclic polynomial multiplication */
    /* We need a [0,1,2,3] <-> [3,2,1,0] reversal for all blocks of
     * four coefficients in the b-input. */
    rev_4_u32( in_b, POLY_DEG );

    measure_start();
    poly_u32_mul_256_ntt_incomplete_mve( in_a, in_b, dst_mve );
    measure_end();

    if( compare_buf_s32( dst_mve, dst_C, POLY_DEG ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s32( dst_C, POLY_DEG, "Ref: " );
        debug_print_buf_s32( dst_mve, POLY_DEG, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_poly_mul_ntt_incomplete(void)
{
    int32_t in_a[POLY_DEG];
    int32_t in_b[POLY_DEG];
    int32_t dst_mve[POLY_DEG];
    measure_start();
    poly_u32_mul_256_ntt_incomplete_mve( in_a, in_b, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_POLY_MUL_NTT_INCOMPLETE */

#endif

int main(void)
{
    int ret = 0;
#if defined(EXEC_TB)
    EXECTB_Init();
#endif /* EXEC_TB */

#if defined(TEST_POLY_FWD_TC_KARA)
    ret |= test_poly_fwd_tc_kara();
#endif /* TEST_POLY_FWD_TC_KARA */

#if defined(TEST_MAT_VEC_MUL_TC_KARA)
    ret |= test_mat_vec_mul_tc_kara();
#endif /* TEST_MAT_VEC_MUL_TC_KARA */

#if defined(TEST_POLY_MUL_NTT)
    ret |= test_poly_mul_ntt();
#endif /* TEST_POLY_MUL_NTT */

#if defined(TEST_POLY_MUL_NTT_INCOMPLETE)
    ret |= test_poly_mul_ntt_incomplete();
#endif /* TEST_POLY_MUL_NTT_INCOMPLETE */

#if defined(TEST_MAT_VEC_MUL_NTT)
    ret |= test_mat_vec_mul_ntt();
#endif /* TEST_MAT_VEC_MUL_NTT */

#if defined(TEST_MAT_VEC_MUL_NTT_INCOMPLETE)
    ret |= test_mat_vec_mul_ntt_incomplete();
#endif /* TEST_MAT_VEC_MUL_NTT_INCOMPLETE */

    if(ret == 0){
        debug_printf( "ALL GOOD!\n" );
    }

    return( ret );
}
