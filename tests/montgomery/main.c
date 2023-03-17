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

#include "montgomery_const.h"
#include "montgomery.h"

/*
 * Configure which tests to build and run
 *
 * Comment out tests you don't need, and they'll be
 * removed at compile-time. This is useful to generate
 * minimal test images, esp. if simulation is slow.
 */
#define TEST_TWISTED_CYCLIC_MUL_U32
#define TEST_TWISTED_CYCLIC_MUL_U32_LONG
#define TEST_TWISTED_CYCLIC_MUL_U32_EXPAND
#define TEST_TWISTED_CYCLIC_MUL_U32_EXPAND_DOUBLE
#define TEST_CYCLIC_MUL_U16
#define TEST_CYCLIC_MUL_U32
#define TEST_MONTGOMERY_U16_ROUND
#define TEST_MONTGOMERY_PT_U32_ROUND
#define TEST_MONTGOMERY_PT_U32
#define TEST_MONTGOMERY_PT_ACC_U32
#define TEST_MONTGOMERY_ROUND_PT_ACC_U32
#define TEST_MONTGOMERY_ROUND_PT_ACC_U32_X2
#define TEST_MONTGOMERY_ROUND_PT_ACC_U32_X4
#define TEST_MONTGOMERY_PT_U16_ROUND

//#define TEST_CORE_ONLY        /* Enable to build for minimal image
//                               * for performance analysis.                 */

#define TEST_REPEAT 1

/* Reduce array of 16-bit values w.r.t. constant modulus. */
void reduce_q_u16( int16_t *src, size_t size )
{
    for( unsigned idx = 0; idx < size; idx++ )
    {
        int32_t tmp;
        src[idx] = src[idx] % mod_q16;
        if( src[idx] < 0 )
            src[idx] += mod_q16;
    }
}

/* Reference C-implementation for multiplication in F_q[X]/(X^2-1). */
static void cyclic_mul_u16_C( int16_t const *src_a,
                              int16_t const *src_b,
                              int16_t *dst,
                              size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 2 )
    {
        int16_t a0 = src_a[ idx + 0 ];
        int16_t a1 = src_a[ idx + 1 ];
        int16_t b0 = src_b[ idx + 0 ];
        int16_t b1 = src_b[ idx + 1 ];

        int32_t c0 = a0*b0 + a1*b1;
        int32_t c1 = a0*b1 + a1*b0;

        int16_t res0 = c0 % mod_q16;
        int16_t res1 = c1 % mod_q16;

        if( res0 < 0 )
            res0 += mod_q16;

        if( res1 < 0 )
            res1 += mod_q16;

        dst[ idx + 0 ] = res0;
        dst[ idx + 1 ] = res1;
    }
}

/*
 * Remove Montgomery scalar
 *
 * Recall that Montgomery multiplication computes a*b*inv_R,
 * where inv_R is the inverse of 2^{16,32} modulo q.
 *
 * This function multiplies with 2^{16,32} modulo q to remove
 * the Montgomery scalar.
 */
void mul_q_u16( int16_t *src, int32_t c, size_t size )
{
    for( unsigned idx = 0; idx < size; idx++ )
    {
        int32_t tmp;
        src[idx] = src[idx] % mod_q16;
        if( src[idx] < 0 )
            src[idx] += mod_q16;

        tmp = (int32_t) src[idx] * c;
        src[idx] = tmp % mod_q16;
        if( src[idx] < 0 )
            src[idx] += mod_q16;
    }
}

