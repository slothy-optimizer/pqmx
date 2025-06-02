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
#include <stdlib.h>
#include <time.h>

#include "crt_const.h"
#include "crt.h"

/*
 * Configure which tests to build and run
 *
 * Comment out tests you don't need, and they'll be
 * removed at compile-time. This is useful to generate
 * minimal test images, esp. if simulation is slow.
 */
#define CHECK_CRT_S32_SINGLE
#define TEST_CRT_S32
#define TEST_CRT_S32_REDUCE
#define TEST_CRT_S32_CHUNK_DECHUNK
#define TEST_CRT_S32_CHUNK_DECHUNK_REDUCE
#define TEST_CRT_S32_CHUNK_DECHUNK_REDUCE_CANONICAL

#define INITIAL_SEED   0
#define NUM_ITERATIONS 1

void crt_s32_chunk_dechunk_reduce_canonical(int32_t *, int32_t *, int32_t *, int32_t);
void crt_s32_chunk_dechunk_reduce_canonical_v2(int32_t *, int32_t *, int32_t *, int32_t);
void crt_s32_chunk_dechunk(int32_t *, int32_t *, int32_t *, int32_t);
void crt_s32_chunk_dechunk_reduce(int32_t *, int32_t *, int32_t *, int32_t);
void crt_s32_pure_reduce(int64_t *, int32_t *, int32_t *, int32_t);
void crt_s32_pure(int64_t *, int32_t *, int32_t *, int32_t);

int32_t mod_s32( int32_t a, int32_t modulus )
{
    int32_t t = a % modulus;
    if( t >= modulus/2 )
        t -= modulus;
    if( t < -(modulus/2) )
        t += modulus;
    return( t );
}

int64_t mod_s64( int64_t a, int64_t modulus )
{
    int64_t t = a % modulus;
    if( t >= modulus/2 )
        t -= modulus;
    if( t < -(modulus/2) )
        t += modulus;
    return( t );
}

void mod_buf_s32( int32_t *src, size_t size, int32_t modulus )
{
    for( unsigned idx = 0; idx < size; idx++ )
        src[idx] = mod_s32( src[idx], modulus );
}

int64_t crt_s32_single_C( int32_t x_, int32_t y_,
                           uint32_t p, uint32_t q, int32_t p_inv_mod_q )
{
    int64_t x = (int64_t) x_;
    int64_t y = (int64_t) y_;

    int64_t r = (y-x)*p_inv_mod_q;
    r = mod_s64( r, q );
    r = x + r*((int32_t) p);
    return( r );
}

void crt_s32_C( int64_t *dst, int32_t *srcA, int32_t *srcB,
                uint32_t p, uint32_t q, uint32_t p_inv_mod_q,
                size_t size )
{
    for( unsigned idx=0; idx < size; idx++ )
        dst[idx] = crt_s32_single_C( srcA[idx], srcB[idx], p, q, p_inv_mod_q );
}

