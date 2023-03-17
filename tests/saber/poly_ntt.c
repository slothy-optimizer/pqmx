#include "test_config.h"

#include <stdio.h>
#include "api.h"
#include "poly_mul.h"
#include "pack_unpack.h"
#include "cbd.h"
#include "fips202.h"

#include "montgomery.h"

#if defined(USE_POLY_MUL_NTT_MVE)

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
int32_t modulus         = 33556993;
int32_t modulus_inv_u32 = 375649793;

typedef int32_t saber_vec_expand_t[SABER_L][2*SABER_N];

/*
 * Polynomial multiplication, Vector-Vector and Matrix-Vector
 * multiplication based on a full NTT and point multiplication.
 */

/* Polynomial multiplication */
__attribute__((force_inline))
static inline void poly_u32_mul_256_ntt_complete_mve( saber_pol_t src_A,
                                               saber_pol_t src_B,
                                               saber_vec_t dst )
{
    ntt_full( src_A );
    ntt_full( src_B );
    montgomery_pt_u32_mve( src_A, src_B, dst );
    inv_ntt_full( dst );
}

/* Forward matrix-NTT */
__attribute__((force_inline))
static void ntt_full_mat( saber_mat_t A )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        for( unsigned j = 0; j < SABER_L; j++ )
            ntt_full( A[i][j] );
}

/* Forward vector-NTT */
__attribute__((force_inline))
static void ntt_full_vec( saber_vec_t v )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        ntt_full( v[i] );
}

/* Inverse vector-NTT */
__attribute__((force_inline))
static void inv_ntt_full_vec( saber_vec_t v )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        inv_ntt_full( v[i] );
}

/* Matrix-Vector product in polynomial domain */
__attribute__((force_inline))
static void mat_vec_mul_partial_ntt_s32_full( saber_mat_t A,
                                              saber_vec_ntt_t v,
                                              saber_vec_t dst,
                                              int transpose )
{
    ntt_full_mat( A );

    if( transpose == 0 )
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            montgomery_pt_u32_mve( A[i][0], v[0], dst[i] );
            for( unsigned j=1; j < SABER_L; j++ )
                montgomery_pt_acc_u32_mve( A[i][j], v[j], dst[i] );
        }
    }
    else
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            montgomery_pt_u32_mve( A[0][i], v[0], dst[i] );
            for( unsigned j=1; j < SABER_L; j++ )
                montgomery_pt_acc_u32_mve( A[j][i], v[j], dst[i] );
        }
    }

    inv_ntt_full_vec( dst );
}

/* Matrix-Vector product in polynomial domain */
__attribute__((force_inline))
static void mat_vec_mul_s32_full( saber_mat_t A,
                                  saber_vec_t v,
                                  saber_vec_t dst,
                                  int transpose )
{
    ntt_full_vec( v );
    mat_vec_mul_partial_ntt_s32_full( A, v, dst, transpose );
}