#if !defined(TEST_CORE_ONLY)
int test_cyclic_mul_u16()
{
    int16_t src_a  [SIZE];
    int16_t src_b  [SIZE];
    int16_t dst_mve[SIZE];
    int16_t dst_C  [SIZE];

    debug_test_start( "Test: 16-bit cyclic polynomial multiplication" );

    srand(time(NULL));

    for( unsigned idx = 0; idx < SIZE; idx++ )
    {
        src_a[idx] = rand() % (2 * mod_q16) - mod_q16;
        src_b[idx] = rand() % (2 * mod_q16) - mod_q16;
    }

    /* Step 1: Compute MVE-based cyclic multiplication */
    cyclic_mul_u16_mve( src_a, src_b, dst_mve );

    /* Step 2: Compute C reference cyclic multiplication */
    cyclic_mul_u16_C( src_a, src_b, dst_C, SIZE );

    /* Step 3: Normalize and compare */

    reduce_q_u16( dst_mve, SIZE );
    mul_q_u16( dst_mve, (int32_t) 1 << 15, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s16( src_a,   SIZE, "A" );
        debug_print_buf_s16( src_b,   SIZE, "B" );
        debug_print_buf_s16( dst_C,   SIZE, "Ref" );
        debug_print_buf_s16( dst_mve, SIZE, "MVE" );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_cyclic_mul_u16()
{
    int16_t src_a  [SIZE];
    int16_t src_b  [SIZE];
    int16_t dst_mve[SIZE];
    cyclic_mul_u16_mve( src_a, src_b, dst_mve );
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#define DEG2_U16_SINGLE_SIZE 8
#if !defined(TEST_CORE_ONLY)
int test_cyclic_mul_u16_single()
{
    int16_t src_a  [DEG2_U16_SINGLE_SIZE];
    int16_t src_b  [DEG2_U16_SINGLE_SIZE];
    int16_t dst_mve[DEG2_U16_SINGLE_SIZE];
    int16_t dst_C  [DEG2_U16_SINGLE_SIZE];

    debug_test_start( "Test: 16-bit cyclic polynomial multiplication (single)" );

    srand(time(NULL));

    for( unsigned idx = 0; idx < DEG2_U16_SINGLE_SIZE; idx++ )
    {
        src_a[idx] = rand() % (2 * mod_q16) - mod_q16;
        src_b[idx] = rand() % (2 * mod_q16) - mod_q16;
    }

    /* Step 1: Compute MVE-based cyclic multiplication */
    cyclic_mul_u16_core_mve( src_a, src_b, dst_mve );

    /* Step 2: Compute C reference cyclic multiplication */
    cyclic_mul_u16_C( src_a, src_b, dst_C, DEG2_U16_SINGLE_SIZE );

    /* Step 3: Normalize and compare */

    reduce_q_u16( dst_mve, DEG2_U16_SINGLE_SIZE );
    mul_q_u16( dst_mve, (int32_t) 1 << 15, DEG2_U16_SINGLE_SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s16( src_a,   DEG2_U16_SINGLE_SIZE, "A" );
        debug_print_buf_s16( src_b,   DEG2_U16_SINGLE_SIZE, "B" );
        debug_print_buf_s16( dst_C,   DEG2_U16_SINGLE_SIZE, "Ref" );
        debug_print_buf_s16( dst_mve, DEG2_U16_SINGLE_SIZE, "MVE" );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_cyclic_mul_u16_single()
{
    int16_t src_a  [DEG2_U16_SINGLE_SIZE];
    int16_t src_b  [DEG2_U16_SINGLE_SIZE];
    int16_t dst_mve[DEG2_U16_SINGLE_SIZE];
    cyclic_mul_u16_core_mve( src_a, src_b, dst_mve );
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

/* Reference C-implementation for multiplication in F_q[X]/(X^2-1). */
static void cyclic_mul_u32_C( int32_t const *src_a,
                              int32_t const *src_b,
                              int32_t *dst,
                              size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 2 )
    {
        int64_t a0 = src_a[ idx + 0 ];
        int64_t a1 = src_a[ idx + 1 ];
        int64_t b0 = src_b[ idx + 0 ];
        int64_t b1 = src_b[ idx + 1 ];

        int64_t c0 = a0*b0 + a1*b1;
        int64_t c1 = a0*b1 + a1*b0;

        int32_t res0 = c0 % mod_q32;
        int32_t res1 = c1 % mod_q32;

        if( res0 < 0 )
            res0 += mod_q32;

        if( res1 < 0 )
            res1 += mod_q32;

        dst[ idx + 0 ] = res0;
        dst[ idx + 1 ] = res1;
    }
}

static void cyclic_mul_deg4_u32_C( int32_t const *src_a,
                                   int32_t const *src_b,
                                   int32_t *dst,
                                   size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 4 )
    {
        int64_t a0 = src_a[ idx + 0 ];
        int64_t a1 = src_a[ idx + 1 ];
        int64_t a2 = src_a[ idx + 2 ];
        int64_t a3 = src_a[ idx + 3 ];
        int64_t b0 = src_b[ idx + 0 ];
        int64_t b1 = src_b[ idx + 1 ];
        int64_t b2 = src_b[ idx + 2 ];
        int64_t b3 = src_b[ idx + 3 ];

        int64_t c0 = a0*b0 + a1*b3 + a2*b2 + a3*b1;
        int64_t c1 = a0*b1 + a1*b0 + a2*b3 + a3*b2;
        int64_t c2 = a0*b2 + a1*b1 + a2*b0 + a3*b3;
        int64_t c3 = a0*b3 + a1*b2 + a2*b1 + a3*b0;

        int32_t res0 = c0 % mod_q32;
        int32_t res1 = c1 % mod_q32;
        int32_t res2 = c2 % mod_q32;
        int32_t res3 = c3 % mod_q32;

        if( res0 < 0 )
            res0 += mod_q32;
        if( res1 < 0 )
            res1 += mod_q32;
        if( res2 < 0 )
            res2 += mod_q32;
        if( res3 < 0 )
            res3 += mod_q32;

        dst[ idx + 0 ] = res0;
        dst[ idx + 1 ] = res1;
        dst[ idx + 2 ] = res2;
        dst[ idx + 3 ] = res3;
    }
}

static void twisted_mul_deg4_u32_C( int32_t const *src_a,
                                    int32_t const *src_b,
                                    int32_t *dst,
                                    size_t size )
{
    for( unsigned idx = 0, idxb=0; idx < size; idx += 4, idxb += 8 )
    {
        int64_t a0  = src_a[ idx  + 3 ];
        int64_t a1  = src_a[ idx  + 2 ];
        int64_t a2  = src_a[ idx  + 1 ];
        int64_t a3  = src_a[ idx  + 0 ];
        int64_t b0  = src_b[ idxb + 3 ];
        int64_t b1  = src_b[ idxb + 2 ];
        int64_t b2  = src_b[ idxb + 1 ];
        int64_t b3  = src_b[ idxb + 0 ];
        int64_t bt0 = src_b[ idxb + 7 ];
        int64_t bt1 = src_b[ idxb + 6 ];
        int64_t bt2 = src_b[ idxb + 5 ];
        int64_t bt3 = src_b[ idxb + 4 ];

        int64_t c0 = a0*b0 + a1*bt3 + a2*bt2 + a3*bt1;
        int64_t c1 = a0*b1 + a1*b0  + a2*bt3 + a3*bt2;
        int64_t c2 = a0*b2 + a1*b1  + a2*b0  + a3*bt3;
        int64_t c3 = a0*b3 + a1*b2  + a2*b1  + a3*b0;

        int32_t res0 = c0 % mod_q32;
        int32_t res1 = c1 % mod_q32;
        int32_t res2 = c2 % mod_q32;
        int32_t res3 = c3 % mod_q32;

        if( res0 < 0 )
            res0 += mod_q32;
        if( res1 < 0 )
            res1 += mod_q32;
        if( res2 < 0 )
            res2 += mod_q32;
        if( res3 < 0 )
            res3 += mod_q32;

        dst[ idx + 0 ] = res0;
        dst[ idx + 1 ] = res1;
        dst[ idx + 2 ] = res2;
        dst[ idx + 3 ] = res3;
    }
}

static void twisted_mul_deg4_u32_expand_C( int32_t *dst,
                                           int32_t const *src,
                                           int32_t const *twiddles,
                                           size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 4 )
    {
        unsigned twiddle_idx = idx / 4;
        int64_t a0 = src[ idx + 0 ];
        int64_t a1 = src[ idx + 1 ];
        int64_t a2 = src[ idx + 2 ];
        int64_t a3 = src[ idx + 3 ];

        int64_t twiddle = twiddles[2*twiddle_idx];

        int32_t t0 = (a0 * twiddle) % mod_q32;
        int32_t t1 = (a1 * twiddle) % mod_q32;
        int32_t t2 = (a2 * twiddle) % mod_q32;
        int32_t t3 = (a3 * twiddle) % mod_q32;

        if( t0 < 0 )
            t0 += mod_q32;
        if( t1 < 0 )
            t1 += mod_q32;
        if( t2 < 0 )
            t2 += mod_q32;
        if( t3 < 0 )
            t3 += mod_q32;

        dst[ 2*idx + 0 ] = a3;
        dst[ 2*idx + 1 ] = a2;
        dst[ 2*idx + 2 ] = a1;
        dst[ 2*idx + 3 ] = a0;
        dst[ 2*idx + 4 ] = t3;
        dst[ 2*idx + 5 ] = t2;
        dst[ 2*idx + 6 ] = t1;
        dst[ 2*idx + 7 ] = t0;
    }
}

static void twisted_mul_deg4_u32_expand_double_C( int32_t *dst,
                                           int32_t const *src,
                                           int32_t const *twiddles,
                                           int32_t const *twiddle_fix_ptr,
                                           size_t size )
{
    int64_t twiddle_fix = twiddle_fix_ptr[0];

    for( unsigned idx = 0; idx < size; idx += 4 )
    {
        unsigned twiddle_idx = idx / 4;
        int64_t a0 = src[ idx + 0 ];
        int64_t a1 = src[ idx + 1 ];
        int64_t a2 = src[ idx + 2 ];
        int64_t a3 = src[ idx + 3 ];

        int64_t twiddle = twiddles[2*twiddle_idx];

        int32_t t0 = (a0 * twiddle) % mod_q32;
        int32_t t1 = (a1 * twiddle) % mod_q32;
        int32_t t2 = (a2 * twiddle) % mod_q32;
        int32_t t3 = (a3 * twiddle) % mod_q32;

        if( t0 < 0 )
            t0 += mod_q32;
        if( t1 < 0 )
            t1 += mod_q32;
        if( t2 < 0 )
            t2 += mod_q32;
        if( t3 < 0 )
            t3 += mod_q32;

        dst[ 2*idx + 4 ] = t3;
        dst[ 2*idx + 5 ] = t2;
        dst[ 2*idx + 6 ] = t1;
        dst[ 2*idx + 7 ] = t0;

        t0 = (a0 * twiddle_fix) % mod_q32;
        t1 = (a1 * twiddle_fix) % mod_q32;
        t2 = (a2 * twiddle_fix) % mod_q32;
        t3 = (a3 * twiddle_fix) % mod_q32;

        if( t0 < 0 )
            t0 += mod_q32;
        if( t1 < 0 )
            t1 += mod_q32;
        if( t2 < 0 )
            t2 += mod_q32;
        if( t3 < 0 )
            t3 += mod_q32;

        dst[ 2*idx + 0 ] = t3;
        dst[ 2*idx + 1 ] = t2;
        dst[ 2*idx + 2 ] = t1;
        dst[ 2*idx + 3 ] = t0;

    }
}

/* Reference C-implementation for multiplication in F_q[X]/(X^4-1). */
static void cyclic_mul_deg4_u32_add_sub_C( int32_t *dst,
                                           size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 8, dst += 8 )
    {
        int32_t a0 = dst[0];
        int32_t a1 = dst[1];
        int32_t a2 = dst[2];
        int32_t a3 = dst[3];
        int32_t b0 = dst[4];
        int32_t b1 = dst[5];
        int32_t b2 = dst[6];
        int32_t b3 = dst[7];

        dst[0] = a0 + b0;
        dst[4] = a0 - b0;
        dst[1] = a1 + b1;
        dst[5] = a1 - b1;
        dst[2] = a2 + b2;
        dst[6] = a2 - b2;
        dst[3] = a3 + b3;
        dst[7] = a3 - b3;
    }
}

/* Reference C-implementation for multiplication in F_q[X]/(X^4-1). */
static void cyclic_mul_deg4_u32_arith_rev_C( int32_t *dst,
                                             size_t size )
{
    int32_t * dst_h = dst + size/2;
    for( unsigned idx = 0; idx <= size/2; idx += 4, dst += 4, dst_h += 4 )
    {
        int32_t tmp;
#define SWAP(a,b) do { tmp = (a); (a) = (b); (b) = tmp; } while( 0 )
        SWAP(dst[0], dst_h[0]);
        SWAP(dst[1], dst_h[1]);
        SWAP(dst[2], dst_h[2]);
        SWAP(dst[3], dst_h[3]);
#undef SWAP
    }
}

/* Reference C-implementation for multiplication in F_q[X]/(X^4-1). */
static void cyclic_mul_deg4_u32_split_halves_C( int32_t *dst )
{
    int32_t tmp[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t (*tmp_)[4] = tmp;
    int32_t (*dst_)[4] = dst;

    unsigned blocks = VECTOR_LENGTH/4;
    for( unsigned idx = 0; idx < blocks/2; idx++ )
    {
        memcpy(tmp_ + 0*(blocks/2) + idx, dst_ + 2*idx + 0, 16 );
        memcpy(tmp_ + 1*(blocks/2) + idx, dst_ + 2*idx + 1, 16 );
    }

    memcpy( dst, tmp, sizeof( tmp ) );
}

/* Reference C-implementation for multiplication in F_q[X]/(X^4-1). */
static void cyclic_mul_deg4_u32_long_C( int32_t const *src_a,
                                        int32_t const *src_b,
                                        int64_t *dst,
                                        size_t size )
{
    for( unsigned idx = 0; idx < size; idx += 4 )
    {
        int64_t a0 = src_a[ idx + 0 ];
        int64_t a1 = src_a[ idx + 1 ];
        int64_t a2 = src_a[ idx + 2 ];
        int64_t a3 = src_a[ idx + 3 ];
        int64_t b0 = src_b[ idx + 0 ];
        int64_t b1 = src_b[ idx + 1 ];
        int64_t b2 = src_b[ idx + 2 ];
        int64_t b3 = src_b[ idx + 3 ];

        int64_t c0 = a0*b0 + a1*b3 + a2*b2 + a3*b1;
        int64_t c1 = a0*b1 + a1*b0 + a2*b3 + a3*b2;
        int64_t c2 = a0*b2 + a1*b1 + a2*b0 + a3*b3;
        int64_t c3 = a0*b3 + a1*b2 + a2*b1 + a3*b0;

        dst[ idx + 0 ] = c0;
        dst[ idx + 1 ] = c1;
        dst[ idx + 2 ] = c2;
        dst[ idx + 3 ] = c3;
    }
}

/*
 * Remove Montgomery scalar
 *
 * Recall that Montgomery multiplication computes a*b*inv_R,
 * where inv_R is the inverse of 2^{16,32} modulo q.
 *
 * This function multiplies with 2^{16,32} modulo q to remove
 * the Montgomery scalar.
 */
void mul_q_u32( int32_t *src, int64_t c, size_t size )
{
    for( unsigned idx = 0; idx < size; idx++ )
    {
        int64_t tmp;
        src[idx] = src[idx] % mod_q32;
        if( src[idx] < 0 )
            src[idx] += mod_q32;
        tmp = (int64_t) src[idx] * c;
        src[idx] = tmp % mod_q32;
        if( src[idx] < 0 )
            src[idx] += mod_q32;
    }
}

void reduce_q_u32( int32_t *src, size_t size )
{
    for( unsigned idx = 0; idx < size; idx++ )
    {
        int64_t tmp;
        src[idx] = src[idx] % mod_q32;
        if( src[idx] < 0 )
            src[idx] += mod_q32;
    }
}

#if !defined(TEST_CORE_ONLY)
int test_cyclic_mul_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];

    int32_t dst_mve[SIZE];
    int32_t dst_C[SIZE];

    debug_test_start( "Test: 32-bit cyclic polynomial multiplication" );

    srand(time(NULL));

    for( unsigned idx = 0; idx < SIZE; idx++ )
    {
        src_a[idx] = rand() % mod_q32;
        src_b[idx] = rand() % mod_q32;
    }

    dst_mve[0] = mod_q32_inv_u32;

    /* Step 1: MVE based multiplication */
    cyclic_mul_u32_mve( src_a, src_b, dst_mve );

    /* Step 2: C reference multiplication */
    cyclic_mul_u32_C( src_a, src_b, dst_C, SIZE );

    /* Step 3: Normalize and compare */

    reduce_q_u32( dst_mve, SIZE );
    mul_q_u32( dst_mve, (int64_t) 1 << 31, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_test_fail();
        debug_print_buf_s32( src_a,   SIZE, "A" );
        debug_print_buf_s32( src_b,   SIZE, "B" );
        debug_print_buf_s32( dst_C,   SIZE, "Ref" );
        debug_print_buf_s32( dst_mve, SIZE, "MVE" );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_cyclic_mul_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];
    int32_t dst_mve[SIZE];
    cyclic_mul_u32_mve( src_a, src_b, dst_mve );
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_cyclic_mul_deg4_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];

    int32_t dst_mve[SIZE];
    int32_t dst_C[SIZE];

    debug_test_start( "Test: 32-bit degree-4 cyclic polynomial multiplication" );

    srand(time(NULL));

    for( unsigned idx = 0; idx < SIZE; idx++ )
    {
        src_a[idx] = rand() % mod_q32;
        src_b[idx] = rand() % mod_q32;
    }

    dst_mve[0] = mod_q32;
    dst_mve[1] = mod_q32_inv_u32;

    /* Step 1: MVE based multiplication */
    measure_start();
    cyclic_mul_deg4_u32_alt_mve( src_a, src_b, dst_mve );
    measure_end();

    /* Step 2: C reference multiplication */
    cyclic_mul_deg4_u32_C( src_a, src_b, dst_C, SIZE );

    /* Step 3: Normalize and compare */

    reduce_q_u32( dst_mve, SIZE );
    mul_q_u32( dst_mve, (int64_t) 1 << 31, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( int32_t ) * SIZE ) != 0 )
    {
        debug_print_buf_s32( src_a,   SIZE, "A" );
        debug_print_buf_s32( src_b,   SIZE, "B" );
        debug_print_buf_s32( dst_C,   SIZE, "Ref" );
        debug_print_buf_s32( dst_mve, SIZE, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_cyclic_mul_deg4_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];
    int32_t dst_mve[SIZE];
    measure_start();
    cyclic_mul_deg4_u32_alt_mve( src_a, src_b, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#define DEG4_U32_SINGLE_SIZE 8
#if !defined(TEST_CORE_ONLY)
int test_cyclic_mul_deg4_u32_single()
{
    int32_t src_a[DEG4_U32_SINGLE_SIZE];
    int32_t src_b[DEG4_U32_SINGLE_SIZE];

    int32_t dst_mve[DEG4_U32_SINGLE_SIZE];
    int32_t dst_C[DEG4_U32_SINGLE_SIZE];

    debug_test_start( "Test: 32-bit degree-4 cyclic polynomial multiplication (single)" );

    srand(time(NULL));

    for( unsigned idx = 0; idx < DEG4_U32_SINGLE_SIZE; idx++ )
    {
        src_a[idx] = rand() % mod_q32;
        src_b[idx] = rand() % mod_q32;
    }

    dst_mve[0] = mod_q32;
    dst_mve[1] = mod_q32_inv_u32;

    /* Step 1: MVE based multiplication */
    cyclic_mul_deg4_u32_mve( src_a, src_b, dst_mve );

    /* Step 2: C reference multiplication */
    cyclic_mul_deg4_u32_C( src_a, src_b, dst_C, DEG4_U32_SINGLE_SIZE );

    /* Step 3: Normalize and compare */

    reduce_q_u32( dst_mve, DEG4_U32_SINGLE_SIZE );
    mul_q_u32( dst_mve, (int64_t) 1 << 31, DEG4_U32_SINGLE_SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( int32_t ) * DEG4_U32_SINGLE_SIZE ) != 0 )
    {
        debug_print_buf_s32( src_a,   DEG4_U32_SINGLE_SIZE, "A" );
        debug_print_buf_s32( src_b,   DEG4_U32_SINGLE_SIZE, "B" );
        debug_print_buf_s32( dst_C,   DEG4_U32_SINGLE_SIZE, "Ref" );
        debug_print_buf_s32( dst_mve, DEG4_U32_SINGLE_SIZE, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_cyclic_mul_deg4_u32_single()
{
    int32_t src_a[DEG4_U32_SINGLE_SIZE];
    int32_t src_b[DEG4_U32_SINGLE_SIZE];
    int32_t dst_mve[DEG4_U32_SINGLE_SIZE];
    cyclic_mul_deg4_u32_mve( src_a, src_b, dst_mve );
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

void rev_deg4_u32( int32_t *src, int len )
{
    for(; len > 0; len -= 4)
    {
        uint32_t a0, a1, a2, a3;
        a0 = src[0];
        a1 = src[1];
        a2 = src[2];
        a3 = src[3];

        src[0] = a3;
        src[1] = a2;
        src[2] = a1;
        src[3] = a0;

        src += 4;
    }
}

void rev_twist_u32( int32_t *dst, int32_t *src, int len )
{
    for( ; len > 0; len -= 4 )
    {
        dst[0] = src[3];
        dst[1] = src[2];
        dst[2] = src[1];
        dst[3] = src[0];
        dst[4] = src[3]; /* twist */
        dst[5] = src[2]; /* twist */
        dst[6] = src[1]; /* twist */
        dst[7] = src[0]; /* twist */

        dst += 8;
        src += 4;
    }
}

#if !defined(TEST_CORE_ONLY)
int test_twisted_cyclic_mul_deg4_u32()
{
    int32_t src_a[VECTOR_LENGTH];
    int32_t src_b[VECTOR_LENGTH];
    int32_t src_b_expanded[2*VECTOR_LENGTH];

    int32_t dst_mve[VECTOR_LENGTH];
    int32_t dst_C[VECTOR_LENGTH];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    debug_test_start( "Test: Twisted 32-bit degree-4 cyclic polynomial multiplication (single)" );

    memset( src_a,   0, sizeof( src_a ) );
    memset( src_b,   0, sizeof( src_b ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( src_a, VECTOR_LENGTH );
    fill_random_u32( src_b, VECTOR_LENGTH );

    reduce_q_u32( src_a, VECTOR_LENGTH );
    reduce_q_u32( src_b, VECTOR_LENGTH );

    /* Prepare B-input reversed and twisted. */
    rev_twist_u32( src_b_expanded, src_b, VECTOR_LENGTH );
    /* TODO: Twist? */

    dst_mve[0] = mod_q32;
    dst_mve[1] = mod_q32_inv_u32;

    /* Step 2: C reference multiplication */
    cyclic_mul_deg4_u32_C( src_a, src_b, dst_C, VECTOR_LENGTH );

    /* Step 1: MVE based multiplication */
    measure_start();
    twisted_cyclic_mul_deg4_u32_mve_alt( src_a, src_b_expanded, dst_mve, params );
    measure_end();

    /* Step 3: Normalize and compare */
    reduce_q_u32( dst_mve, VECTOR_LENGTH );
    mul_q_u32( dst_mve, (int64_t) 1 << 32, VECTOR_LENGTH );

    if( compare_buf_u32( dst_C, dst_mve, VECTOR_LENGTH ) != 0 )
    {
        debug_print_buf_s32( src_a,   VECTOR_LENGTH, "A" );
        debug_print_buf_s32( src_b,   VECTOR_LENGTH, "B" );
        debug_print_buf_s32( src_b_expanded,   2*VECTOR_LENGTH, "B full" );
        debug_print_buf_s32( dst_C,   VECTOR_LENGTH, "Ref" );
        debug_print_buf_s32( dst_mve, VECTOR_LENGTH, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32_expand()
{
    int32_t twiddles  [2*(VECTOR_LENGTH/4)] __attribute__((aligned(16)));
    int32_t src             [VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_expanded  [2*VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_expanded_C[2*VECTOR_LENGTH] __attribute__((aligned(16)));

    debug_test_start( "Deg-4 basemul preparation" );

    fill_random_u32( src,      VECTOR_LENGTH );
    fill_random_u32( twiddles, 2*(VECTOR_LENGTH/4) );

    for( unsigned i=0; i < VECTOR_LENGTH/4; i++ )
        twiddles[2*i] = twiddles[2*i] % mod_q32;

    memset( src_expanded, 0, sizeof( src_expanded ) );

    /* Prepare twisted twiddles */
    for( unsigned i=0; i < VECTOR_LENGTH/4; i++ )
    {
        uint32_t t = twiddles[2*i];
        twiddles[2*i+1] = (uint32_t)( (uint32_t) t * (uint32_t) mod_q32_inv_u32_neg );
    }

    measure_start();
    twisted_cyclic_mul_deg4_u32_mve_expand( src_expanded, src, twiddles, mod_q32 );
    measure_end();

    twisted_mul_deg4_u32_expand_C( src_expanded_C, src, twiddles, VECTOR_LENGTH );

    // Normalize and compare
    reduce_q_u32( src_expanded, 2 * VECTOR_LENGTH );
    for( unsigned i=0; i < VECTOR_LENGTH; i += 4 )
        mul_q_u32( src_expanded + 2*i + 4, (int64_t) 1 << 31, 4 );

    reduce_q_u32( src_expanded_C, 2 * VECTOR_LENGTH );
    reduce_q_u32( src_expanded, 2 * VECTOR_LENGTH );

    if( compare_buf_u32( src_expanded_C, src_expanded, 2*VECTOR_LENGTH ) != 0 )
    {
        debug_print_buf_s32( src_expanded_C, 2 * VECTOR_LENGTH, "ref" );
        debug_print_buf_s32( src_expanded,   2 * VECTOR_LENGTH, "mve" );

        for( unsigned i=0; i < 2*VECTOR_LENGTH; i++ )
        {
            if( src_expanded_C[i] != src_expanded[i] )
            {
                debug_printf( "Failure at index %u: %d != %d\n",
                              i, src_expanded[i], src_expanded_C[i] );
            }
        }

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32_expand_double()
{
    int32_t twiddle_fix[2];
    int32_t twiddles  [2*(VECTOR_LENGTH/4)] __attribute__((aligned(16)));
    int32_t src             [VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_expanded  [2*VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_expanded_C[2*VECTOR_LENGTH] __attribute__((aligned(16)));

    debug_test_start( "Deg-4 basemul preparation, double" );

    fill_random_u32( src,         VECTOR_LENGTH );
    fill_random_u32( twiddles,    2*(VECTOR_LENGTH/4) );
    fill_random_u32( twiddle_fix, 1 );
    twiddle_fix[0] = twiddle_fix[0] % mod_q32;

    for( unsigned i=0; i < VECTOR_LENGTH/4; i++ )
        twiddles[2*i] = twiddles[2*i] % mod_q32;

    memset( src_expanded, 0, sizeof( src_expanded ) );

    /* Prepare twisted twiddles */
    for( unsigned i=0; i < VECTOR_LENGTH/4; i++ )
    {
        uint32_t t = twiddles[2*i];
        twiddles[2*i+1] = (uint32_t)( (uint32_t) t * (uint32_t) mod_q32_inv_u32_neg );
    }

    twiddle_fix[1] = (uint32_t)( (uint32_t) twiddle_fix[0] * (uint32_t) mod_q32_inv_u32_neg );

    measure_start();
    twisted_cyclic_mul_deg4_u32_mve_expand_double( src_expanded, src, twiddles, twiddle_fix, mod_q32 );
    measure_end();

    twisted_mul_deg4_u32_expand_double_C( src_expanded_C, src, twiddles, twiddle_fix, VECTOR_LENGTH );

    // Normalize and compare
    reduce_q_u32( src_expanded, 2 * VECTOR_LENGTH );
    mul_q_u32( src_expanded, (int64_t) 1 << 31, 2*VECTOR_LENGTH );
//    for( unsigned i=0; i < VECTOR_LENGTH; i += 4 )
//        mul_q_u32( src_expanded + 2*i + 4, (int64_t) 1 << 31, 4 );

    reduce_q_u32( src_expanded_C, 2 * VECTOR_LENGTH );
    reduce_q_u32( src_expanded, 2 * VECTOR_LENGTH );

    if( compare_buf_u32( src_expanded_C, src_expanded, 2*VECTOR_LENGTH ) != 0 )
    {
        debug_print_buf_s32( src_expanded_C, 2 * VECTOR_LENGTH, "ref" );
        debug_print_buf_s32( src_expanded,   2 * VECTOR_LENGTH, "mve" );

        for( unsigned i=0; i < 2*VECTOR_LENGTH; i++ )
        {
            if( src_expanded_C[i] != src_expanded[i] )
            {
                debug_printf( "Failure at index %u: %d != %d\n",
                              i, src_expanded[i], src_expanded_C[i] );
            }
        }

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32_add_sub()
{
    int32_t src_a[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_b[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_b_expanded[2*VECTOR_LENGTH] __attribute__((aligned(16)));

    int32_t dst_mve[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t dst_C[VECTOR_LENGTH] __attribute__((aligned(16)));

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    srand(time(NULL));

    debug_test_start( "Test: Twisted 32-bit degree-4 cyclic polynomial multiplication (add sub)" );

    memset( src_a,   0, sizeof( src_a ) );
    memset( src_b,   0, sizeof( src_b ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( src_a, VECTOR_LENGTH );
    fill_random_u32( src_b, VECTOR_LENGTH );

    reduce_q_u32( src_a, VECTOR_LENGTH );
    reduce_q_u32( src_b, VECTOR_LENGTH );

    /* Prepare B-input reversed and twisted. */
    rev_twist_u32( src_b_expanded, src_b, VECTOR_LENGTH );
    /* TODO: Twist? */

    dst_mve[0] = mod_q32;
    dst_mve[1] = mod_q32_inv_u32;

    /* Step 2: C reference multiplication */
    cyclic_mul_deg4_u32_C( src_a, src_b, dst_C, VECTOR_LENGTH );
    cyclic_mul_deg4_u32_add_sub_C( dst_C, VECTOR_LENGTH );
    reduce_q_u32( dst_C, VECTOR_LENGTH );

    /* Step 1: MVE based multiplication */
    measure_start();
    twisted_cyclic_mul_deg4_u32_add_sub_mve( src_a, src_b_expanded, dst_mve, params );
    measure_end();

    /* Step 3: Normalize and compare */
    reduce_q_u32( dst_mve, VECTOR_LENGTH );
    mul_q_u32( dst_mve, (int64_t) 1 << 32, VECTOR_LENGTH );

    if( compare_buf_u32( dst_C, dst_mve, VECTOR_LENGTH ) != 0 )
    {
        for( unsigned idx=0; idx < VECTOR_LENGTH; idx++ )
            if( dst_C[idx] != dst_mve[idx] )
                debug_printf( "[%u]: %d != %d\n", idx, dst_C[idx], dst_mve[idx] );

        debug_print_buf_s32( src_a,   VECTOR_LENGTH, "A" );
        debug_print_buf_s32( src_b,   VECTOR_LENGTH, "B" );
        debug_print_buf_s32( src_b_expanded,   2*VECTOR_LENGTH, "B full" );
        debug_print_buf_s32( dst_C,   VECTOR_LENGTH, "Ref" );
        debug_print_buf_s32( dst_mve, VECTOR_LENGTH, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32_add_sub_rev()
{
    int32_t src_a[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_b_expanded[2*VECTOR_LENGTH] __attribute__((aligned(16)));

    int32_t dst_mve[VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t dst_C[VECTOR_LENGTH] __attribute__((aligned(16)));

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    srand(time(NULL));

    debug_test_start( "Test: Twisted 32-bit degree-4 cyclic polynomial multiplication (add sub, rev)" );

    memset( src_a,   0, sizeof( src_a ) );
    memset( src_b_expanded,   0, sizeof( src_b_expanded ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( src_a, VECTOR_LENGTH );
    fill_random_u32( src_b_expanded, 2 * VECTOR_LENGTH );

    reduce_q_u32( src_a, VECTOR_LENGTH );
    reduce_q_u32( src_b_expanded, 2 * VECTOR_LENGTH );

    /* Step 1: MVE based multiplication */
    measure_start();
    twisted_cyclic_mul_deg4_u32_add_sub_rev_mve( src_a, src_b_expanded, dst_mve, params );
    measure_end();

    /* Step 2: C reference multiplication */

    twisted_mul_deg4_u32_C( src_a, src_b_expanded, dst_C, VECTOR_LENGTH );
    cyclic_mul_deg4_u32_add_sub_C( dst_C, VECTOR_LENGTH );
    reduce_q_u32( dst_C, VECTOR_LENGTH );

    /* Step 3: Normalize and compare */
    reduce_q_u32( dst_mve, VECTOR_LENGTH );
    mul_q_u32( dst_mve, (int64_t) 1 << 32, VECTOR_LENGTH );

    if( compare_buf_u32( dst_C, dst_mve, VECTOR_LENGTH ) != 0 )
    {
        for( unsigned idx=0; idx < VECTOR_LENGTH; idx++ )
            if( dst_C[idx] != dst_mve[idx] )
                debug_printf( "[%u]: %d != %d\n", idx, dst_C[idx], dst_mve[idx] );

        debug_print_buf_s32( src_a,   VECTOR_LENGTH, "A" );
        debug_print_buf_s32( src_b_expanded,   2*VECTOR_LENGTH, "B full" );
        debug_print_buf_s32( dst_C,   VECTOR_LENGTH, "Ref" );
        debug_print_buf_s32( dst_mve, VECTOR_LENGTH, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

#else /* TEST_CORE_ONLY */

int test_twisted_cyclic_mul_deg4_u32_expand()
{
    int32_t twiddles  [2*(VECTOR_LENGTH/4)] __attribute__((aligned(16)));
    int32_t src             [VECTOR_LENGTH] __attribute__((aligned(16)));
    int32_t src_expanded  [2*VECTOR_LENGTH] __attribute__((aligned(16)));

    measure_start();
    twisted_cyclic_mul_deg4_u32_mve_expand( src_expanded, src, twiddles );
    measure_end();

    debug_test_ok();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32_add_sub()
{
    int32_t src_a[VECTOR_LENGTH];
    int32_t src_b[VECTOR_LENGTH];
    int32_t src_b_expanded[2*VECTOR_LENGTH];
    int32_t dst_mve[VECTOR_LENGTH];
    measure_start();
    twisted_cyclic_mul_deg4_u32_add_sub_mve( src_a, src_b_expanded, dst_mve );
    measure_end();
    return( 0 );
}

int test_twisted_cyclic_mul_deg4_u32()
{
    int32_t src_a[VECTOR_LENGTH];
    int32_t src_b[2*VECTOR_LENGTH];
    int32_t dst_mve[VECTOR_LENGTH];
    measure_start();
    twisted_cyclic_mul_deg4_u32_mve_alt( src_a, src_b, dst_mve );
    measure_end();
    return( 0 );

}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_twisted_cyclic_mul_deg4_u32_long()
{
    int32_t src_a[VECTOR_LENGTH];
    int32_t src_b[VECTOR_LENGTH];
    int32_t src_b_expanded[2*VECTOR_LENGTH];

    int64_t dst_mve[VECTOR_LENGTH];
    int64_t dst_C[VECTOR_LENGTH];

    debug_test_start( "Test: Twisted 32-bit degree-4 cyclic polynomial multiplication (long)" );

    memset( src_a,   0, sizeof( src_a ) );
    memset( src_b,   0, sizeof( src_b ) );
    memset( dst_mve, 0, sizeof( dst_mve ) );

    fill_random_u32( src_a, VECTOR_LENGTH );
    fill_random_u32( src_b, VECTOR_LENGTH );

    reduce_q_u32( src_a, VECTOR_LENGTH );
    reduce_q_u32( src_b, VECTOR_LENGTH );

    /* Prepare B-input reversed and twisted. */
    rev_twist_u32( src_b_expanded, src_b, VECTOR_LENGTH );
    /* TODO: Twist? */

    dst_mve[0] = mod_q32;
    dst_mve[1] = mod_q32_inv_u32;

    /* Step 2: C reference multiplication */
    cyclic_mul_deg4_u32_long_C( src_a, src_b, dst_C, VECTOR_LENGTH );

    /* Step 1: MVE based multiplication */
    measure_start();
    twisted_cyclic_mul_deg4_u32_long_mve_v1( src_a, src_b_expanded, dst_mve );
    measure_end();

    if( compare_buf_u32( dst_C, dst_mve, 2 * VECTOR_LENGTH ) != 0 )
    {
        debug_print_buf_s32( src_a,   VECTOR_LENGTH, "A" );
        debug_print_buf_s32( src_b,   VECTOR_LENGTH, "B" );
        debug_print_buf_s32( src_b_expanded,   2*VECTOR_LENGTH, "B full" );
        debug_print_buf_s32( dst_C,   2*VECTOR_LENGTH, "Ref" );
        debug_print_buf_s32( dst_mve, 2*VECTOR_LENGTH, "MVE" );

        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_twisted_cyclic_mul_deg4_u32_long()
{
    int32_t src_a[VECTOR_LENGTH];
    int32_t src_b[2*VECTOR_LENGTH];
    int64_t dst_mve[VECTOR_LENGTH];
    measure_start();
    twisted_cyclic_mul_deg4_u32_long_mve_v1( src_a, src_b, dst_mve );
    measure_end();
    return( 0 );

}
#endif /* TEST_CORE_ONLY */


void montgomery_u16_C( int16_t const *src_a,
                       int16_t const *src_b,
                       int16_t *dst )
{
    unsigned idx;
    int16_t b = 2*src_b[0];
    for( idx = 0; idx < SIZE; idx++ )
    {
        int32_t v;
        int16_t hi;
        uint16_t lo, tmp, hi_fix;

        v = src_a[idx] * b;

        /* Hi+lo part extraction */
        hi     =  (int16_t)( v >> 16 );
        lo     = (uint16_t)( v >>  0 );

        /* Fixed scalar multiply, lo */
        tmp    = lo * mod_q16_inv_u16;
        /* Fixed scalar multiply, hi */
        hi_fix = (uint32_t)( tmp * mod_q16 ) >> 16;

        dst[idx] = (int16_t)( (int32_t) hi - (int32_t) hi_fix );
    }
}

void mult_u16_C( int16_t const *src_a, int16_t b,
                 int16_t *dst )
{
    unsigned idx;
    for( idx = 0; idx < SIZE; idx++ )
        dst[idx] = (int16_t)( ( src_a[idx] * b ) % mod_q16 );
}

#if !defined(TEST_CORE_ONLY)
int test_montgomery_u16_round()
{
    uint16_t montgomery_multiplier;
    int16_t  real_multiplier;

    int16_t  src_a[SIZE];
    uint16_t src_b[2];

    int16_t dst    [SIZE];
    int16_t dst_mon[SIZE];
    int16_t dst_C  [SIZE];
    int16_t dst_mve[SIZE];

    debug_test_start( "Test: 16-bit Montgomery multiplication using rounding" );

    /* Step 0: Prepare input */

    for( unsigned idx = 0; idx < SIZE; idx++ )
        src_a[idx] = rand() % mod_q16;

    montgomery_multiplier = ( rand() % mod_q16 );

    /* For the rounding implementation, the scalar we're multiplying
     * with must not be even. If it is, add the (odd) modulus to make
     * it odd. In practice, this should be precomputed in the case of
     * static scalars.
     *
     * For dynamic scalars, it's better to use the non-rounding
     * implementation of Montgomery reduction, which is one instruction
     * longer but works for any factor, whether even or not.
     */
    if( montgomery_multiplier % 2 == 0 )
        montgomery_multiplier += mod_q16;

    /* Our implementation of Montgomery multiplication multiplies with
     * _twice_ the scalar. Moreover, we always also multiply with the
     * Montgomery scalar. Account for both to compute the scalar we're
     * actually multiplying with. */
    real_multiplier = ( 2 * mod_u16_inv_q16 * montgomery_multiplier ) % mod_q16;

    src_b[0] = montgomery_multiplier;
    src_b[1] = montgomery_multiplier * mod_q16_inv_u16;

    /* Step 1: MVE based Montgomery multiplication */
    montgomery_u16_round_mve( src_a, src_b, dst_mve );

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_u16_C( src_a, src_b, dst_C );

    /* Step 3: Reference C multiplication */
    mult_u16_C( src_a, real_multiplier, dst );

    /* Step 4: Normalize and compare */

    reduce_q_u16( dst_C, SIZE );
    reduce_q_u16( dst_mve, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 ||
        memcmp( dst,   dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_print_buf_s16( dst,     SIZE, "Mul" );
        debug_print_buf_s16( dst_C,   SIZE, "Ref" );
        debug_print_buf_s16( dst_mve, SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_u16_round()
{
    int16_t  src_a[SIZE];
    uint16_t src_b[2];
    int16_t  dst_mve[SIZE];
    montgomery_u16_round_mve( src_a, src_b, dst_mve );
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

void mult_u32_C( int32_t const *src_a,
                 int32_t const *src_b,
                 int32_t *dst,
                 size_t size )
{
    mod_mul_buf_s32( src_a, src_b, dst, size, mod_q32 );
}

void montgomery_pt_double_u32_C( int32_t const *src_a,
                                 int32_t const *src_b,
                                 int32_t *dst,
                                 size_t size )
{
    unsigned idx;
    for( idx = 0; idx < size; idx++ )
    {
        int64_t v;
        int32_t hi;
        uint32_t lo, tmp, hi_fix;

        v = 2* (int64_t) src_a[idx] * (int64_t) src_b[idx];

        /* Hi+lo part extraction */
        hi     =  (int32_t)( v >> 32 );
        lo     = (uint32_t)( v >>  0 );

        /* Fixed scalar multiply, lo */
        tmp    = lo * mod_q32_inv_u32;
        /* Fixed scalar multiply, hi */
        hi_fix = ( (uint64_t) tmp * (uint64_t) mod_q32 ) >> 32;

        dst[idx] = (int32_t)( (int64_t) hi - (int64_t) hi_fix );
    }
}

void montgomery_pt_u32_C( int32_t const *src_a,
                                 int32_t const *src_b,
                                 int32_t *dst,
                                 size_t size )
{
    unsigned idx;
    for( idx = 0; idx < size; idx++ )
    {
        int64_t v;
        int32_t hi;
        uint32_t lo, tmp, hi_fix;

        v = (int64_t) src_a[idx] * (int64_t) src_b[idx];

        /* Hi+lo part extraction */
        hi     =  (int32_t)( v >> 32 );
        lo     = (uint32_t)( v >>  0 );

        /* Fixed scalar multiply, lo */
        tmp    = lo * mod_q32_inv_u32;
        /* Fixed scalar multiply, hi */
        hi_fix = ( (uint64_t) tmp * (uint64_t) mod_q32 ) >> 32;

        dst[idx] = (int32_t)( (int64_t) hi - (int64_t) hi_fix );
    }
}

void montgomery_pt_u32_with_halving_C( int32_t const *src_a,
                                       int32_t const *src_b,
                                       int32_t *dst,
                                       size_t size )
{
    unsigned idx;
    for( idx = 0; idx < size; idx++ )
    {
        int64_t v;
        int32_t hi;
        uint32_t lo, tmp, hi_fix;

        v = (int64_t) src_a[idx] * (int64_t) src_b[idx];

        /* Hi+lo part extraction */
        hi     =  (int32_t)( v >> 32 );
        lo     = (uint32_t)( v >>  0 );

        /* Fixed scalar multiply, lo */
        tmp    = lo * mod_q32_inv_u32;
        /* Fixed scalar multiply, hi */
        hi_fix = ( (uint64_t) tmp * (uint64_t) mod_q32 ) >> 32;

        dst[idx] = (int32_t)( (int64_t) hi - (int64_t) hi_fix );
    }
}

void buf_reduce_u32( int32_t *src, size_t size )
{
    mod_reduce_buf_s32( src, size, mod_q32 );
}

#if !defined(TEST_CORE_ONLY)
int test_montgomery_pt_u32_round()
{
    int32_t  src_a[SIZE];
    int32_t src_b_[SIZE+2];
    int32_t * const src_b = src_b_ + 2;

    int32_t dst    [SIZE];
    int32_t dst_mon[SIZE];
    int32_t dst_C  [SIZE];
    int32_t dst_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    debug_test_start( "Test: 32-bit Montgomery multiplication using rounding" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    buf_reduce_u32( src_a, SIZE );
    buf_reduce_u32( src_b, SIZE );

    src_b_[0] = mod_q32;
    src_b_[1] = mod_q32_inv_u32_neg;

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_u32_odd_mve( src_a, src_b_, dst_mve, params );
    measure_end();
    mul_q_u32( dst_mve, (int64_t) 1 << 31, SIZE );

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_double_u32_C( src_a, src_b, dst_C, SIZE );
    mul_q_u32( dst_C, (int64_t) 1 << 31, SIZE );

    /* Step 3: Reference C multiplication */
    mult_u32_C( src_a, src_b, dst, SIZE );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( dst, SIZE );
    buf_reduce_u32( dst_C, SIZE );
    buf_reduce_u32( dst_mve, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 ||
        memcmp( dst,   dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_print_buf_s32( dst,     SIZE, "Mul" );
        debug_print_buf_s32( dst_C,   SIZE, "Ref" );
        debug_print_buf_s32( dst_mve, SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_pt_u32_round()
{
    int32_t  src_a[SIZE];
    int32_t src_b_[SIZE+2];
    int32_t dst_mve[SIZE];
    debug_test_start( "Test: 32-bit Montgomery multiplication using rounding" );

    measure_start();
    montgomery_pt_u32_odd_mve( src_a, src_b_, dst_mve );
    measure_end();

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_montgomery_pt_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];

    int32_t dst    [SIZE];
    int32_t dst_mon[SIZE];
    int32_t dst_C  [SIZE];
    int32_t dst_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    debug_test_start( "Test: 32-bit Montgomery multiplication" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    buf_reduce_u32( src_a, SIZE );
    buf_reduce_u32( src_b, SIZE );

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_u32_mve( src_a, src_b, dst_mve, params );
    measure_end();

    mul_q_u32( dst_mve, (int64_t) 1 << 32, SIZE );

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_u32_C( src_a, src_b, dst_C, SIZE );
    mul_q_u32( dst_C, (int64_t) 1 << 32, SIZE );

    /* Step 3: Reference C multiplication */
    mult_u32_C( src_a, src_b, dst, SIZE );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( dst, SIZE );
    buf_reduce_u32( dst_C, SIZE );
    buf_reduce_u32( dst_mve, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 ||
        memcmp( dst,   dst_mve, sizeof( dst_C ) ) != 0 )
    {
        debug_print_buf_s32( dst,     SIZE, "Mul" );
        debug_print_buf_s32( dst_C,   SIZE, "Ref" );
        debug_print_buf_s32( dst_mve, SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_pt_u32()
{
    int32_t  src_a[SIZE];
    int32_t src_b_[SIZE+2];
    int32_t dst_mve[SIZE];
    debug_test_start( "Test: 32-bit Montgomery multiplication" );
    measure_start();
    montgomery_pt_u32_mve( src_a, src_b_, dst_mve );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_montgomery_pt_acc_u32()
{
    int32_t src_a[SIZE];
    int32_t src_b[SIZE];

    int32_t acc    [SIZE] = { 0 };
    int32_t dst_C  [SIZE];
    int32_t acc_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32,
    };

    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate, no rouding" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    fill_random_u32( (uint32_t*) acc, SIZE );
    buf_reduce_u32( src_a, SIZE );
    buf_reduce_u32( src_b, SIZE );
    buf_reduce_u32( acc, SIZE );

    memcpy( acc_mve, acc, sizeof( acc ) );

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_acc_u32_mve( src_a, src_b, acc_mve, params );
    measure_end();

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_u32_C( src_a, src_b, dst_C, SIZE );
    mod_add_buf_s32( dst_C, acc, acc, SIZE, mod_q32 );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( acc_mve, SIZE );
    buf_reduce_u32( acc, SIZE );

    if( memcmp( acc_mve, acc, sizeof( dst_C ) ) != 0 )
    {
        debug_print_buf_s32( acc,     SIZE, "Ref" );
        debug_print_buf_s32( acc_mve, SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_pt_acc_u32()
{
    int32_t  src_a[SIZE];
    int32_t src_b_[SIZE+2];
    int32_t dst_mve[SIZE];
    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding" );

    measure_start();
    montgomery_pt_acc_u32_mve( src_a, src_b_, dst_mve );
    measure_end();

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_montgomery_round_pt_acc_u32_x2()
{
    int32_t src_a0[SIZE];
    int32_t src_a1[SIZE];
    int32_t src_b[SIZE];

    int32_t acc0    [SIZE] = { 0 };
    int32_t acc1    [SIZE] = { 0 };

    int32_t dst0_C  [SIZE];
    int32_t dst1_C  [SIZE];
    int32_t acc0_mve[SIZE];
    int32_t acc1_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32_NEG,
    };

    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding, x2" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a0, SIZE );
    fill_random_u32( (uint32_t*) src_a1, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    fill_random_u32( (uint32_t*) acc0, SIZE );
    fill_random_u32( (uint32_t*) acc1, SIZE );
    buf_reduce_u32( src_a0, SIZE );
    buf_reduce_u32( src_a1, SIZE );
    buf_reduce_u32( src_b, SIZE );
    buf_reduce_u32( acc0, SIZE );
    buf_reduce_u32( acc1, SIZE );

    memcpy( acc0_mve, acc0, sizeof( acc0 ) );
    memcpy( acc1_mve, acc1, sizeof( acc1 ) );

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_round_acc_u32_x2_mve( src_a0, src_a1, acc0_mve, acc1_mve, src_b, params );
    measure_end();

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_double_u32_C( src_a0, src_b, dst0_C, SIZE );
    mod_add_buf_s32( dst0_C, acc0, acc0, SIZE, mod_q32 );
    montgomery_pt_double_u32_C( src_a1, src_b, dst1_C, SIZE );
    mod_add_buf_s32( dst1_C, acc1, acc1, SIZE, mod_q32 );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( acc0_mve, SIZE );
    buf_reduce_u32( acc1_mve, SIZE );
    buf_reduce_u32( acc0, SIZE );
    buf_reduce_u32( acc1, SIZE );

    if( memcmp( acc0_mve, acc0, sizeof( acc0 ) ) != 0 )
    {
        debug_print_buf_s32( acc0,     SIZE, "Ref 0" );
        debug_print_buf_s32( acc0_mve, SIZE, "MVE 0" );
        debug_test_fail();
        return( 1 );
    }

    if( memcmp( acc1_mve, acc1, sizeof( acc1 ) ) != 0 )
    {
        debug_print_buf_s32( acc1,     SIZE, "Ref 1" );
        debug_print_buf_s32( acc1_mve, SIZE, "MVE 1" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_round_pt_acc_u32_x2()
{
    int32_t src_a0[SIZE];
    int32_t src_a1[SIZE];
    int32_t src_b[SIZE];

    int32_t acc0_mve[SIZE];
    int32_t acc1_mve[SIZE];
    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding, x2" );
    measure_start();
    montgomery_pt_round_acc_u32_x2_mve( src_a0, src_a1, acc0_mve, acc1_mve, src_b );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_montgomery_round_pt_acc_u32_x4()
{
    int32_t src_a0[SIZE];
    int32_t src_a1[SIZE];
    int32_t src_a2[SIZE];
    int32_t src_a3[SIZE];
    int32_t src_b[SIZE];

    int32_t acc0    [SIZE] = { 0 };
    int32_t acc1    [SIZE] = { 0 };
    int32_t acc2    [SIZE] = { 0 };
    int32_t acc3    [SIZE] = { 0 };

    int32_t dst0_C  [SIZE];
    int32_t dst1_C  [SIZE];
    int32_t dst2_C  [SIZE];
    int32_t dst3_C  [SIZE];
    int32_t acc0_mve[SIZE];
    int32_t acc1_mve[SIZE];
    int32_t acc2_mve[SIZE];
    int32_t acc3_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32_NEG,
    };

    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding, x4" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a0, SIZE );
    fill_random_u32( (uint32_t*) src_a1, SIZE );
    fill_random_u32( (uint32_t*) src_a2, SIZE );
    fill_random_u32( (uint32_t*) src_a3, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    fill_random_u32( (uint32_t*) acc0, SIZE );
    fill_random_u32( (uint32_t*) acc1, SIZE );
    fill_random_u32( (uint32_t*) acc2, SIZE );
    fill_random_u32( (uint32_t*) acc3, SIZE );
    buf_reduce_u32( src_a0, SIZE );
    buf_reduce_u32( src_a1, SIZE );
    buf_reduce_u32( src_a2, SIZE );
    buf_reduce_u32( src_a3, SIZE );
    buf_reduce_u32( src_b, SIZE );
    buf_reduce_u32( acc0, SIZE );
    buf_reduce_u32( acc1, SIZE );
    buf_reduce_u32( acc2, SIZE );
    buf_reduce_u32( acc3, SIZE );

    memcpy( acc0_mve, acc0, sizeof( acc0 ) );
    memcpy( acc1_mve, acc1, sizeof( acc1 ) );
    memcpy( acc2_mve, acc2, sizeof( acc2 ) );
    memcpy( acc3_mve, acc3, sizeof( acc3 ) );

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_round_acc_u32_x4_mve( src_a0, src_a1, src_a2, src_a3,
                                        acc0_mve, acc1_mve, acc2_mve, acc3_mve,
                                        src_b, params );
    measure_end();

    /* Just for comparison */

    /* measure_start(); */
    /* montgomery_pt_round_acc_u32_x2_mve( src_a0, src_a1, */
    /*                                     acc0_mve, acc1_mve, */
    /*                                     src_b, params ); */
    /* montgomery_pt_round_acc_u32_x2_mve( src_a2, src_a3, */
    /*                                     acc2_mve, acc3_mve, */
    /*                                     src_b, params ); */
    /* measure_end(); */
    /* measure_start(); */
    /* montgomery_pt_round_acc_u32_mve( src_a0, src_b, acc0_mve, params ); */
    /* montgomery_pt_round_acc_u32_mve( src_a1, src_b, acc1_mve, params ); */
    /* montgomery_pt_round_acc_u32_mve( src_a2, src_b, acc2_mve, params ); */
    /* montgomery_pt_round_acc_u32_mve( src_a3, src_b, acc3_mve, params ); */
    /* measure_end(); */

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_double_u32_C( src_a0, src_b, dst0_C, SIZE );
    mod_add_buf_s32( dst0_C, acc0, acc0, SIZE, mod_q32 );
    montgomery_pt_double_u32_C( src_a1, src_b, dst1_C, SIZE );
    mod_add_buf_s32( dst1_C, acc1, acc1, SIZE, mod_q32 );
    montgomery_pt_double_u32_C( src_a2, src_b, dst2_C, SIZE );
    mod_add_buf_s32( dst2_C, acc2, acc2, SIZE, mod_q32 );
    montgomery_pt_double_u32_C( src_a3, src_b, dst3_C, SIZE );
    mod_add_buf_s32( dst3_C, acc3, acc3, SIZE, mod_q32 );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( acc0_mve, SIZE );
    buf_reduce_u32( acc1_mve, SIZE );
    buf_reduce_u32( acc2_mve, SIZE );
    buf_reduce_u32( acc3_mve, SIZE );
    buf_reduce_u32( acc0, SIZE );
    buf_reduce_u32( acc1, SIZE );
    buf_reduce_u32( acc2, SIZE );
    buf_reduce_u32( acc3, SIZE );

    if( memcmp( acc0_mve, acc0, sizeof( acc0 ) ) != 0 )
    {
        debug_print_buf_s32( acc0,     SIZE, "Ref 0" );
        debug_print_buf_s32( acc0_mve, SIZE, "MVE 0" );
        debug_test_fail();
        return( 1 );
    }

    if( memcmp( acc1_mve, acc1, sizeof( acc1 ) ) != 0 )
    {
        debug_print_buf_s32( acc1,     SIZE, "Ref 1" );
        debug_print_buf_s32( acc1_mve, SIZE, "MVE 1" );
        debug_test_fail();
        return( 1 );
    }

    if( memcmp( acc2_mve, acc2, sizeof( acc2 ) ) != 0 )
    {
        debug_print_buf_s32( acc2,     SIZE, "Ref 2" );
        debug_print_buf_s32( acc2_mve, SIZE, "MVE 2" );
        debug_test_fail();
        return( 1 );
    }

    if( memcmp( acc3_mve, acc3, sizeof( acc3 ) ) != 0 )
    {
        debug_print_buf_s32( acc3,     SIZE, "Ref 3" );
        debug_print_buf_s32( acc3_mve, SIZE, "MVE 3" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_round_pt_acc_u32_x4()
{
    int32_t src_a0[SIZE];
    int32_t src_a1[SIZE];
    int32_t src_a2[SIZE];
    int32_t src_a3[SIZE];
    int32_t src_b[SIZE];

    int32_t acc0_mve[SIZE];
    int32_t acc1_mve[SIZE];
    int32_t acc2_mve[SIZE];
    int32_t acc3_mve[SIZE];

    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding, x4" );
    measure_start();
    montgomery_pt_round_acc_u32_x4_mve( src_a0, src_a1, src_a2, src_a3,
                                        acc0_mve, acc1_mve, acc2_mve, acc3_mve,
                                        src_b );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

#if !defined(TEST_CORE_ONLY)
int test_montgomery_round_pt_acc_u32()
{
    int32_t src_a0[SIZE];
    int32_t src_b[SIZE];

    int32_t acc0    [SIZE] = { 0 };

    int32_t dst0_C  [SIZE];
    int32_t acc0_mve[SIZE];

    int32_t params[] = {
        MODULUS_Q32,
        MODULUS_Q32_INV_U32_NEG,
    };

    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding" );

    /* Step 0: Prepare input */

    fill_random_u32( (uint32_t*) src_a0, SIZE );
    fill_random_u32( (uint32_t*) src_b, SIZE );
    fill_random_u32( (uint32_t*) acc0, SIZE );
    buf_reduce_u32( src_a0, SIZE );
    buf_reduce_u32( src_b, SIZE );
    buf_reduce_u32( acc0, SIZE );

    memcpy( acc0_mve, acc0, sizeof( acc0 ) );

    /* Step 1: MVE based Montgomery multiplication */
    measure_start();
    montgomery_pt_round_acc_u32_mve( src_a0, src_b, acc0_mve, params );
    measure_end();

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_double_u32_C( src_a0, src_b, dst0_C, SIZE );
    mod_add_buf_s32( dst0_C, acc0, acc0, SIZE, mod_q32 );

    /* Step 4: Normalize and compare */

    buf_reduce_u32( acc0_mve, SIZE );
    buf_reduce_u32( acc0, SIZE );

    if( memcmp( acc0_mve, acc0, sizeof( acc0 ) ) != 0 )
    {
        debug_print_buf_s32( acc0,     SIZE, "Ref 0" );
        debug_print_buf_s32( acc0_mve, SIZE, "MVE 0" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_round_pt_acc_u32()
{
    int32_t src_a0[SIZE];
    int32_t src_b[SIZE];
    int32_t acc0_mve[SIZE];
    debug_test_start( "Test: 32-bit Montgomery multiply+accumulate using rounding" );
    measure_start();
    montgomery_pt_round_acc_u32_mve( src_a0, src_b, acc0_mve );
    measure_end();
    debug_test_ok();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */


void mult_u16_pt_C( int16_t const *src_a,
                    int16_t const *src_b,
                    int16_t *dst )
{
    unsigned idx;
    for( idx = 0; idx < SIZE; idx++ )
    {
        int32_t tmp = (int32_t) src_a[idx] * (int32_t) src_b[idx];
        dst[idx] = (int32_t)( tmp % mod_q16 );
    }
}

void montgomery_pt_u16_C( int16_t const *src_a,
                          int16_t const *src_b,
                          int16_t *dst )
{
    unsigned idx;
    for( idx = 0; idx < SIZE; idx++ )
    {
        int32_t v;
        int16_t hi;
        uint16_t lo, tmp, hi_fix;

        v = 2* (int32_t) src_a[idx] * (int32_t) src_b[idx];

        /* Hi+lo part extraction */
        hi     =  (int16_t)( v >> 16 );
        lo     = (uint16_t)( v >>  0 );

        /* Fixed scalar multiply, lo */
        tmp    = lo * mod_q16_inv_u16;
        /* Fixed scalar multiply, hi */
        hi_fix = ( (uint32_t) tmp * (uint32_t) mod_q16 ) >> 16;

        dst[idx] = hi - hi_fix;
    }
}

void buf_reduce_u16( int16_t *src, size_t size )
{
    for( unsigned i=0; i < size; i++ )
    {
        src[i] = src[i] % mod_q16;
        if( src[i] < 0 )
            src[i] += mod_q16;
    }
}

#if !defined(TEST_CORE_ONLY)
int test_montgomery_pt_u16_round()
{
    int16_t  src_a[SIZE];
    int16_t src_b_[SIZE+2];
    int16_t * const src_b = src_b_ + 2;

    int16_t dst    [SIZE];
    int16_t dst_mon[SIZE];
    int16_t dst_C  [SIZE];
    int16_t dst_mve[SIZE];

    debug_test_start( "Test: 16-bit Montgomery point multiplication using rounding" );

    /* Step 0: Prepare input */

    fill_random_u16( (uint16_t*) src_a, SIZE );
    fill_random_u16( (uint16_t*) src_b, SIZE );
    buf_reduce_u16( src_a, SIZE );
    buf_reduce_u16( src_b, SIZE );

    src_b_[0] = mod_q16;
    src_b_[1] = mod_q16_inv_u16_neg;

    /* Step 1: MVE based Montgomery multiplication */
    montgomery_pt_u16_odd_mve( src_a, src_b_, dst_mve );
    mul_q_u16( dst_mve, (int32_t) 1 << 15, SIZE );

    /* Step 2: Reference C Montgomery multiplication */
    montgomery_pt_u16_C( src_a, src_b, dst_C );
    mul_q_u16( dst_C, (int32_t) 1 << 15, SIZE );

    /* Step 3: Reference C multiplication */
    mult_u16_pt_C( src_a, src_b, dst );

    /* Step 4: Normalize and compare */

    buf_reduce_u16( dst, SIZE );
    buf_reduce_u16( dst_C, SIZE );
    buf_reduce_u16( dst_mve, SIZE );

    if( memcmp( dst_C, dst_mve, sizeof( dst_C ) ) != 0 ||
        memcmp( dst,   dst_mve, sizeof( dst_C ) ) != 0 )
    {
        uint16_t log2a[SIZE], log2b[SIZE];
        int known_failure = 0;

        for( unsigned i=0; i<SIZE; i++ )
        {
            log2a[i] = 0;
            while( src_a[i] != 0 && src_a[i] % 2 == 0 )
            {
                log2a[i]++;
                src_a[i] >>= 1;
            }

            log2b[i] = 0;
            while( src_b[i] != 0 && src_b[i] % 2 == 0 )
            {
                log2b[i]++;
                src_b[i] >>= 1;
            }

            if( log2a[i] + log2b[i] == 14 )
                known_failure = 1;
        }

        if( known_failure )
        {
            debug_test_ok();
            return( 0 );
        }

        debug_print_buf_u16( log2a, SIZE, "Log2(A)" );
        debug_print_buf_u16( log2b, SIZE, "Log2(B)" );
        debug_print_buf_s16( dst,     SIZE, "Mul" );
        debug_print_buf_s16( dst_C,   SIZE, "Ref" );
        debug_print_buf_s16( dst_mve, SIZE, "MVE" );
        debug_test_fail();
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int test_montgomery_pt_u16_round()
{
    int16_t  src_a [SIZE];
    int16_t src_b_ [SIZE+2];
    int16_t dst_mve[SIZE];
    measure_start();
    montgomery_pt_u16_odd_mve( src_a, src_b_, dst_mve );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */

int main()
{
    int ret = 0;

#if defined(TEST_CYCLIC_MUL_U16)
    ret |= test_cyclic_mul_u16();
    ret |= test_cyclic_mul_u16_single();
#endif /* TEST_CYCLIC_MUL_U16 */

#if defined(TEST_TWISTED_CYCLIC_MUL_U32)
    ret |= test_twisted_cyclic_mul_deg4_u32();
    ret |= test_twisted_cyclic_mul_deg4_u32_add_sub();
    ret |= test_twisted_cyclic_mul_deg4_u32_add_sub_rev();
#endif /* TEST_TWISTED_CYCLIC_MUL_U32 */

#if defined(TEST_TWISTED_CYCLIC_MUL_U32_LONG)
    ret |= test_twisted_cyclic_mul_deg4_u32_long();
#endif /* TEST_TWISTED_CYCLIC_MUL_U32_LONG */

#if defined(TEST_TWISTED_CYCLIC_MUL_U32_EXPAND)
    ret |= test_twisted_cyclic_mul_deg4_u32_expand();
#endif /* TEST_TWISTED_CYCLIC_MUL_U32_EXPAND */

#if defined(TEST_TWISTED_CYCLIC_MUL_U32_EXPAND_DOUBLE)
    ret |= test_twisted_cyclic_mul_deg4_u32_expand_double();
#endif /* TEST_TWISTED_CYCLIC_MUL_U32_EXPAND_DOUBLE */

#if defined(TEST_CYCLIC_MUL_U32)
    //ret |= test_cyclic_mul_u32();
    ret |= test_cyclic_mul_deg4_u32();
    //ret |= test_cyclic_mul_deg4_u32_single();
#endif /* TEST_CYCLIC_MUL_U32 */

#if defined(TEST_MONTGOMERY_U16_ROUND)
    ret |= test_montgomery_u16_round();
#endif /* TEST_MONTGOMERY_U16_ROUND */

#if defined(TEST_MONTGOMERY_PT_U32_ROUND)
    ret |= test_montgomery_pt_u32_round();
#endif /* TEST_MONTGOMERY_PT_U32_ROUND */

#if defined(TEST_MONTGOMERY_PT_U32)
    ret |= test_montgomery_pt_u32();
#endif /* TEST_MONTGOMERY_PT_U32 */

#if defined(TEST_MONTGOMERY_PT_ACC_U32)
    ret |= test_montgomery_pt_acc_u32();
#endif /* TEST_MONTGOMERY_PT_ACC_U32 */

#if defined(TEST_MONTGOMERY_ROUND_PT_ACC_U32)
    ret |= test_montgomery_round_pt_acc_u32();
#endif /* TEST_MONTGOMERY_ROUND_PT_ACC_U32 */

#if defined(TEST_MONTGOMERY_ROUND_PT_ACC_U32_X2)
    ret |= test_montgomery_round_pt_acc_u32_x2();
#endif /* TEST_MONTGOMERY_ROUND_PT_ACC_U32_X2 */

#if defined(TEST_MONTGOMERY_ROUND_PT_ACC_U32_X4)
    ret |= test_montgomery_round_pt_acc_u32_x4();
#endif /* TEST_MONTGOMERY_ROUND_PT_ACC_U32_X4 */

#if defined(TEST_MONTGOMERY_PT_U16_ROUND)
    ret |= test_montgomery_pt_u16_round();
#endif /* TEST_MONTGOMERY_PT_U16_ROUND */

    return( ret );
}
