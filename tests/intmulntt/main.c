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
#include <poly.h>

#include <string.h>

#define TEST_INTPOLYMUL
#define TEST_INTCHUNKMUL
#define TEST_INTCHUNKMULSUB
#define TEST_INTCHUNKMULADD
//#define TEST_CORE_ONLY

#define INITIAL_SEED   0
#define NUM_ITERATIONS 1

#include "crt_const.h"

#define NTT_MAKE_NAME_P(SUFFIX) CONCAT8(ntt_,NTT_SIZE,_u32_,CRT_32_P,_,CRT_32_P_ROOT,_incomplete_good,SUFFIX)
#define NTT_MAKE_NAME_Q(SUFFIX) CONCAT8(ntt_,NTT_SIZE,_u32_,CRT_32_Q,_,CRT_32_Q_ROOT,_incomplete_good,SUFFIX)

#define ntt_u32_p               NTT_MAKE_NAME_P()
#define ntt_u32_p_bitrev        NTT_MAKE_NAME_P(_bitrev)
#define ntt_u32_p_oop           NTT_MAKE_NAME_P(_oop)
#define ntt_u32_p_oop_halfinput NTT_MAKE_NAME_P(_oop_half_input)
#define ntt_u32_p_twiddles      NTT_MAKE_NAME_P(_twiddles)
#define ntt_u32_p_scale         NTT_MAKE_NAME_P(_scale)

#define basemul_pre twisted_cyclic_mul_deg4_u32_mve_expand_double
#define basemul     twisted_cyclic_mul_deg4_u32_mve_alt

extern uint32_t ntt_u32_p_twiddles[];
extern uint32_t ntt_u32_p_scale[];

#define ntt_u32_q               NTT_MAKE_NAME_Q()
#define ntt_u32_q_bitrev        NTT_MAKE_NAME_Q(_bitrev)
#define ntt_u32_q_oop           NTT_MAKE_NAME_Q(_oop)
#define ntt_u32_q_oop_halfinput NTT_MAKE_NAME_Q(_oop_half_input)
#define ntt_u32_q_twiddles      NTT_MAKE_NAME_Q(_twiddles)
#define ntt_u32_q_scale         NTT_MAKE_NAME_Q(_scale)

extern uint32_t ntt_u32_q_twiddles[];
extern uint32_t ntt_u32_q_scale[];

#define BITS_PER_CHUNK 22

#if BITSIZE == 4096
#define NUM_CHUNKS     192
#else
#define NUM_CHUNKS     96
#endif

/* Cyclic signed schoolbook multiplications */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         (idx)
#define SCHOOLBOOK_FACTOR(dim,idx)  (1)

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)  (idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)  (idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)  (idx)

#define SCHOOLBOOK_REDUCTION(tmp,__unused__) (tmp)

#define C_SCHOOLBOOK_VARSIZE_SYMBOL_NAME(unused0,unused1,unused2)           \
    poly_u22_mul_C

MAKE_SCHOOLBOOK_VARSIZE(32,64,NUM_CHUNKS)

void reduce_q_u32( int32_t *src, size_t size, int32_t modulus )
{
    for( unsigned idx = 0; idx < size; idx++ )
    {
        int64_t tmp;
        src[idx] = src[idx] % modulus;
        if( src[idx] < 0 )
            src[idx] += modulus;
    }
}

void ntt_u32_p_pre( uint32_t dst[4*NUM_CHUNKS],
                    uint32_t src[1*NUM_CHUNKS] )
{
    uint32_t tmp[2*NUM_CHUNKS];
    ntt_u32_p_oop_halfinput( src, tmp );
    basemul_pre( dst, tmp, ntt_u32_p_twiddles, ntt_u32_p_scale, CRT_32_P );
}

