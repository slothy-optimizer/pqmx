#include <string.h>
#include <stdint.h>
#include "SABER_indcpa.h"
#include "poly.h"
#include "pack_unpack.h"
#include "rng.h"
#include "fips202.h"
#include "SABER_params.h"

#define h1 (1 << (SABER_EQ - SABER_EP - 1))
#define h2 ((1 << (SABER_EP - 2)) - (1 << (SABER_EP - SABER_ET - 1)) + (1 << (SABER_EQ - SABER_EP - 1)))

void indcpa_kem_keypair( uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES],
                         uint8_t sk[SABER_INDCPA_SECRETKEYBYTES] )
{
    saber_mat_t A;
    saber_vec_t s;
    saber_vec_t b = {0};

    uint8_t seed_A[SABER_SEEDBYTES];
    uint8_t seed_s[SABER_NOISE_SEEDBYTES];
    int i, j;

    randombytes_saber( seed_A, SABER_SEEDBYTES );
    shake128_wrap( seed_A, SABER_SEEDBYTES, seed_A, SABER_SEEDBYTES );
    randombytes_saber( seed_s, SABER_NOISE_SEEDBYTES );

    GenMatrix( A, seed_A );
    GenSecret( s, seed_s );

    /* Store secret key already now because the NTT-based multiplication
     * moves it to NTT domain for the matrix-vector multiplication. */
    SK2BS( sk, s );

#if defined(DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE)
    debug_print_buf_saber_u( A, SABER_L * SABER_L * SABER_N, "A:" );
    debug_print_buf_saber_u( s, SABER_L * SABER_N, "s:" );
#endif /* DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE */

    MatrixVectorMul( A, s, b, 1 );

#if defined(DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE)
    debug_print_buf_saber_s( b, SABER_L * SABER_N, "b (signed):" );
    debug_print_buf_saber_u( b, SABER_L * SABER_N, "b (unsigned):" );
#endif /* DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE */

#if defined(USE_POLY_MUL_NTT_MVE)
    saber_round_p_q( b );
#else
    /* Round and shift result */
    for (i = 0; i < SABER_L; i++)
        for (j = 0; j < SABER_N; j++)
            b[i][j] = (b[i][j] + h1) >> (SABER_EQ - SABER_EP);
#endif

    /* Serialize and store public key */
    POLVECp2BS( pk, b );

#if defined(DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE)
    debug_print_buf_u8( pk, SABER_INDCPA_PUBLICKEYBYTES, "PK:" );
    debug_print_buf_u8( sk, SABER_INDCPA_SECRETKEYBYTES, "SK:" );
#endif /* DEBUG_INDCPA_KEM_KEYPAIR_VERBOSE */

    memcpy( pk + SABER_POLYVECCOMPRESSEDBYTES, seed_A, sizeof(seed_A) );
}

