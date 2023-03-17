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
#include <misc.h>

#include <string.h>


#define TEST_NTT                 /* Enable/Disable test for NTT                    */
#define NTT_INCOMPLETE           /* Enable to compute 6-layer incomplete NTT.      */

/*
 * Some external references to auto-generated assembly.
 */

void ntt_256_u32_33556993_26036764(int32_t *src);

#if !defined(NTT_INCOMPLETE)
#define ntt_u32_mve ntt_256_u32_33556993_26036764
#else
#define ntt_u32_mve ntt_256_u32_33556993_26036764_incomplete
#endif

/*
 * Test cases
 */

int32_t base_root       = 26036764; // 256-th root of unity
int32_t modulus         = 33556993;
int32_t modulus_inv_u32 = 375649793;

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)

#define NTT_ROOT_ORDER         NTT_SIZE

#if !defined(NTT_INCOMPLETE)
#define NTT_INCOMPLETE_LAYERS  8
#else
#define NTT_INCOMPLETE_LAYERS  6
#endif /* NTT_INCOMPLETE */

#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)

#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )

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

void ntt_u32_C( int32_t *src )
{
    int32_t res[NTT_SIZE];
    build_roots();

    for( unsigned t=0; t<NTT_LAYER_STRIDE; t++ )
    {
        for( unsigned i=0; i<NTT_INCOMPLETE_SIZE; i++ )
        {
            int32_t tmp = 0;
            unsigned const multiplier =
                bit_reverse( i, NTT_INCOMPLETE_LAYERS ) * NTT_LAYER_STRIDE;

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

#if !defined(NTT_INCOMPLETE)
void buf_bitrev_4( int32_t *src )
{
    for( unsigned i=0; i < NTT_SIZE; i += 16 )
    {
        int32_t tmp[16];
        for( unsigned t=0; t < 16; t++ )
            tmp[t] = src[i+t];

        for( unsigned t0=0; t0 < 4; t0++ )
            for( unsigned t1=0; t1 < 4; t1++ )
                src[i+t0*4 + t1] = tmp[t1*4+t0];
    }
}
#endif /* NTT_INCOMPLETE */

int run_test_ntt()
{
    debug_test_start( "NTT u32" );
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));

    /* Setup input */
    fill_random_u32( (uint32_t*) src, NTT_SIZE );
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );

    /* Step 1: Reference NTT */
    memcpy( src_copy, src, sizeof( src ) );
    ntt_u32_C( src_copy );
    mod_reduce_buf_s32( src_copy, NTT_SIZE, modulus );
#if !defined(NTT_INCOMPLETE)
    buf_bitrev_4( src_copy );
#endif /* !NTT_INCOMPLETE */

    /* Step 2: MVE-based NTT */
    measure_start();
    ntt_u32_mve( src );
    measure_end();

    mod_reduce_buf_s32( src, NTT_SIZE, modulus );
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy,
                         NTT_SIZE ) != 0 )
    {
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );
        debug_print_buf_s32( src, NTT_SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }
    debug_test_ok();

    return( 0 );
}

int main(void)
{
    int ret = 0;

#if defined(TEST_NTT)
    ret |= run_test_ntt();
    if( ret != 0 )
        return( 1 );
#endif /* TEST_NTT */

    return( ret );
}