void ntt_u32_q_pre( uint32_t dst[4*NUM_CHUNKS],
                    uint32_t src[1*NUM_CHUNKS] )
{
    uint32_t tmp[2*NUM_CHUNKS];
    ntt_u32_q_oop_halfinput( src, tmp );
    basemul_pre( dst, tmp, ntt_u32_q_twiddles, ntt_u32_q_scale, CRT_32_Q );
}

void poly_u22_mul_mve( uint64_t c[2*NUM_CHUNKS],
                       uint32_t a[NUM_CHUNKS],
                       uint32_t b[NUM_CHUNKS] )
{
    uint32_t params_p[] = { CRT_32_P, CRT_32_P_INV_U32 };
    uint32_t params_q[] = { CRT_32_Q, CRT_32_Q_INV_U32 };

    uint32_t ntt_p[2*NUM_CHUNKS];
    uint32_t ntt_q[2*NUM_CHUNKS];

    /* Multiplication mod q */
    {
        uint32_t b_ntt_q_expand[4*NUM_CHUNKS];
        ntt_u32_q_pre( b_ntt_q_expand, b );
        ntt_u32_q_oop_halfinput( a, ntt_q );
        basemul( ntt_q, b_ntt_q_expand, ntt_q, params_q );
        ntt_u32_q_bitrev( ntt_q );
    }

    /* Multiplication mod p */
    {
        uint32_t b_ntt_p_expand[4*NUM_CHUNKS];
        ntt_u32_p_pre( b_ntt_p_expand, b );
        ntt_u32_p_oop_halfinput( a, ntt_p );
        basemul( ntt_p, b_ntt_p_expand, ntt_p, params_p );
        ntt_u32_p_bitrev( ntt_p );
    }

    /* CRT */
    crt_s32_pure_reduce( c, ntt_p, ntt_q, CRT_32_SIZE );
}

void int_mul_mve_chunked_u22( uint32_t c[2*NUM_CHUNKS],
                              uint32_t a[NUM_CHUNKS],
                              uint32_t b[NUM_CHUNKS] )
{
    uint32_t params_p[] = { CRT_32_P, CRT_32_P_INV_U32 };
    uint32_t params_q[] = { CRT_32_Q, CRT_32_Q_INV_U32 };

    uint32_t ntt_p[2*NUM_CHUNKS];
    uint32_t ntt_q[2*NUM_CHUNKS];

    /* Multiplication mod p */
    {
        uint32_t b_ntt_p_expand[4*NUM_CHUNKS];
        ntt_u32_p_pre( b_ntt_p_expand, b );
        ntt_u32_p_oop_halfinput( a, ntt_p );
        basemul( ntt_p, b_ntt_p_expand, ntt_p, params_p );
        ntt_u32_p_bitrev( ntt_p );
    }

    /* Multiplication mod q */
    {
        uint32_t b_ntt_q_expand[4*NUM_CHUNKS];
        ntt_u32_q_pre( b_ntt_q_expand, b );
        ntt_u32_q_oop_halfinput( a, ntt_q );
        basemul( ntt_q, b_ntt_q_expand, ntt_q, params_q );
        ntt_u32_q_bitrev( ntt_q );
    }

    /* CRT */
    crt_s32_chunk_dechunk_reduce_canonical( c, ntt_p, ntt_q, CRT_32_SIZE );
}

void sub_s32( int32_t *src, int32_t *a, int32_t *b, size_t size )
{
    while( size-- )
        *src++ = *a++ - *b++;
}

void add_s32( int32_t *src, int32_t *a, int32_t *b, size_t size )
{
    while( size-- )
        *src++ = *a++ + *b++;
}

void chunk_dechunk_22_s32_to_s32( int32_t *dst, int32_t *src, size_t size )
{
    int32_t carry = 0;
    int32_t const mask = (1u<<22)-1;
    for( unsigned idx=0; idx < size; idx++ )
    {
        int32_t cur = src[idx];
        cur      += carry;
        dst[idx]  = ( cur & mask );
        carry = ( cur >> 22 );
    }
}

