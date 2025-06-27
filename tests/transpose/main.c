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

#include <stdint.h>

#include <misc.h>
#include <hal.h>

#define BITWIDTH 16
#define BLOCK    8
#define DIM_X    4
#define DIM_Y    4

#define ENTRIES ( BLOCK * DIM_X * DIM_Y )

/* Pick one of the two below */

//#define TEST_TYPE_RANDOM
#define TEST_TYPE_SIMPLE

/*
 * Some external references to auto-generated assembly.
 */

#define transpose_asm CONCAT8(transpose_u, BITWIDTH, x, BLOCK, _, DIM_X, x, DIM_Y)
extern void transpose_asm( uint(BITWIDTH) *dst, uint(BITWIDTH) const *src );

#define transpose_real CONCAT2(buffer_transpose_u, BITWIDTH)
#define compare        CONCAT2(compare_buf_u, BITWIDTH)
#define fill           CONCAT2(fill_random_u, BITWIDTH)
#define print          CONCAT2(debug_print_buf_u, BITWIDTH)

static uint(BITWIDTH) src [ENTRIES];
static uint(BITWIDTH) dst0[ENTRIES];
static uint(BITWIDTH) dst1[ENTRIES];

void generate_random_sample()
{
    fill( src, ENTRIES );
}

void generate_simple_sample()
{
    unsigned idx;
    for( idx=0; idx < ENTRIES; idx++ )
        src[idx] = idx;
}

void generate_sample()
{
#if defined(TEST_TYPE_RANDOM)
    generate_random_sample();
#else
    generate_simple_sample();
#endif
}

static int test_transpose()
{
    debug_test_start( "Test: Transpose" );
    generate_simple_sample();

    transpose_asm( dst0, src );
    transpose_real( dst1, src, BLOCK, DIM_X, DIM_Y );

    if( compare( dst0, dst1, ENTRIES ) != 0 )
    {
        debug_test_fail();
        print( dst1, ENTRIES, "Expected" );
        print( dst0, ENTRIES, "Actual" );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int main (void)
{
    int ret;

    ret = test_transpose();
    if( ret != 0 )
        return( 1 );
    debug_printf( "ALL GOOD!\n" );
    return( 0 );
}
