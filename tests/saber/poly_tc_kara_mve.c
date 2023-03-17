#include "test_config.h"

#include <stdio.h>
#include "api.h"
#include "poly_mul.h"
#include "pack_unpack.h"
#include "cbd.h"
#include "fips202.h"

#if defined(USE_POLY_MUL_STRIDING_TC_KARA_MVE)

void poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve( uint16_t *src,
                                                       uint16_t *dst );
void poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve( uint16_t *src,
                                                       uint16_t *dst );
void karatsuba_fwd_dual_32_loop( uint16_t *src, uint16_t *dst );
void karatsuba_inv_dual_32_loop( uint16_t *src, uint16_t *dst );

#define toom4_fwd poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve
#define toom4_inv poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve
#define kara_fwd  karatsuba_fwd_dual_32_loop
#define kara_inv  karatsuba_inv_dual_32_loop

static inline void poly_u16_256_tc4_kara_fwd( uint16_t src[SABER_N],
                                              uint16_t dst[EVAL_DEG] )
{
    /* TODO: Ideally, the whole evaluation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t tc4[TC4_DEG];
    toom4_fwd( src, tc4 );
    kara_fwd ( tc4, dst );
}


static inline void poly_u16_256_tc4_kara_inv( uint16_t src[EVAL_DEG],
                                              uint16_t dst[SABER_N] )
{
    /* TODO: Ideally, the whole interpolation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t tc4[TC4_DEG];
    kara_inv ( src, tc4 );
    toom4_inv( tc4, dst );
}

static inline void poly_u16_256_tc4_kara_fwd_mat( uint16_t src[SABER_L][SABER_L][SABER_N],
                                                  uint16_t dst[SABER_L][SABER_L][EVAL_DEG] )
{
    for( int i=0; i < SABER_L; i++ )
        for( int j=0; j < SABER_L; j++ )
            poly_u16_256_tc4_kara_fwd( src[i][j], dst[i][j] );
}

static inline void poly_u16_256_tc4_kara_fwd_vec( uint16_t src[SABER_L][SABER_N],
                                                  uint16_t dst[SABER_L][EVAL_DEG] )
{
    for( int i=0; i < SABER_L; i++ )
        poly_u16_256_tc4_kara_fwd( src[i], dst[i] );
}

static inline void poly_u16_256_tc4_kara_inv_mat( uint16_t src[SABER_L][SABER_L][EVAL_DEG],
                                                  uint16_t dst[SABER_L][SABER_L][SABER_N] )
{
    for( int i=0; i < SABER_L; i++ )
        for( int j=0; j < SABER_L; j++ )
            poly_u16_256_tc4_kara_inv( src[i][j], dst[i][j] );
}

static inline void poly_u16_256_tc4_kara_inv_vec( uint16_t src[SABER_L][EVAL_DEG],
                                                  uint16_t dst[SABER_L][SABER_N] )
{
    for( int i=0; i < SABER_L; i++ )
        poly_u16_256_tc4_kara_inv( src[i], dst[i] );
}

void poly_u16_mul_32_anticyclic_karatsuba_mve_simd( uint16_t *dst, uint16_t *src_a, uint16_t *src_b );

#define poly_deg32_pointmul poly_u16_mul_32_anticyclic_karatsuba_mve_simd
static inline void poly_u16_256_tc4_kara_full( uint16_t src_a[SABER_N],
                                               uint16_t src_b[SABER_N],
                                               uint16_t dst[SABER_N] )
{
    /* TODO: Ideally, the whole interpolation should be in-place,
     *       but for now we accept the intermediate stack buffer. */
    uint16_t ev_a[EVAL_DEG]   __attribute__((aligned(16)));
    uint16_t ev_b[EVAL_DEG]   __attribute__((aligned(16)));
    uint16_t ev_dst[EVAL_DEG] __attribute__((aligned(16)));
    poly_u16_256_tc4_kara_fwd( src_a, ev_a );
    poly_u16_256_tc4_kara_fwd( src_b, ev_b );
    poly_deg32_pointmul( ev_dst, ev_a, ev_b );
    poly_u16_256_tc4_kara_inv( ev_dst, dst );
}