void int_mulsub_mve_chunked_u22( int32_t c[2*NUM_CHUNKS],
                                 uint32_t a0[NUM_CHUNKS],
                                 uint32_t b0[NUM_CHUNKS],
                                 uint32_t a1[NUM_CHUNKS],
                                 uint32_t b1[NUM_CHUNKS] )
{
    uint32_t params_p[] = { CRT_32_P, CRT_32_P_INV_U32 };
    uint32_t params_q[] = { CRT_32_Q, CRT_32_Q_INV_U32 };

    uint32_t ntt_p0[2*NUM_CHUNKS];
    uint32_t ntt_q0[2*NUM_CHUNKS];
    uint32_t ntt_p1[2*NUM_CHUNKS];
    uint32_t ntt_q1[2*NUM_CHUNKS];

    /* Multiplication mod p */
    {
        uint32_t b_ntt_p_expand[4*NUM_CHUNKS];

        ntt_u32_p_pre( b_ntt_p_expand, b0 );
        ntt_u32_p_oop_halfinput( a0, ntt_p0 );
        basemul( ntt_p0, b_ntt_p_expand, ntt_p0, params_p );
        ntt_u32_p_bitrev( ntt_p0 );

        ntt_u32_p_pre( b_ntt_p_expand, b1 );
        ntt_u32_p_oop_halfinput( a1, ntt_p1 );
        basemul( ntt_p1, b_ntt_p_expand, ntt_p1, params_p );
        ntt_u32_p_bitrev( ntt_p1 );

        //sub_s32( ntt_p0, ntt_p0, ntt_p1, 2 * NUM_CHUNKS );
    }

    /* Multiplication mod q */
    {
        uint32_t b_ntt_q_expand[4*NUM_CHUNKS];

        ntt_u32_q_pre( b_ntt_q_expand, b0 );
        ntt_u32_q_oop_halfinput( a0, ntt_q0 );
        basemul( ntt_q0, b_ntt_q_expand, ntt_q0, params_q );
        ntt_u32_q_bitrev( ntt_q0 );

        ntt_u32_q_pre( b_ntt_q_expand, b1 );
        ntt_u32_q_oop_halfinput( a1, ntt_q1 );
        basemul( ntt_q1, b_ntt_q_expand, ntt_q1, params_q );
        ntt_u32_q_bitrev( ntt_q1 );

        //sub_s32( ntt_q0, ntt_q0, ntt_q1, 2 * NUM_CHUNKS );
    }

    /* CRT */
    crt_s32_chunk_dechunk_sub_reduce_canonical_v3( c, ntt_p0, ntt_q0, CRT_32_SIZE, ntt_p1, ntt_q1 );
}