/* Vector-Vector dot product, one input in NTT domain */
__attribute__((force_inline))
static void vec_vec_dot_partial_ntt_s32_full( saber_vec_t v,
                                              saber_vec_ntt_t w,
                                              saber_pol_t dst )
{
    ntt_full_vec( v );
    montgomery_pt_u32_mve( v[0], w[0], dst );
    for( unsigned i = 1; i < SABER_L; i++ )
        montgomery_pt_acc_u32_mve( v[i], w[i], dst );
    inv_ntt_full_vec( dst );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
__attribute__((force_inline))
static void vec_vec_dot_s32_full( saber_vec_t v,
                                  saber_vec_t w,
                                  saber_pol_t dst )
{
    ntt_full_vec( w );
    vec_vec_dot_partial_ntt_s32_full( v, w, dst );
}

/*
 * Polynomial multiplication, Vector-Vector and Matrix-Vector
 * multiplication based on an incomplete NTT and deg-4 schoolbook.
 */

/* Polynomial multiplication */
__attribute__((force_inline))
static void poly_u32_mul_256_ntt_incomplete_mve( saber_pol_t src_A,
                                                 saber_pol_t src_B,
                                                 saber_pol_t dst )
{
    int32_t src_B_ntt_double[2*POLY_DEG];
    ntt_incomplete( src_A );
    ntt_incomplete_double( src_B, src_B_ntt_double );
    twisted_cyclic_mul_deg4_u32_mve_alt( src_A, src_B_ntt_double, dst );
    inv_ntt_incomplete( dst );
}

/* Vector-Vector product, assuming one vector in expanded form. */
__attribute__((force_inline))
static void vec_vec_dot_ntt_incomplete( saber_vec_t v,
                                        saber_vec_expand_t w,
                                        saber_pol_t dst )
{
    twisted_cyclic_mul_deg4_u32_mve_alt( v[0], w[0], dst );
    for( unsigned i = 1; i < SABER_L; i++ )
        twisted_cyclic_mul_acc_deg4_u32_mve_alt( v[i], w[i], dst );
}

/* Vector-Vector accumulate, assuming one vector in expanded form. */
__attribute__((force_inline))
static void vec_vec_dot_acc_ntt_incomplete( saber_vec_t v,
                                            saber_vec_expand_t w,
                                            saber_pol_t dst )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        twisted_cyclic_mul_acc_deg4_u32_mve_alt( v[i], w[i], dst );
}

/* Incomplete NTT for full matrix. */
__attribute__((force_inline))
static void ntt_incomplete_mat( saber_mat_t A )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        for( unsigned j = 0; j < SABER_L; j++ )
            ntt_incomplete( A[i][j] );
}

/* Incomplete non-expanding NTT for vector. */
__attribute__((force_inline))
static void ntt_incomplete_vec( saber_vec_t v )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        ntt_incomplete( v[i] );
}

/* Incomplete expanding NTT for vector. */
__attribute__((force_inline))
static void ntt_incomplete_expand_vec( saber_vec_t v,
                                       saber_vec_expand_t w )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        ntt_incomplete_double( v[i], w[i] );
}

/* Inverse NTT for vector */
__attribute__((force_inline))
static void inv_ntt_incomplete_vec( saber_vec_t v )
{
    for( unsigned i = 0; i < SABER_L; i++ )
        inv_ntt_incomplete( v[i] );
}

//TODO: Merge this with key unpacking
/* __attribute__((force_inline)) */
/* void rev_4_u32( int32_t *src, unsigned size ) */
/* { */
/*     for( unsigned idx=0; idx < size; idx += 4 ) */
/*     { */
/*         int32_t s0, s1, s2, s3; */
/*         s0 = src[idx + 0]; */
/*         s1 = src[idx + 1]; */
/*         s2 = src[idx + 2]; */
/*         s3 = src[idx + 3]; */
/*         src[idx + 0] = s3; */
/*         src[idx + 1] = s2; */
/*         src[idx + 2] = s1; */
/*         src[idx + 3] = s0; */
/*     } */
/* } */

/* Vector-Vector dot product, inputs in polynomial domain. */
__attribute__((force_inline))
static void vec_vec_dot_s32_incomplete_expanded( saber_vec_t v,
                                                 saber_vec_expand_t w_expand,
                                                 saber_pol_t dst )
{
    ntt_incomplete_vec( v );
    vec_vec_dot_ntt_incomplete( v, w_expand, dst );
    inv_ntt_incomplete_vec( dst );
}

/* Vector-Vector dot product, inputs in polynomial domain. */
__attribute__((force_inline))
static void vec_vec_dot_s32_incomplete( saber_vec_t v,
                                        saber_vec_t w,
                                        saber_pol_t dst )
{
    saber_vec_expand_t w_expand;

    ntt_incomplete_expand_vec( w, w_expand );
    vec_vec_dot_s32_incomplete_expanded( v, w_expand, dst );
}