#if POLY_DEG != SABER_N
#error "Something is ill-configured here"
#endif

/* res += a*b */
static void poly_mul_acc(const uint16_t a[SABER_N], const uint16_t b[SABER_N], uint16_t res[SABER_N])
{
    uint16_t c[SABER_N] = {0};
    int i;
    poly_u16_256_tc4_kara_full(a, b, c);
    /* Accumulate */
    for (i = 0; i < SABER_N; i++)
        res[i] += c[i];
}

/*
 * Matrix-Vector and Vector-Vector polynomial multiplication.
 */

#if !defined(USE_TC_KARA_LAZY_INTERPOLATION)
void MatrixVectorMul(const uint16_t A  [SABER_L][SABER_L][SABER_N],
                     const uint16_t s  [SABER_L][SABER_N],
                           uint16_t res[SABER_L][SABER_N],
                     int16_t transpose)
{
    int i, j;
    for( i = 0; i < SABER_L; i++ )
    {
        for( j = 0; j < SABER_L; j++ )
        {
            if (transpose == 1)
            {
                poly_mul_acc(A[j][i], s[j], res[i]);
            }
            else
            {
                poly_mul_acc(A[i][j], s[j], res[i]);
            }
        }
    }
}

void InnerProd(const uint16_t b[SABER_L][SABER_N],
               const uint16_t s[SABER_L][SABER_N],
               uint16_t res[SABER_N])
{
    int j;
    for (j = 0; j < SABER_L; j++)
    {
        poly_mul_acc(b[j], s[j], res);
    }
}

#else /* USE_TC_KARA_LAZY_INTERPOLATION */

void poly_u16_mul_32_anticyclic_karatsuba_mve_simd( uint16_t *dst, uint16_t *src_a, uint16_t *src_b );
void poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd( uint16_t *dst, uint16_t *src_a, uint16_t *src_b );

#define poly_deg32_pointmul poly_u16_mul_32_anticyclic_karatsuba_mve_simd
#define poly_deg32_pointmul_acc poly_u16_mul_32_anticyclic_acc_karatsuba_mve_simd

/* Vector-Vector dot product, inputs in evaluation domain */
void vec_vec_dot_eval_tc_kara( uint16_t v[SABER_L][EVAL_DEG],
                               uint16_t w[SABER_L][EVAL_DEG],
                               uint16_t dst[EVAL_DEG] )
{
    poly_deg32_pointmul( dst, v[0], w[0] );
    for( unsigned i = 1; i < SABER_L; i++ )
        poly_deg32_pointmul_acc( dst, v[i], w[i] );
}

/* Vector-Vector accumulate, assuming one vector in expanded form. */
void vec_vec_dot_acc_eval_tc_kara( uint16_t v[SABER_L][EVAL_DEG],
                                   uint16_t w[SABER_L][EVAL_DEG],
                                   uint16_t dst[EVAL_DEG] )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        poly_deg32_pointmul_acc( dst, v[i], w[i] );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