void int_muladd_mve_chunked_u22( int32_t c[2*NUM_CHUNKS],
                                 uint32_t a0[NUM_CHUNKS],
                                 uint32_t b0[NUM_CHUNKS],
                                 uint32_t a1[NUM_CHUNKS],
                                 uint32_t b1[NUM_CHUNKS] )
{
    uint32_t params_p[] = { CRT_32_P, CRT_32_P_INV_U32 };
    uint32_t params_q[] = { CRT_32_Q, CRT_32_Q_INV_U32 };

    uint32_t ntt_p0[2*NUM_CHUNKS];
    uint32_t ntt_q0[2*NUM_CHUNKS];
    uint32_t ntt_p1[2*NUM_CHUNKS];
    uint32_t ntt_q1[2*NUM_CHUNKS];

    /* Multiplication mod p */
    {
        uint32_t b_ntt_p_expand[4*NUM_CHUNKS];

        ntt_u32_p_pre( b_ntt_p_expand, b0 );
        ntt_u32_p_oop_halfinput( a0, ntt_p0 );
        basemul( ntt_p0, b_ntt_p_expand, ntt_p0, params_p );
        ntt_u32_p_bitrev( ntt_p0 );

        ntt_u32_p_pre( b_ntt_p_expand, b1 );
        ntt_u32_p_oop_halfinput( a1, ntt_p1 );
        basemul( ntt_p1, b_ntt_p_expand, ntt_p1, params_p );
        ntt_u32_p_bitrev( ntt_p1 );
    }

    /* Multiplication mod q */
    {
        uint32_t b_ntt_q_expand[4*NUM_CHUNKS];

        ntt_u32_q_pre( b_ntt_q_expand, b0 );
        ntt_u32_q_oop_halfinput( a0, ntt_q0 );
        basemul( ntt_q0, b_ntt_q_expand, ntt_q0, params_q );
        ntt_u32_q_bitrev( ntt_q0 );

        ntt_u32_q_pre( b_ntt_q_expand, b1 );
        ntt_u32_q_oop_halfinput( a1, ntt_q1 );
        basemul( ntt_q1, b_ntt_q_expand, ntt_q1, params_q );
        ntt_u32_q_bitrev( ntt_q1 );
    }

    /* CRT */
    //crt_s32_chunk_dechunk_add_reduce_canonical( c, ntt_p0, ntt_q0, CRT_32_SIZE, ntt_p1, ntt_q1 );
    crt_s32_dechunk_chunk_add_optim( c, ntt_p0, ntt_q0, CRT_32_SIZE, ntt_p1, ntt_q1 );
    //crt_s32_dechunk_chunk_add( c, ntt_p0, ntt_q0, CRT_32_SIZE, ntt_p1, ntt_q1 );
}


void chunk_dechunk_22_64_to_32( uint32_t *dst, uint64_t *src, size_t size )
{
    uint32_t carry = 0;
    uint32_t const mask = (1u<<22)-1;
    for( unsigned idx=0; idx < size; idx++ )
    {
        uint32_t low  = (uint32_t)( src[idx] >>  0 );
        uint32_t high = (uint32_t)( src[idx] >> 32 );

        high <<= 10;
        high  |= ( low >> 22 );
        low   &= mask;

        low   += carry;

        carry  = high + ( low >> 22 );
        low   &= mask;

        dst[idx] = low;
    }
}