/* Matrix-Vector product, inputs in polynomial domain */
__attribute__((force_inline))
static void mat_vec_mul_s32_incomplete_expanded( saber_mat_t A,
                                            saber_vec_expand_t v_expand,
                                            saber_vec_t dst,
                                            int transpose )
{
    ntt_incomplete_mat( A );

    if( transpose == 0 )
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            twisted_cyclic_mul_deg4_u32_mve_alt( A[i][0], v_expand[0], dst[i] );
            for( unsigned j=1; j < SABER_L; j++ )
                twisted_cyclic_mul_acc_deg4_u32_mve_alt( A[i][j], v_expand[j], dst[i] );
        }
    }
    else
    {
        for( unsigned i = 0; i < SABER_L; i++ )
        {
            twisted_cyclic_mul_deg4_u32_mve_alt( A[0][i], v_expand[0], dst[i] );
            for( unsigned j=1; j < SABER_L; j++ )
                twisted_cyclic_mul_acc_deg4_u32_mve_alt( A[j][i], v_expand[j], dst[i] );
        }
    }

    inv_ntt_incomplete_vec( dst );
}

/* Matrix-Vector product, inputs in polynomial domain */
__attribute__((force_inline))
static void mat_vec_mul_s32_incomplete( saber_mat_t A,
                                        saber_vec_t v,
                                        saber_vec_t dst,
                                        int transpose )
{
    saber_vec_expand_t v_expand;
    ntt_incomplete_expand_vec( v, v_expand );
    mat_vec_mul_s32_incomplete_expanded( A, v_expand, dst, transpose );
}


#if !defined(USE_NTT_LAZY_INTERPOLATION)
#error NTT only with lazy interpolation for now.
#else /* USE_NTT_LAZY_INTERPOLATION */

#if defined(USE_NTT_INCOMPLETE)
void VecToNTT( saber_vec_t v, saber_vec_expand_t v_expand )
{
    ntt_incomplete_expand_vec( v, v_expand );
}

void MatrixVectorMul_NTT( const saber_mat_t A,
                          const saber_vec_t s_expand,
                          saber_vec_t res,
                          int16_t transpose )
{
    mat_vec_mul_s32_incomplete_expanded( A, s_expand, res, transpose );
}

void InnerProd_NTT(const saber_vec_t b,
                   const saber_vec_expand_t s_expand,
                   saber_pol_t res )
{
    vec_vec_dot_s32_incomplete_expanded( b, s_expand, res );
}

void MatrixVectorMul( const saber_mat_t A,
                      const saber_vec_t s,
                      saber_vec_t res,
                      int16_t transpose )
{
    mat_vec_mul_s32_incomplete( A, s, res, transpose );
}

void InnerProd(const saber_vec_t b,
               const saber_vec_t s,
               saber_pol_t res )
{
    vec_vec_dot_s32_incomplete( b, s, res );
}

#else /* USE_NTT_INCOMPLETE */

void VecToNTT( saber_vec_t v )
{
    ntt_full_vec( v );
}

void MatrixVectorMul( const saber_mat_t A,
                      const saber_vec_t s,
                      saber_vec_t res,
                      int16_t transpose )
{
    mat_vec_mul_s32_full( A, s, res, transpose );
}

void InnerProd(const saber_vec_t b,
               const saber_vec_t s,
               saber_pol_t res )
{
    vec_vec_dot_s32_full( b, s, res );
}

void MatrixVectorMul_NTT( const saber_mat_t A,
                          const saber_vec_t s_ntt,
                          saber_vec_t res,
                          int16_t transpose )
{
    mat_vec_mul_partial_ntt_s32_full( A, s_ntt, res, transpose );
}

void InnerProd_NTT(const saber_vec_t b,
                   const saber_vec_ntt_t s_ntt,
                   saber_pol_t res )
{
    vec_vec_dot_partial_ntt_s32_full( b, s_ntt, res );
}

#endif /* USE_NTT_INCOMPLETE */

#endif /* USE_NTT_LAZY_INTERPOLATION */

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