static inline
void vec_vec_dot_u16_tc_kara_eval( saber_vec_t v,
                                   saber_vec_eval_t ev_w,
                                   saber_pol_t dst )
{
    uint16_t ev_v[SABER_L][EVAL_DEG] __attribute__((aligned(16)));
    uint16_t ev_dst[EVAL_DEG]        __attribute__((aligned(16)));

    /* Transform vectors into evaluation domain. */
    poly_u16_256_tc4_kara_fwd_vec( v, ev_v );
    /* Compute vector-vector product in evaluation domain. */
    vec_vec_dot_eval_tc_kara( ev_v, ev_w, ev_dst );
    /* Transform result back into polynomial domain. */
    poly_u16_256_tc4_kara_inv( ev_dst, dst );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
static inline
void vec_vec_dot_u16_tc_kara( saber_vec_t v,
                              saber_vec_t w,
                              saber_pol_t dst )
{
    uint16_t ev_w[SABER_L][EVAL_DEG] __attribute__((aligned(16)));
    poly_u16_256_tc4_kara_fwd_vec( w, ev_w );
    vec_vec_dot_u16_tc_kara_eval( v, ev_w, dst );
}

/* Matrix-Vector product, inputs in polynomial domain */
static inline
void mat_vec_mul_u16_tc_kara_eval( const saber_mat_t A,
                                   const saber_vec_eval_t ev_v,
                                   saber_vec_t dst,
                                   int16_t transpose )
{
    uint16_t ev_A[SABER_L][SABER_L][EVAL_DEG] __attribute__((aligned(16)));
    uint16_t ev_dst[SABER_L][EVAL_DEG]        __attribute__((aligned(16)));

    /* Transform matrix and vector into evaluation domain. */
    poly_u16_256_tc4_kara_fwd_mat( A, ev_A );
    /* Compute matrix-vector product in evaluation domain. */
    if( transpose == 0 )
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            poly_deg32_pointmul( ev_dst[i], ev_A[i][0], ev_v[0] );
            for( unsigned j=1; j < SABER_L; j++ )
                poly_deg32_pointmul_acc( ev_dst[i], ev_A[i][j], ev_v[j] );
        }
    }
    else
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            poly_deg32_pointmul( ev_dst[i], ev_A[0][i], ev_v[0] );
            for( unsigned j=1; j < SABER_L; j++ )
               poly_deg32_pointmul_acc( ev_dst[i], ev_A[j][i], ev_v[j] );
        }
    }

    /* Transform result back into polynomial domain. */
    poly_u16_256_tc4_kara_inv_vec( ev_dst, dst );
}

void VecToEval( saber_vec_t v, saber_vec_eval_t ev_v )
{
    poly_u16_256_tc4_kara_fwd_vec( v, ev_v );
}

/* Matrix-Vector product, inputs in polynomial domain */
static inline
void mat_vec_mul_u16_tc_kara( const saber_mat_t A,
                              const saber_vec_t v,
                              saber_vec_t dst,
                              int16_t transpose )
{
    uint16_t ev_v[SABER_L][EVAL_DEG] __attribute__((aligned(16)));
    poly_u16_256_tc4_kara_fwd_vec( v, ev_v );
    mat_vec_mul_u16_tc_kara_eval( A, ev_v, dst, transpose );
}

void MatrixVectorMul_Eval( const saber_mat_t A,
                           const saber_vec_eval_t s_eval,
                           saber_vec_t res,
                           int16_t transpose )
{
    mat_vec_mul_u16_tc_kara_eval( A, s_eval, res, transpose );
}

void InnerProd_Eval(const saber_vec_t b,
                    const saber_vec_eval_t s_eval,
                    saber_pol_t res )
{
    vec_vec_dot_u16_tc_kara_eval( b, s_eval, res );
}

void MatrixVectorMul( const saber_mat_t A,
                      const saber_vec_t s,
                      saber_vec_t res,
                      int16_t transpose )
{
    mat_vec_mul_u16_tc_kara( A, s, res, transpose );
}

void InnerProd(const saber_vec_t b,
               const saber_vec_t s,
               saber_pol_t res )
{
    vec_vec_dot_u16_tc_kara( b, s, res );
}

#endif /* USE_TC_KARA_LAZY_INTERPOLATION */

/*
 * Public and secret key generation.
 */

void GenMatrix( saber_mat_t A, const uint8_t seed[SABER_SEEDBYTES] )
{
    uint8_t buf[SABER_L * SABER_POLYVECBYTES];
    int i;

    shake128_wrap(buf, sizeof(buf), seed, SABER_SEEDBYTES);

    for (i = 0; i < SABER_L; i++)
    {
        BS2POLVECq(buf + i * SABER_POLYVECBYTES, A[i]);
    }
}

void GenSecret( saber_vec_t s, const uint8_t seed[SABER_NOISE_SEEDBYTES] )
{
    uint8_t buf[SABER_L * SABER_POLYCOINBYTES];
    size_t i;

    shake128_wrap(buf, sizeof(buf), seed, SABER_NOISE_SEEDBYTES);

    for (i = 0; i < SABER_L; i++)
    {
        cbd(s[i], buf + i * SABER_POLYCOINBYTES);
    }
}

#endif /* USE_POLY_MUL_STRIDING_TC_KARA_MVE */