int test_intchunkmul()
{
    debug_test_start( "NTT-based integer multiplication, chunked" );
    unsigned seed = 1;
    srand( seed );

    uint32_t a    [1*NUM_CHUNKS];
    uint32_t b    [1*NUM_CHUNKS];
    uint32_t c    [2*NUM_CHUNKS];
    uint32_t c_ref[2*NUM_CHUNKS];
    uint64_t c_tmp[2*NUM_CHUNKS];

    fill_random_u32( a, NUM_CHUNKS );
    fill_random_u32( b, NUM_CHUNKS );
    for( unsigned idx=0; idx < NUM_CHUNKS; idx++ )
    {
        a[idx] >>= ( 32 - BITS_PER_CHUNK );
        b[idx] >>= ( 32 - BITS_PER_CHUNK );
    }

    /* Step 1: Reference product */
    poly_u22_mul_C( c_tmp, a, b, 0 /* no modulus */ );
    chunk_dechunk_22_64_to_32( c_ref, c_tmp, 2 * NUM_CHUNKS );

    /* Step 2: NTT-based multiplication */
    measure_start();
    int_mul_mve_chunked_u22( c, a, b );
    measure_end();

    /* Step 3: Compare results */
    if( compare_buf_u32( c_ref, c, 2*NUM_CHUNKS ) != 0 )
    {
        debug_print_buf_u32( c_ref, 2*NUM_CHUNKS, "Reference" );
        debug_print_buf_u32( c,     2*NUM_CHUNKS, "MVE" );
        for( unsigned idx=0; idx < 2*NUM_CHUNKS; idx++ )
        {
            if( c_ref[idx] != c[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, c_ref[idx], c[idx] );
            }
        }
        debug_printf( "Seed: %u\n", seed );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_intchunkmulsub()
{
    debug_test_start( "NTT-based integer multiplication, a*b-c*d, chunked" );
    unsigned seed = 1;
    srand( seed );

    uint32_t a0     [1*NUM_CHUNKS];
    uint32_t b0     [1*NUM_CHUNKS];
    uint32_t a1     [1*NUM_CHUNKS];
    uint32_t b1     [1*NUM_CHUNKS];
    uint32_t c      [2*NUM_CHUNKS];
    uint32_t c0_ref [2*NUM_CHUNKS];
    uint64_t c0_tmp [2*NUM_CHUNKS];
    uint32_t c1     [2*NUM_CHUNKS];
    uint32_t c1_ref [2*NUM_CHUNKS];
    uint64_t c1_tmp [2*NUM_CHUNKS];
    uint32_t c_ref  [2*NUM_CHUNKS];

    fill_random_u32( a0, NUM_CHUNKS );
    fill_random_u32( b0, NUM_CHUNKS );
    fill_random_u32( a1, NUM_CHUNKS );
    fill_random_u32( b1, NUM_CHUNKS );
    for( unsigned idx=0; idx < NUM_CHUNKS; idx++ )
    {
        a0[idx] >>= ( 32 - BITS_PER_CHUNK );
        b0[idx] >>= ( 32 - BITS_PER_CHUNK );
        a1[idx] >>= ( 32 - BITS_PER_CHUNK );
        b1[idx] >>= ( 32 - BITS_PER_CHUNK );
    }

    /* Step 1: Reference product */
    poly_u22_mul_C( c0_tmp, a0, b0, 0 /* no modulus */ );
    chunk_dechunk_22_64_to_32( c0_ref, c0_tmp, 2 * NUM_CHUNKS );
    poly_u22_mul_C( c1_tmp, a1, b1, 0 /* no modulus */ );
    chunk_dechunk_22_64_to_32( c1_ref, c1_tmp, 2 * NUM_CHUNKS );

    sub_s32( c0_ref, c0_ref, c1_ref, 2 * NUM_CHUNKS );
    chunk_dechunk_22_s32_to_s32( c_ref, c0_ref, 2 * NUM_CHUNKS );

    /* Step 2: NTT-based multiplication */
    measure_start();
    int_mulsub_mve_chunked_u22( c, a0, b0, a1, b1 );
    measure_end();

    /* Step 3: Compare results */
    if( compare_buf_u32( c_ref, c, 2*NUM_CHUNKS ) != 0 )
    {
        debug_print_buf_u32( c_ref, 2*NUM_CHUNKS, "Reference" );
        debug_print_buf_u32( c,     2*NUM_CHUNKS, "MVE" );
        for( unsigned idx=0; idx < 2*NUM_CHUNKS; idx++ )
        {
            if( c_ref[idx] != c[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, c_ref[idx], c[idx] );
            }
        }
        debug_printf( "Seed: %u\n", seed );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_intchunkmuladd()
{
    debug_test_start( "NTT-based integer multiplication, a*b+c*d, chunked" );
    unsigned seed = 1;
    srand( seed );

    uint32_t a0     [1*NUM_CHUNKS];
    uint32_t b0     [1*NUM_CHUNKS];
    uint32_t a1     [1*NUM_CHUNKS];
    uint32_t b1     [1*NUM_CHUNKS];
    uint32_t c      [2*NUM_CHUNKS];
    uint32_t c0_ref [2*NUM_CHUNKS];
    uint64_t c0_tmp [2*NUM_CHUNKS];
    uint32_t c1     [2*NUM_CHUNKS];
    uint32_t c1_ref [2*NUM_CHUNKS];
    uint64_t c1_tmp [2*NUM_CHUNKS];
    uint32_t c_ref  [2*NUM_CHUNKS];

    fill_random_u32( a0, NUM_CHUNKS );
    fill_random_u32( b0, NUM_CHUNKS );
    fill_random_u32( a1, NUM_CHUNKS );
    fill_random_u32( b1, NUM_CHUNKS );
    for( unsigned idx=0; idx < NUM_CHUNKS; idx++ )
    {
        a0[idx] >>= ( 32 - BITS_PER_CHUNK );
        b0[idx] >>= ( 32 - BITS_PER_CHUNK );
        a1[idx] >>= ( 32 - BITS_PER_CHUNK );
        b1[idx] >>= ( 32 - BITS_PER_CHUNK );
    }

    /* Step 1: Reference product */
    poly_u22_mul_C( c0_tmp, a0, b0, 0 /* no modulus */ );
    chunk_dechunk_22_64_to_32( c0_ref, c0_tmp, 2 * NUM_CHUNKS );
    poly_u22_mul_C( c1_tmp, a1, b1, 0 /* no modulus */ );
    chunk_dechunk_22_64_to_32( c1_ref, c1_tmp, 2 * NUM_CHUNKS );

    add_s32( c0_ref, c0_ref, c1_ref, 2 * NUM_CHUNKS );
    chunk_dechunk_22_s32_to_s32( c_ref, c0_ref, 2 * NUM_CHUNKS );

    /* Step 2: NTT-based multiplication */
    measure_start();
    int_muladd_mve_chunked_u22( c, a0, b0, a1, b1 );
    measure_end();

    /* Step 3: Compare results */
    if( compare_buf_u32( c_ref, c, 2*NUM_CHUNKS ) != 0 )
    {
        debug_print_buf_u32( c_ref, 2*NUM_CHUNKS, "Reference" );
        debug_print_buf_u32( c,     2*NUM_CHUNKS, "MVE" );
        for( unsigned idx=0; idx < 2*NUM_CHUNKS; idx++ )
        {
            if( c_ref[idx] != c[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, c_ref[idx], c[idx] );
            }
        }
        debug_printf( "Seed: %u\n", seed );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}


int test_intpolymul()
{
    debug_test_start( "NTT-based integer polynomial multiplication" );
    unsigned seed = time(NULL);
    srand( seed );

    uint32_t a    [1*NUM_CHUNKS];
    uint32_t b    [1*NUM_CHUNKS];
    uint64_t c    [2*NUM_CHUNKS];
    uint64_t c_ref[2*NUM_CHUNKS];

    fill_random_u32( a, NUM_CHUNKS );
    fill_random_u32( b, NUM_CHUNKS );
    for( unsigned idx=0; idx < NUM_CHUNKS; idx++ )
    {
        a[idx] >>= ( 32 - BITS_PER_CHUNK );
        b[idx] >>= ( 32 - BITS_PER_CHUNK );
    }

    /* Step 1: Reference product */
    poly_u22_mul_C( c_ref, a, b, 0 /* no modulus */ );
    /* Step 2: NTT-based multiplication */
    measure_start();
    poly_u22_mul_mve( c, a, b );
    measure_end();
    /* Step 3: Compare results */
    if( compare_buf_u64( c_ref, c, 2*NUM_CHUNKS ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_u64( c_ref, 2*NUM_CHUNKS, "Reference" );
        debug_print_buf_u64( c,     2*NUM_CHUNKS, "MVE" );
        debug_printf( "Seed: %u\n", seed );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int main(void)
{
    int ret = 0;
    int n = INITIAL_SEED;

    for( unsigned i=0; i < NUM_ITERATIONS; i++ )
    {
        srand(n+i);
#if defined(TEST_INTPOLYMUL)
        ret |= test_intpolymul();
#endif
#if defined(TEST_INTCHUNKMUL)
        ret |= test_intchunkmul();
#endif
#if defined(TEST_INTCHUNKMULSUB)
        ret |= test_intchunkmulsub();
#endif
#if defined(TEST_INTCHUNKMULADD)
        ret |= test_intchunkmuladd();
#endif
        if( ret != 0 )
            return( ret );
    }

    return( ret );
}
