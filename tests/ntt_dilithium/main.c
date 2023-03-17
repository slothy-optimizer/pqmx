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
 *
 * Author: Hanno Becker <hannobecker@posteo.de>
 */

#define TEST_NTT                 /* Enable/Disable test for NTT                    */
#define TEST_INTT                /* Enable/Disable test for iNTT                   */

/* #define BENCH_NTT                /\* Enable/Disable bench for NTT                    *\/ */
/* #define BENCH_INTT               /\* Enable/Disable bench for iNTT                   *\/ */

#define TEST_L2222
#define TEST_L2222_OPT
#define TEST_L332
#define TEST_L332_OPT_SPEED
#define TEST_L332_OPT_SIZE

/* #define BENCH_L2222 */
/* #define BENCH_L2222_OPT */
/* #define BENCH_L332 */
/* #define BENCH_L332_OPT_SPEED */
/* #define BENCH_L332_OPT_SIZE */

/*
 * Some external references to auto-generated assembly.
 */

#include <stdint.h>
void ntt_dilithium_12_34_56_78(int32_t *src);
void intt_dilithium_12_34_56_78(int32_t *src);
void ntt_dilithium_123_456_78(int32_t *src);
void intt_dilithium_123_456_78(int32_t *src);

void ntt_dilithium_12_34_56_78_opt(int32_t *src);
void ntt_dilithium_123_456_78_opt_speed(int32_t *src);
void ntt_dilithium_123_456_78_opt_size(int32_t *src);

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER         (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS  8
#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )

#if defined(TEST_NTT) || defined(TEST_INTT)

#include <hal.h>
#include <misc.h>
#include <string.h>

/*
 * Test cases
 */

int32_t base_root       = 1753;
int32_t modulus         = 8380417;
int32_t modulus_inv_u32 = 58728449;

int32_t  roots        [NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = { 0 };
uint32_t roots_twisted[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = { 0 };

void build_roots()
{
    for( unsigned i=0; i < NTT_ROOT_ORDER / 2; i++ )
    {
        roots[i]         = mod_pow_s32( base_root, i, modulus );
        roots_twisted[i] = roots[i] * modulus_inv_u32;
    }
}

unsigned bit_reverse( unsigned in, unsigned width )
{
    unsigned out = 0;
    while( width-- )
    {
        out <<= 1;
        out |= ( in % 2 );
        in >>= 1;
    }
    return( out );
}

void ntt_s32_C( int32_t *src )
{
    int32_t res[NTT_SIZE];
    build_roots();

    for( unsigned t=0; t<NTT_LAYER_STRIDE; t++ )
    {
        for( unsigned i=0; i<NTT_INCOMPLETE_SIZE; i++ )
        {
            int32_t tmp = 0;
            /* A negacyclic FFT is half of a full FFT, where we've 'chosen -1'
             * in the first layer. That explains the corrections by NTT_INCOMPLETE_SIZE
             * and +1 here. In a normal FFT, this would just be bit_rev( i, layers ) * stride. */
            unsigned const multiplier =
                bit_reverse( i + NTT_INCOMPLETE_SIZE, NTT_INCOMPLETE_LAYERS + 1 ) * NTT_LAYER_STRIDE;

            for( unsigned j=0; j<NTT_INCOMPLETE_SIZE; j++ )
            {
                int32_t cur;
                unsigned exp = ( multiplier * j ) % NTT_ROOT_ORDER;
                unsigned sub = ( exp >= ( NTT_ROOT_ORDER / 2 ) );
                exp = exp % ( NTT_ROOT_ORDER / 2 );

                cur = mod_mul_s32( src[NTT_LAYER_STRIDE*j+t],
                                   roots[exp],
                                   modulus );

                if( !sub )
                    tmp = mod_add_s32( tmp, cur, modulus );
                else
                    tmp = mod_sub_s32( tmp, cur, modulus );
            }
            res[NTT_LAYER_STRIDE*i+t] = tmp;
        }
    }

    memcpy( src, res, sizeof( res ) );
}

void buf_bitrev_4( int32_t *src )
{
    int32_t *src_ = (int32_t*) src;
    for( unsigned i=0; i < NTT_SIZE; i += 16 )
    {
        int32_t tmp[16];
        for( unsigned t=0; t < 16; t++ )
            tmp[t] = src_[i+t];

        for( unsigned t0=0; t0 < 4; t0++ )
            for( unsigned t1=0; t1 < 4; t1++ )
                src_[i+t0*4 + t1] = tmp[t1*4+t0];
    }
}

#define MAKE_TEST_FWD(var,func,rev4)                                    \
int test_ntt_ ## var ()                                             \
{                                                                       \
    debug_test_start( "NTT s32 for " #func );                           \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
                                                                        \
    /* Step 1: Reference NTT */                                         \
    memcpy( src_copy, src, sizeof( src ) );                             \
    ntt_s32_C( src_copy );                                              \
    mod_reduce_buf_s32( src_copy, NTT_SIZE, modulus );                  \
                                                                        \
    if( rev4 )                                                          \
        buf_bitrev_4( src_copy );                                       \
                                                                        \
    /* Step 2: MVE-based NTT */                                         \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                              \
    {                                                                   \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );         \
        debug_print_buf_s32( src, NTT_SIZE, "MVE" );                    \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

#define MAKE_TEST_FWD_INV(var,func,rev4)                                \
int test_intt_ ## var  ()                                           \
{                                                                       \
    debug_test_start( "NTT forward-inverse u32" );                      \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    int32_t pow_2k_inv;                                                 \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s32_signed( src, NTT_SIZE, modulus );                \
                                                                        \
    /* Remember original buffer */                                      \
    memcpy( src_copy, src, sizeof( src ) );                             \
                                                                        \
    /* Step 1: Forward NTT */                                           \
    ntt_s32_C( src );                                                   \
    /* Step 2: Inverse NTT */                                           \
                                                                        \
    if( rev4 )                                                          \
        buf_bitrev_4( src );                                            \
                                                                        \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                       \
                                                                        \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    /* Remove twist after inverse NTT                                   \
     * TODO: This needs to go into the inverse-NTT itself. */           \
    pow_2k_inv = mod_pow_s32( (modulus+1)/2, NTT_INCOMPLETE_LAYERS, modulus ); \
    for( unsigned idx=0; idx < NTT_SIZE; idx++ )                        \
        src[idx] = mod_mul_s32( src[idx], pow_2k_inv, modulus );        \
                                                                        \
    mod_reduce_buf_s32_signed( src, NTT_SIZE, modulus );                \
                                                                        \
    if( compare_buf_u32( (uint32_t const*)                              \
                         src, (uint32_t const*) src_copy,               \
                         NTT_SIZE ) != 0 )                              \
    {                                                                   \
        for( unsigned idx=0; idx < NTT_SIZE; idx++ )                    \
        {                                                               \
            if( src[idx] != src_copy[idx] )                             \
                debug_printf( "Fail at %u\n", idx );                    \
            else                                                        \
                debug_printf( "OK at %u\n", idx );                      \
        }                                                               \
                                                                        \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Original" );          \
        debug_print_buf_s32( src, NTT_SIZE, "Fwd-Inv" );                \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

#if defined(TEST_NTT) && defined(TEST_L2222)
MAKE_TEST_FWD(l2222,ntt_dilithium_12_34_56_78,1)
#endif

#if defined(TEST_NTT) && defined(TEST_L2222_OPT)
MAKE_TEST_FWD(l2222_opt,ntt_dilithium_12_34_56_78_opt,1)
#endif

#if defined(TEST_NTT) && defined(TEST_L332)
MAKE_TEST_FWD(l332,ntt_dilithium_123_456_78,1)
#endif

#if defined(TEST_NTT) && defined(TEST_L332_OPT_SIZE)
MAKE_TEST_FWD(l332_opt_size,ntt_dilithium_123_456_78_opt_size,1)
#endif
#if defined(TEST_NTT) && defined(TEST_L332_OPT_SPEED)
MAKE_TEST_FWD(l332_opt_speed,ntt_dilithium_123_456_78_opt_speed,1)
#endif

#if defined(TEST_INTT) && defined(TEST_L2222)
MAKE_TEST_FWD_INV(l2222,intt_dilithium_12_34_56_78,1)
#endif

#endif

#define MAKE_BENCH(var,func)                                            \
int bench_ ## var ()                                                    \
{                                                                       \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    (func)( src );                                                      \
    return( 0 );                                                        \
}

MAKE_BENCH(ntt_l2222,ntt_dilithium_12_34_56_78)
MAKE_BENCH(ntt_l2222_opt,ntt_dilithium_12_34_56_78_opt)
MAKE_BENCH(ntt_l332,ntt_dilithium_123_456_78)
MAKE_BENCH(ntt_l332_opt_speed,ntt_dilithium_123_456_78_opt_speed)
MAKE_BENCH(ntt_l332_opt_size,ntt_dilithium_123_456_78_opt_size)

MAKE_BENCH(intt_l2222,intt_dilithium_12_34_56_78)

int main(void)
{
    int ret = 0;

#if defined(TEST_NTT)
#if defined(TEST_L2222)
    ret |= test_ntt_l2222();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L2222_OPT)
    ret |= test_ntt_l2222_opt();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L332)
    ret |= test_ntt_l332();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L332_OPT_SIZE)
    ret |= test_ntt_l332_opt_size();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L332_OPT_SPEED)
    ret |= test_ntt_l332_opt_speed();
    if( ret != 0 )
        return( 1 );
#endif
#endif /* TEST_NTT */

#if defined(TEST_INTT)
#if defined(TEST_L2222)
    ret |= test_intt_l2222();
    if( ret != 0 )
        return( 1 );
#endif
#endif /* TEST_INTT */

#if defined(BENCH_NTT)
#if defined(BENCH_L2222)
    bench_ntt_l2222();
#endif
#if defined(BENCH_L2222_OPT)
    bench_ntt_l2222_opt();
#endif
#if defined(BENCH_L332)
    bench_ntt_l332();
#endif
#if defined(BENCH_L332_OPT_SPEED)
    bench_ntt_l332_opt_speed();
#endif
#if defined(BENCH_L332_OPT_SIZE)
    bench_ntt_l332_opt_size();
#endif
#endif /* BENCH_NTT */

#if defined(BENCH_INTT)
#if defined(BENCH_L2222)
    bench_intt_l2222();
#endif
#endif /* BENCH_INTT */

    return( ret );
}
