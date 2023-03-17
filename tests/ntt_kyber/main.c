/*
 * Copyright (c) 2022 Arm Limited
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

#define TEST_NTT                 /* Enable/Disable test for NTT                   */
#define TEST_INTT                /* Enable/Disable test for iNTT                  */

#define BENCH_NTT                 /* Enable/Disable bench for NTT                 */
#define BENCH_INTT                /* Enable/Disable bench for iNTT                */

#define TEST_L1222
#define TEST_L1222_OPT
#define TEST_L232
#define TEST_L232_OPT_SPEED
#define TEST_L232_OPT_SIZE

#define BENCH_L1222
#define BENCH_L1222_OPT
#define BENCH_L232
#define BENCH_L232_OPT_SPEED
#define BENCH_L232_OPT_SIZE

/*
 * Some external references to auto-generated assembly.
 */

#include <stdint.h>
void ntt_kyber_1_23_45_67(int16_t *src);
void intt_kyber_1_23_45_67(int16_t *src);
void ntt_kyber_1_23_45_67_opt(int16_t *src);
void intt_kyber_1_23_45_67_opt(int16_t *src);

void ntt_kyber_12_345_67(int16_t *src);
void ntt_kyber_12_345_67_opt_size(int16_t *src);
void ntt_kyber_12_345_67_opt_speed(int16_t *src);

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER         (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS  7
#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )

#if defined(TEST_NTT) || defined(TEST_INTT)

#include <hal.h>
#include <misc.h>

/*
 * Test cases
 */

int16_t base_root       = 17;
int16_t modulus         = 3329;
int16_t modulus_inv_u16 = 62209;

int16_t  roots        [NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = { 0 };
uint16_t roots_twisted[NTT_ROOT_ORDER / 2] __attribute__((aligned(16))) = { 0 };

void build_roots()
{
    for( unsigned i=0; i < NTT_ROOT_ORDER / 2; i++ )
    {
        roots[i]         = mod_pow_s16( base_root, i, modulus );
        roots_twisted[i] = roots[i] * modulus_inv_u16;
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

void ntt_s16_C( int16_t *src )
{
    int16_t res[NTT_SIZE];
    build_roots();

    for( unsigned t=0; t<NTT_LAYER_STRIDE; t++ )
    {
        for( unsigned i=0; i<NTT_INCOMPLETE_SIZE; i++ )
        {
            int16_t tmp = 0;
            /* A negacyclic FFT is half of a full FFT, where we've 'chosen -1'
             * in the first layer. That explains the corrections by NTT_INCOMPLETE_SIZE
             * and +1 here. In a normal FFT, this would just be bit_rev( i, layers ) * stride. */
            unsigned const multiplier =
                bit_reverse( i + NTT_INCOMPLETE_SIZE, NTT_INCOMPLETE_LAYERS + 1 ) * NTT_LAYER_STRIDE;

            for( unsigned j=0; j<NTT_INCOMPLETE_SIZE; j++ )
            {
                int16_t cur;
                unsigned exp = ( ( multiplier * j ) % NTT_ROOT_ORDER ) / 2;
                unsigned sub = ( exp >= ( NTT_ROOT_ORDER / 2 ) );
                exp = exp % ( NTT_ROOT_ORDER / 2 );

                cur = mod_mul_s16( src[NTT_LAYER_STRIDE*j+t],
                                   roots[exp],
                                   modulus );

                if( !sub )
                    tmp = mod_add_s16( tmp, cur, modulus );
                else
                    tmp = mod_sub_s16( tmp, cur, modulus );
            }
            res[NTT_LAYER_STRIDE*i+t] = tmp;
        }
    }

    memcpy( src, res, sizeof( res ) );
}

void buf_bitrev_4( int16_t *src )
{
    int32_t *src_ = (int32_t*) src;
    for( unsigned i=0; i < NTT_SIZE/2; i += 16 )
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
int test_ntt_ ## var ()                                                 \
{                                                                       \
    debug_test_start( "NTT s16 for " #func );                           \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                       \
                                                                        \
    /* Step 1: Reference NTT */                                         \
    memcpy( src_copy, src, sizeof( src ) );                             \
    ntt_s16_C( src_copy );                                              \
    mod_reduce_buf_s16( src_copy, NTT_SIZE, modulus );                  \
                                                                        \
    if( rev4 )                                                          \
        buf_bitrev_4( src_copy );                                       \
                                                                        \
    /* Step 2: MVE-based NTT */                                         \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                       \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                              \
    {                                                                   \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );         \
        debug_print_buf_s16( src, NTT_SIZE, "MVE" );                    \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

#define MAKE_TEST_FWD_INV(var,func,rev4)                                \
int test_intt_ ## var  ()                                               \
{                                                                       \
    debug_test_start( "NTT forward-inverse u16" );                      \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));            \
                                                                        \
    int16_t pow_2k_inv;                                                 \
                                                                        \
    /* Setup input */                                                   \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                       \
    mod_reduce_buf_s16_signed( src, NTT_SIZE, modulus );                \
                                                                        \
    /* Remember original buffer */                                      \
    memcpy( src_copy, src, sizeof( src ) );                             \
                                                                        \
    /* Step 1: Forward NTT */                                           \
    ntt_s16_C( src );                                                   \
    /* Step 2: Inverse NTT */                                           \
                                                                        \
    if( rev4 )                                                          \
        buf_bitrev_4( src );                                            \
                                                                        \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                       \
                                                                        \
    measure_start();                                                    \
    (func)( src );                                                      \
    measure_end();                                                      \
                                                                        \
    /* Remove twist after inverse NTT                                   \
     * TODO: This needs to go into the inverse-NTT itself. */           \
    pow_2k_inv = mod_pow_s16( (modulus+1)/2, NTT_INCOMPLETE_LAYERS, modulus ); \
    for( unsigned idx=0; idx < NTT_SIZE; idx++ )                        \
        src[idx] = mod_mul_s16( src[idx], pow_2k_inv, modulus );        \
                                                                        \
    mod_reduce_buf_s16_signed( src, NTT_SIZE, modulus );                \
                                                                        \
    if( compare_buf_u16( (uint16_t const*)                              \
                         src, (uint16_t const*) src_copy,               \
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
        debug_print_buf_s16( src_copy, NTT_SIZE, "Original" );          \
        debug_print_buf_s16( src, NTT_SIZE, "Fwd-Inv" );                \
        debug_test_fail();                                              \
        return( 1 );                                                    \
    }                                                                   \
    debug_test_ok();                                                    \
                                                                        \
    return( 0 );                                                        \
}

#if defined(TEST_NTT) && defined(TEST_L1222)
MAKE_TEST_FWD(l1222,ntt_kyber_1_23_45_67,0)
#endif
#if defined(TEST_NTT) && defined(TEST_L1222_OPT)
MAKE_TEST_FWD(l1222_opt,ntt_kyber_1_23_45_67_opt,0)
#endif
#if defined(TEST_NTT) && defined(TEST_L232)
MAKE_TEST_FWD(l232,ntt_kyber_12_345_67,1)
#endif
#if defined(TEST_NTT) && defined(TEST_L232_OPT_SPEED)
MAKE_TEST_FWD(l232_opt_speed,ntt_kyber_12_345_67_opt_speed,1)
#endif
#if defined(TEST_NTT) && defined(TEST_L232_OPT_SIZE)
MAKE_TEST_FWD(l232_opt_size,ntt_kyber_12_345_67_opt_size,1)
#endif

#if defined(TEST_INTT) && defined(TEST_L1222)
MAKE_TEST_FWD_INV(l1222,intt_kyber_1_23_45_67,1)
#endif

#endif

#define MAKE_BENCH(var,func)                                            \
int bench_ ## var ()                                                    \
{                                                                       \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));            \
    (func)( src );                                                      \
    return( 0 );                                                        \
}

#if defined(BENCH_NTT) && defined(BENCH_L1222)
MAKE_BENCH(ntt_l1222,ntt_kyber_1_23_45_67)
#endif
#if defined(BENCH_NTT) && defined(BENCH_L1222_OPT)
MAKE_BENCH(ntt_l1222_opt,ntt_kyber_1_23_45_67_opt)
#endif
#if defined(BENCH_NTT) && defined(BENCH_L232)
MAKE_BENCH(ntt_l232,ntt_kyber_12_345_67)
#endif
#if defined(BENCH_NTT) && defined(BENCH_L232_OPT_SPEED)
MAKE_BENCH(ntt_l232_opt_speed,ntt_kyber_12_345_67_opt_speed)
#endif
#if defined(BENCH_NTT) && defined(BENCH_L232_OPT_SIZE)
MAKE_BENCH(ntt_l232_opt_size,ntt_kyber_12_345_67_opt_size)
#endif

#if defined(BENCH_INTT) && defined(BENCH_L1222)
MAKE_BENCH(intt_l1222,intt_kyber_1_23_45_67)
#endif

int main(void)
{
    int ret = 0;

#if defined(TEST_NTT)
#if defined(TEST_L1222)
    ret |= test_ntt_l1222();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L1222_OPT)
    ret |= test_ntt_l1222_opt();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L232)
    ret |= test_ntt_l232();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L232_OPT_SPEED)
    ret |= test_ntt_l232_opt_speed();
    if( ret != 0 )
        return( 1 );
#endif
#if defined(TEST_L232_OPT_SIZE)
    ret |= test_ntt_l232_opt_size();
    if( ret != 0 )
        return( 1 );
#endif
#endif /* TEST_NTT */

#if defined(TEST_INTT)
#if defined(TEST_L1222)
    ret |= test_intt_l1222();
    if( ret != 0 )
        return( 1 );
#endif
#endif /* TEST_INTT */

#if defined(BENCH_NTT)
#if defined(BENCH_L1222)
    bench_ntt_l1222();
#endif
#if defined(BENCH_L1222_OPT)
    bench_ntt_l1222_opt();
#endif
#if defined(BENCH_L232)
    bench_ntt_l232();
#endif
#if defined(BENCH_L232_OPT_SPEED)
    bench_ntt_l232_opt_speed();
#endif
#if defined(BENCH_L232_OPT_SIZE)
    bench_ntt_l232_opt_size();
#endif
#endif /* BENCH_NTT */

#if defined(BENCH_INTT)
#if defined(BENCH_L1222)
    bench_intt_l1222();
#endif
#endif /* BENCH_INTT */

    return( ret );
}
