

/*  This is the main testing file of SABER  */

#include <hal.h>
#include <misc.h>
#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <string.h>

#include "test_config.h"

#include "api.h"
#include "poly_mul.h"
#include "rng.h"
#include "SABER_indcpa.h"
#include "verify.h"
#include "KAT.h"

static const int seed = 0;

static int test_kem_cca()
{
    uint8_t pk[SABER_PUBLICKEYBYTES];
    uint8_t sk[SABER_SECRETKEYBYTES];
    uint8_t c[SABER_BYTES_CCA_DEC];
    uint8_t k_a[SABER_KEYBYTES], k_b[SABER_KEYBYTES];

    /* Used to initialize the randombytes. Should be either 0 or 1 */
    randombytes_init( seed );

    debug_test_start( "Test: Saber CCA with Known-Answer-Test");

    /* Generation of secret key sk and public key pk pair */
#if defined(RUN_INDCCA_KEM_KEYPAIR)
#if defined(MEASURE_INDCCA_KEM_KEYPAIR)
    measure_start();
#endif
    crypto_kem_keypair( pk, sk );
#if defined(MEASURE_INDCCA_KEM_KEYPAIR)
    measure_end();
#endif
#endif

    /* Key-Encapsulation call; input: pk; output: ciphertext c, shared-secret k_a; */
#if defined(RUN_INDCCA_KEM_ENC)
#if defined(MEASURE_INDCCA_KEM_ENC)
    measure_start();
#endif
    crypto_kem_enc( c, k_a, pk );
#if defined(MEASURE_INDCCA_KEM_ENC)
    measure_end();
#endif
#endif

    /* Key-Decapsulation call; input: sk, c; output: shared-secret k_b; */
#if defined(RUN_INDCCA_KEM_DEC)
#if defined(MEASURE_INDCCA_KEM_DEC)
    measure_start();
#endif
    crypto_kem_dec( k_b, c, sk );
#if defined(MEASURE_INDCCA_KEM_DEC)
    measure_end();
#endif
#endif

#if defined(RUN_INDCCA_KEM_CHECK)

    /* KAT test */
    if( compare_buf_u8( k_b, ind_cca_kat[seed], SABER_KEYBYTES ) == 0 )
    {
        debug_printf( "KAT OK... " );
    }
    else
    {
        debug_printf( "KAT FAIL... " );
        debug_test_fail();
        debug_print_buf_u8( k_b, SABER_KEYBYTES, "Computed:" );
        debug_print_buf_u8( ind_cca_kat[seed], SABER_KEYBYTES, "KAT:" );
        return( 1 );
    }

    /* Functional verification: check if k_a == k_b? */
    if( compare_buf_u8( k_a, k_b, SABER_KEYBYTES ) == 0 )
    {
        debug_printf( "Keys OK... ");
    }
    else
    {
        debug_printf( "Keys FAIL... ");
        debug_test_fail();
        debug_print_buf_u8( k_a, SABER_KEYBYTES, "Encapsulation:" );
        debug_print_buf_u8( k_b, SABER_KEYBYTES, "Decapsulation:" );
        return( 1 );
    }
#endif

    debug_test_ok();
    return( 0 );
}

static int test_kem_cpa()
{
    uint8_t pk[SABER_INDCPA_PUBLICKEYBYTES];
    uint8_t sk[SABER_INDCPA_SECRETKEYBYTES];
    uint8_t m[SABER_KEYBYTES];
    uint8_t mp[SABER_KEYBYTES];
    uint8_t c[SABER_BYTES_CCA_DEC];

    uint8_t seedbytes[SABER_NOISE_SEEDBYTES] = { 0 };

    /* Used to initialize the randombytes. Should be either 0 or 1 */
    randombytes_init( seed );
    memset( seedbytes, seed, sizeof( seedbytes ) );
    memset( m, ~seed, sizeof( m ) );

    debug_test_start( "Test: Saber CPA with Known-Answer-Test");

    /* Generation of secret key sk and public key pk pair */
#if defined(RUN_INDCPA_KEM_KEYPAIR)
#if defined(MEASURE_INDCPA_KEM_KEYPAIR)
    measure_start();
#endif
    indcpa_kem_keypair( pk, sk );
#if defined(MEASURE_INDCPA_KEM_KEYPAIR)
    measure_end();
#endif
#endif

    /* Encryption call */
#if defined(RUN_INDCPA_KEM_ENC)
#if defined(MEASURE_INDCPA_KEM_ENC)
    measure_start();
#endif
    indcpa_kem_enc( m, seedbytes, pk, c );
#if defined(MEASURE_INDCPA_KEM_ENC)
    measure_end();
#endif
#endif

    /* Decryption call */
#if defined(RUN_INDCPA_KEM_DEC)
#if defined(MEASURE_INDCPA_KEM_DEC)
    measure_start();
#endif
    indcpa_kem_dec( sk, c, mp );
#if defined(MEASURE_INDCPA_KEM_DEC)
    measure_end();
#endif
#endif

#if defined(RUN_INDCPA_KEM_CHECK)
    /* KAT test */
    if( compare_buf_u8( c, ind_cpa_kat[seed], SABER_KEYBYTES ) == 0 )
    {
        debug_printf( "KAT OK... " );
    }
    else
    {
        debug_printf("KAT FAIL... ");
        debug_test_fail();
        debug_print_buf_u8( c, SABER_KEYBYTES, "Computed:" );
        debug_print_buf_u8( ind_cpa_kat[seed], SABER_KEYBYTES, "KAT:" );
        return( 1 );
    }

    /* Functional verification: check if m == mp */
    if( compare_buf_u8( m, mp, SABER_KEYBYTES ) == 0 )
    {
        debug_printf("Keys OK... ");
    }
    else
    {
        debug_printf("Keys FAIL... ");
        debug_test_fail();
        debug_print_buf_u8( m,  SABER_KEYBYTES, "Message before enc+dec:" );
        debug_print_buf_u8( mp, SABER_KEYBYTES, "Message after  enc+dec:" );
        return( 1 );
    }
#endif

    debug_test_ok();
    return( 0 );
}

int main(void)
{
    int ret = 0;

#if defined(EXEC_TB)
    EXECTB_Init();
    enableCde();
    initTick();
#endif /* EXEC_TB */

    ret |= test_kem_cpa();
    ret |= test_kem_cca();

    return( ret );
}