int check_crt_s32_single()
{
    debug_test_start( "CHECK 2x32-bit CRT C code, single, signed" );

    int32_t x, y, zp, zq;
    int64_t z;
    fill_random_u32( &x, 1 );
    fill_random_u32( &y, 1 );

    x = mod_s32( x, CRT_32_P );
    y = mod_s32( y, CRT_32_Q );

    z = crt_s32_single_C( x, y, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q );

    zp = mod_s64( z, CRT_32_P );
    zq = mod_s64( z, CRT_32_Q );

    if( zp != x )
    {
        debug_printf( "FAIL: z (%lld) %% p = %d != x (%d)\n",
                      (long long) z, zp, x );
        debug_test_fail();
        return( 1 );
    }

    if( zq  != y )
    {
        debug_printf( "FAIL: z (%ll) %% p = %d != x (%d)\n",
                      (long long) z, zq, y );
        debug_test_fail();
        return( 1 );
    }

    uint64_t z_abs;
    if( z > 0 )
        z_abs = z;
    else
        z_abs = (uint64_t)( -z );

    uint64_t max = ((uint64_t) CRT_32_P * (uint64_t) CRT_32_Q)/2;
    if( z_abs >= max )
    {
        debug_printf( "FAIL: |z| (%llu) >= P*Q/2 (%d*%d=%llu)\n",
                      (unsigned long long) z_abs,
                      (int32_t) CRT_32_P,
                      (int32_t) CRT_32_Q, max );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_crt_s32()
{
    debug_test_start( "Test 2x32-bit CRT" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int64_t out    [CRT_32_SIZE];
    int64_t out_ref[CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
    {
        inP[idx] >>= 1;
        inQ[idx] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );

    crt_s32_pure( out, inP, inQ, CRT_32_SIZE );
    crt_s32_C  ( out_ref, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );

    int failures = 0;
    for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
    {
        uint64_t pq_half = ( (uint64_t) CRT_32_P * (uint64_t) CRT_32_P ) / 2;
        int fail = 0;
        int32_t x, y, zp, zq;
        int64_t z;
        uint64_t z_abs;
        uint32_t x_abs, y_abs;

        x = inP[idx];
        y = inQ[idx];
        z = out[idx];

        if( z > 0 )
            z_abs = z;
        else
            z_abs = -z;
        if( x > 0 )
            x_abs = x;
        else
            x_abs = -x;
        if( y > 0 )
            y_abs = y;
        else
            y_abs = -y;

        zp = mod_s64( z, CRT_32_P );
        zq = mod_s64( z, CRT_32_Q );

        if( z_abs >= pq_half )
        {
            debug_printf( "FAIL [%u]: |z| (%llu) >= P*Q/2 (%u*%u=%llu)\n", idx,
                          (unsigned long long) z_abs, CRT_32_P, CRT_32_Q, pq_half );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        if( zp != x )
        {
            debug_printf( "FAIL[%u]: z (%lld) %% p = %d != x (%d)\n", idx,
                          (long long) z, zp, x );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        if( zq  != y )
        {
            debug_printf( "FAIL [%u]: z (%lld) %% q = %d != y (%d)\n", idx,
                          (long long) z, zq, y );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        failures += fail;
    }

    if( failures > 0 )
    {
        debug_printf( "Failures: %d\n", failures );
        debug_test_fail();
        return( 1 );
    }

    if( compare_buf_s64( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s64( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s64( out, CRT_32_SIZE, "MVE" );

        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %lld (ref) != %lld (mve)\n",
                              idx, out_ref[idx], out[idx] );
                debug_printf( "Inputs at index %u: x=%d (p=%u), y=%d (q=%u)\n",
                              idx, inP[idx], CRT_32_P, inQ[idx], CRT_32_Q );
            }
        }

        debug_test_fail();
        return( 1 );
    }


    debug_test_ok();
    return( 0 );
}

int test_crt_s32_reduce()
{
    debug_test_start( "Test 2x32-bit CRT, reduce, signed" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int64_t out    [CRT_32_SIZE];
    int64_t out_ref[CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
    {
        inQ[idx] >>= 1;
        inP[idx] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    crt_s32_pure_reduce( out, inP, inQ, CRT_32_SIZE );

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );

    crt_s32_C  ( out_ref, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );

    int failures = 0;
    for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
    {
        uint64_t pq_half = ( (uint64_t) CRT_32_P * (uint64_t) CRT_32_P ) / 2;
        int fail = 0;
        int32_t x, y, zp, zq;
        int64_t z;
        uint64_t z_abs;
        uint32_t x_abs, y_abs;

        x = inP[idx];
        y = inQ[idx];
        z = out[idx];

        if( z > 0 )
            z_abs = z;
        else
            z_abs = -z;
        if( x > 0 )
            x_abs = x;
        else
            x_abs = -x;
        if( y > 0 )
            y_abs = y;
        else
            y_abs = -y;

        zp = mod_s64( z, CRT_32_P );
        zq = mod_s64( z, CRT_32_Q );

        if( z_abs >= pq_half )
        {
            debug_printf( "FAIL [%u]: |z| (%llu) >= P*Q/2 (%u*%u=%llu)\n", idx,
                          (unsigned long long) z_abs, CRT_32_P, CRT_32_Q, pq_half );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        if( zp != x )
        {
            debug_printf( "FAIL[%u]: z (%lld) %% p = %d != x (%d)\n", idx,
                          (long long) z, zp, x );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        if( zq  != y )
        {
            debug_printf( "FAIL [%u]: z (%lld) %% q = %d != y (%d)\n", idx,
                          (long long) z, zq, y );
            debug_printf( "INPUT [%u]: x (%d), y (%d)\n", idx, x, y );
            fail = 1;
        }

        failures += fail;
    }

    if( failures > 0 )
    {
        debug_printf( "Failures: %d\n", failures );
        debug_test_fail();
        return( 1 );
    }

    if( compare_buf_s64( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s64( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s64( out, CRT_32_SIZE, "MVE" );

        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %lld (ref) != %lld (mve)\n",
                              idx, out_ref[idx], out[idx] );
                debug_printf( "Inputs at index %u: x=%d (p=%u), y=%d (q=%u)\n",
                              idx, inP[idx], CRT_32_P, inQ[idx], CRT_32_Q );
            }
        }

        debug_test_fail();
        return( 1 );
    }


    debug_test_ok();
    return( 0 );
}

void chunk_dechunk_22_s64_to_32( uint32_t *dst, int64_t *src, size_t size )
{
    int64_t carry = 0;
    uint64_t const mask = (1u<<22)-1;
    for( unsigned idx=0; idx < size; idx++ )
    {
        int64_t cur = src[idx];
        cur        += carry;
        dst[idx]  = cur & mask;
        carry = cur >> 22;
    }
}

void chunk_dechunk_22_s32_to_32( uint32_t *dst, int32_t *src, size_t size )
{
    uint32_t carry = 0;
    uint32_t const mask = (1u<<22)-1;
    for( unsigned idx=0; idx < size; idx++ )
    {
        int32_t cur = src[idx];
        cur      += carry;
        dst[idx]  = ( cur & mask );
        carry = ( cur >> 22 );
    }
}

#if defined(TEST_CRT_S32_CHUNK_DECHUNK_REDUCE)
int test_crt_s32_chunk_dechunk_reduce()
{
    debug_test_start( "Test 2x32-bit CRT-chunk-dechunk-reduce, signed" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int32_t out    [CRT_32_SIZE];
    int32_t out_ref [CRT_32_SIZE];
    int32_t out_ref2[CRT_32_SIZE];
    int64_t out_tmp_mve[CRT_32_SIZE];
    int64_t out_tmp_C  [CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned i=0; i < CRT_32_SIZE; i++ )
    {
        inP[i] >>= 1;
        inQ[i] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    measure_start();
    crt_s32_chunk_dechunk_reduce( out, inP, inQ, CRT_32_SIZE );
    measure_end();
    chunk_dechunk_22_s32_to_32( out, out, CRT_32_SIZE );

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );
    crt_s32_C( out_tmp_C, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );
    chunk_dechunk_22_s64_to_32( out_ref, out_tmp_C, CRT_32_SIZE );

    if( compare_buf_s32( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s32( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s32( out, CRT_32_SIZE, "MVE" );
        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, out_ref[idx], out[idx] );
            }
        }
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif

#if defined(TEST_CRT_S32_CHUNK_DECHUNK)
int test_crt_s32_chunk_dechunk()
{
    debug_test_start( "Test 2x32-bit CRT-chunk-dechunk" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int32_t out    [CRT_32_SIZE];
    int32_t out_ref [CRT_32_SIZE];
    int32_t out_ref2[CRT_32_SIZE];
    int64_t out_tmp_mve[CRT_32_SIZE];
    int64_t out_tmp_C  [CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned i=0; i < CRT_32_SIZE; i++ )
    {
        inP[i] >>= 1;
        inQ[i] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );

    measure_start();
    crt_s32_chunk_dechunk( out, inP, inQ, CRT_32_SIZE );
    measure_end();
    chunk_dechunk_22_s32_to_32( out, out, CRT_32_SIZE );

    crt_s32_C( out_tmp_C, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );
    chunk_dechunk_22_s64_to_32( out_ref, out_tmp_C, CRT_32_SIZE );

    if( compare_buf_s32( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s32( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s32( out, CRT_32_SIZE, "MVE" );
        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, out_ref[idx], out[idx] );
            }
        }
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif

#if defined(TEST_CRT_S32_CHUNK_DECHUNK_REDUCE_CANONICAL)
int test_crt_s32_chunk_dechunk_reduce_canonical()
{
    debug_test_start( "Test 2x32-bit CRT-chunk-dechunk-reduce canonical, signed" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int32_t out    [CRT_32_SIZE];
    int32_t out_ref [CRT_32_SIZE];
    int32_t out_ref2[CRT_32_SIZE];
    int64_t out_tmp_mve[CRT_32_SIZE];
    int64_t out_tmp_C  [CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned i=0; i < CRT_32_SIZE; i++ )
    {
        inP[i] >>= 1;
        inQ[i] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    measure_start();
    crt_s32_chunk_dechunk_reduce_canonical( out, inP, inQ, CRT_32_SIZE );
    measure_end();

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );
    crt_s32_C( out_tmp_C, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );
    chunk_dechunk_22_s64_to_32( out_ref, out_tmp_C, CRT_32_SIZE );

    if( compare_buf_s32( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s32( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s32( out, CRT_32_SIZE, "MVE" );
        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, out_ref[idx], out[idx] );
            }
        }
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_crt_s32_chunk_dechunk_reduce_canonical_v2()
{
    debug_test_start( "Test 2x32-bit CRT-chunk-dechunk-reduce canonical, signed, v2" );

    int32_t inP    [CRT_32_SIZE];
    int32_t inQ    [CRT_32_SIZE];
    int32_t out    [CRT_32_SIZE];
    int32_t out_ref [CRT_32_SIZE];
    int32_t out_ref2[CRT_32_SIZE];
    int64_t out_tmp_mve[CRT_32_SIZE];
    int64_t out_tmp_C  [CRT_32_SIZE];

    fill_random_u32( inQ, CRT_32_SIZE );
    fill_random_u32( inP, CRT_32_SIZE );
    for( unsigned i=0; i < CRT_32_SIZE; i++ )
    {
        inP[i] >>= 1;
        inQ[i] >>= 1;
    }

    memset( out,     0, sizeof( out     ) );
    memset( out_ref, 0, sizeof( out_ref ) );

    measure_start();
    crt_s32_chunk_dechunk_reduce_canonical_v2( out, inP, inQ, CRT_32_SIZE );
    measure_end();

    mod_buf_s32( inP, CRT_32_SIZE, CRT_32_P );
    mod_buf_s32( inQ, CRT_32_SIZE, CRT_32_Q );
    crt_s32_C( out_tmp_C, inP, inQ, CRT_32_P, CRT_32_Q, CRT_32_P_INV_MOD_Q, CRT_32_SIZE );
    chunk_dechunk_22_s64_to_32( out_ref, out_tmp_C, CRT_32_SIZE );

    if( compare_buf_s32( out_ref, out, CRT_32_SIZE ) != 0 )
    {
        debug_print_buf_s32( out_ref, CRT_32_SIZE, "Reference" );
        debug_print_buf_s32( out, CRT_32_SIZE, "MVE" );
        for( unsigned idx=0; idx < CRT_32_SIZE; idx++ )
        {
            if( out_ref[idx] != out[idx] )
            {
                debug_printf( "Failure at index %u: %u (ref) != %u (mve)\n",
                              idx, out_ref[idx], out[idx] );
            }
        }
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif

int main(void)
{
    int ret = 0;
    int n = INITIAL_SEED;

    for( int i=0; i < NUM_ITERATIONS; i++ )
    {
        srand(n+i);

#if defined(CHECK_CRT_S32_SINGLE)
        ret |= check_crt_s32_single();
#endif /* CHECK_CRT_U32_SINGLE_SIGNED */

#if defined(TEST_CRT_S32)
        ret |= test_crt_s32();
#endif /* TEST_CRT_S32 */

#if defined(TEST_CRT_S32_REDUCE)
        ret |= test_crt_s32_reduce();
#endif /* TEST_CRT_S32_REDUCE */

#if defined(TEST_CRT_S32_CHUNK_DECHUNK)
        ret |= test_crt_s32_chunk_dechunk();
#endif /* TEST_CRT_S32_CHUNK_DECHUNK */

#if defined(TEST_CRT_S32_CHUNK_DECHUNK_REDUCE)
        ret |= test_crt_s32_chunk_dechunk_reduce();
#endif /* TEST_CRT_S32_CHUNK_DECHUNK_REDUCE */

#if defined(TEST_CRT_S32_CHUNK_DECHUNK_REDUCE_CANONICAL)
        ret |= test_crt_s32_chunk_dechunk_reduce_canonical();
        ret |= test_crt_s32_chunk_dechunk_reduce_canonical_v2();
#endif /* TEST_CRT_U32_CHUNK_DECHUNK_REDUCE_CANONICAL */

        if( ret != 0 )
        {
            debug_printf( "Failing seed: %d\n", n+i );
            return( ret );
        }
    }

    debug_printf( "ALL GOOD!\n" );
    return( 0 );
}