void indcpa_kem_enc( const uint8_t m[SABER_KEYBYTES],
                     const uint8_t seed_sp[SABER_NOISE_SEEDBYTES],
                     const uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES],
                     uint8_t ciphertext[SABER_BYTES_CCA_DEC] )
{
    saber_mat_t A;
    saber_vec_t sp;
    saber_vec_t bp = { 0 };
    saber_vec_t b;
    saber_pol_t vp = { 0 };
    saber_pol_t mp;

    int i, j;
    const uint8_t *seed_A = pk + SABER_POLYVECCOMPRESSEDBYTES;

    GenMatrix( A, seed_A );
    GenSecret( sp, seed_sp );

    /* For NTT-based multiplication, we want to avoid converting
     * sp into NTT-domain multiple times. */
#if defined(USE_POLY_MUL_NTT_MVE)
#if defined(USE_NTT_INCOMPLETE)
    saber_vec_ntt_t sp_ntt;
    VecToNTT( sp, sp_ntt );
#else
    VecToNTT( sp );
#endif
#endif /* USE_POLY_MUL_NTT */

#if defined(USE_POLY_MUL_STRIDING_TC_KARA_MVE) && \
    defined(USE_TC_KARA_LAZY_INTERPOLATION)
    saber_vec_eval_t sp_eval;
    VecToEval( sp, sp_eval );
#endif

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( A,  SABER_L * SABER_L * SABER_N, "A:" );
    debug_print_buf_saber_u( sp, SABER_L * SABER_N, "sp:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

#if defined(USE_POLY_MUL_NTT_MVE)
#if defined(USE_NTT_INCOMPLETE)
    MatrixVectorMul_NTT( A, sp_ntt, bp, 0 );
#else
    MatrixVectorMul_NTT( A, sp, bp, 0 );
#endif
#elif defined(USE_POLY_MUL_STRIDING_TC_KARA_MVE) && \
      defined(USE_TC_KARA_LAZY_INTERPOLATION)
    MatrixVectorMul_Eval( A, sp_eval, bp, 0 );
#else
    MatrixVectorMul( A, sp, bp, 0 );
#endif

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( bp, SABER_L * SABER_N, "bp (unsigned):" );
    debug_print_buf_saber_s( bp, SABER_L * SABER_N, "bp (signed):" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

#if defined(USE_POLY_MUL_NTT_MVE)
    saber_round_p_q( bp );
#else
    /* Round and shift result */
    for (i = 0; i < SABER_L; i++)
        for (j = 0; j < SABER_N; j++)
            bp[i][j] = (bp[i][j] + h1) >> (SABER_EQ - SABER_EP);
#endif

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( bp, SABER_L * SABER_N, "bp rounded:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

    POLVECp2BS(ciphertext, bp);
    BS2POLVECp(pk, b);

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( b, SABER_L * SABER_N, "b (recovered):" );
    debug_print_buf_u8( ciphertext, SABER_POLYVECCOMPRESSEDBYTES, "ciphertext start:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

#if defined(USE_POLY_MUL_NTT_MVE)
#if defined(USE_NTT_INCOMPLETE)
    InnerProd_NTT(b, sp_ntt, vp);
#else
    InnerProd_NTT(b, sp, vp);
#endif
#elif defined(USE_POLY_MUL_STRIDING_TC_KARA_MVE) && \
      defined(USE_TC_KARA_LAZY_INTERPOLATION)
    InnerProd_Eval(b, sp_eval, vp);
#else
    InnerProd(b, sp, vp);
#endif

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( vp, SABER_N, "vp:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

    /* TODO: Write MVE-version of this */
    BS2POLmsg(m, mp);

#if defined(USE_POLY_MUL_NTT_MVE)
    saber_round_t_p( mp, vp );
#else
    for (j = 0; j < SABER_N; j++)
    {
        vp[j] = (vp[j] - (mp[j] << (SABER_EP - 1)) + h1) >> (SABER_EP - SABER_ET);
    }
#endif

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_saber_u( vp, SABER_N, "vp rounded:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */

    /* TODO: Write MVE-version of this */
    POLT2BS(ciphertext + SABER_POLYVECCOMPRESSEDBYTES, vp);

#if defined(DEBUG_INDCPA_KEM_ENC_VERBOSE)
    debug_print_buf_u8( ciphertext + SABER_POLYVECCOMPRESSEDBYTES, SABER_SCALEBYTES_KEM, "ciphertext end:" );
#endif /* DEBUG_INDCPA_KEM_ENC_VERBOSE */
}

void indcpa_kem_dec(const uint8_t sk[SABER_INDCPA_SECRETKEYBYTES],
                    const uint8_t ciphertext[SABER_BYTES_CCA_DEC],
                    uint8_t m[SABER_KEYBYTES])
{
    saber_vec_t s;
    saber_vec_t b;
    saber_pol_t v = {0};
    saber_pol_t cm;
    int i;

    /* TODO: Write MVE-version of this */
    BS2SK( sk, s );
    BS2POLVECp( ciphertext, b );

#if defined(DEBUG_INDCPA_KEM_DEC_VERBOSE)
    debug_print_buf_u8( ciphertext, SABER_BYTES_CCA_DEC, "ciphertext before decryption:" );
    debug_print_buf_u8( sk, SABER_INDCPA_SECRETKEYBYTES, "secret key:" );
    debug_print_buf_saber_s( s, SABER_L * SABER_N, "s (signed):" );
    debug_print_buf_saber_u( b, SABER_L * SABER_N, "b (unsigned):" );
#endif /* DEBUG_INDCPA_KEM_DEC_VERBOSE */

    InnerProd( b, s, v );

#if defined(DEBUG_INDCPA_KEM_DEC_VERBOSE)
    debug_print_buf_saber_u( v, SABER_N, "v (unsigned):" );
#endif /* DEBUG_INDCPA_KEM_DEC_VERBOSE */

    /* TODO: Write MVE-version of this */
    BS2POLT( ciphertext + SABER_POLYVECCOMPRESSEDBYTES, cm );

#if defined(USE_POLY_MUL_NTT_MVE)
    saber_round_t_p_2( cm, v );
#else
    /* TODO: Write MVE-version of this */
    for (i = 0; i < SABER_N; i++)
    {
        v[i] = (v[i] + h2 - (cm[i] << (SABER_EP - SABER_ET))) >> (SABER_EP - 1);
    }
#endif

    /* TODO: Write MVE-version of this */
    POLmsg2BS( m, v );
}
