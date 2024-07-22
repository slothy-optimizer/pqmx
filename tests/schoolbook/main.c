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
#include <poly.h>
#include <hal.h>

#include <time.h>

#define PRECISION 13

#if 0
#define DIMENSION 16
#define OUT_DIMENSION_ANTICYCLIC 16
#define OUT_DIMENSION_ORDINARY 32
#define DIMENSION_DIV2  8
#else
#define DIMENSION 32
#define OUT_DIMENSION_ANTICYCLIC 32
#define OUT_DIMENSION_ORDINARY 64
#define DIMENSION_DIV2  16
#endif

#define TEST_ORDINARY
#define TEST_ANTICYCLIC
#define TEST_KARATSUBA_FWD
#define TEST_KARATSUBA_FWD_MUL_INV

#define NUM_POLY_MULS 21

//#define TEST_CORE_ONLY

/* poly_16x16_cyc_5 requires an upfront 32-bit reveral of one of its inputs. */
//#define B_INPUT_REV32
//#define B_INPUT_PERMUTE

/* Some 16x16 multiplication scripts compute X*a*b and not a*b. */
//#define OUTPUT_ROTATE16

/* Some multiplication scripts require even and odd parts to be separated. */
//#define INPUT_EVEN_ODD_SPLIT
//#define INPUT_REV32

/*
 * Some external references to auto-generated assembly.
 */

extern void poly_u16_mul_16_mve_comba(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void poly_u16_mul_32_mve_comba(uint16_t *c,  const uint16_t *a, const uint16_t *b);

extern void poly_u16_mul_16_mve_simd(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void poly_u16_mul_16_anticyclic_mve_simd(uint16_t *c,  const uint16_t *a, const uint16_t *b);

extern void poly_u16_mul_32_mve_simd(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void poly_u16_mul_32_anticyclic_mve_simd(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void poly_u16_mul_32_anticyclic_opt_mve_simd(uint16_t *c,  const uint16_t *a, const uint16_t *b);

extern void polymul_asm_u16_16_schoolbook_m4(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void polymul_asm_u16_32_schoolbook_m4(uint16_t *c,  const uint16_t *a, const uint16_t *b);
extern void polymul_asm_u16_64_schoolbook_m4(uint16_t *c,  const uint16_t *a, const uint16_t *b);

extern void polymul_asm_u16_64_karatsuba_16_m4(uint16_t *c,  const uint16_t *a, const uint16_t *b);

/* The MVE implementation to test */
#define polymul_asm_mve_ordinary      CONCAT3(poly_u16_mul_, DIMENSION, _mve_simd)
#define polymul_asm_mve_anticyclic    CONCAT3(poly_u16_mul_, DIMENSION, _anticyclic_mve_simd)
#define polymul_asm_mve_karatsuba_fwd CONCAT3(poly_u16_mul_, DIMENSION, _anticyclic_karatsuba_fwd_mve_simd)
#define polymul_asm_mve_karatsuba     CONCAT3(poly_u16_mul_, DIMENSION, _anticyclic_acc_karatsuba_mve_simd_handshuffle)

/* The M4 implementation to test (can be undefined). */

//#define polymul_asm_m4 polymul_asm_u16_16_schoolbook_m4
//#define polymul_asm_m4  polymul_asm_u16_64_karatsuba_16_m4
//#define polymul_asm_m4  polymul_asm_u16_64_toom4_16_m4

#define poly_u16_mul_half_anticyclic_C CONCAT3( poly_u16_mul_anticyclic_, DIMENSION_DIV2, _C)
#define poly_u16_mul_anticyclic_C      CONCAT3( poly_u16_mul_anticyclic_, DIMENSION, _C)
#define poly_u16_mul_C                 CONCAT3( poly_u16_mul_, DIMENSION, _C)

/*
 * Storage for test polynomials.
 */

#define BUFFER_SIZE (DIMENSION)

MAKE_BUFFER(a,     16, (NUM_POLY_MULS * BUFFER_SIZE),0)
MAKE_BUFFER(b,     16, (NUM_POLY_MULS * BUFFER_SIZE),0)
MAKE_BUFFER(c,     16, (NUM_POLY_MULS * BUFFER_SIZE),0)
MAKE_BUFFER(c0,    16, (NUM_POLY_MULS * BUFFER_SIZE),0)

MAKE_BUFFER(a_even,16,BUFFER_SIZE/2,8)
MAKE_BUFFER(a_odd, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(a_sum, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(b_even,16,BUFFER_SIZE/2,8)
MAKE_BUFFER(b_odd, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(b_sum, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(c_even,16,BUFFER_SIZE/2,8)
MAKE_BUFFER(c_odd, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(c_sum, 16,BUFFER_SIZE/2,8)
MAKE_BUFFER(c1,    16,BUFFER_SIZE  ,8)
MAKE_BUFFER(c2,    16,BUFFER_SIZE  ,8)

/*
 * Test case generation
 */

void generate_simple_sample_core( uint16_t *poly, int type, int count )
{
    unsigned idx;
    zero_poly( poly, DIMENSION );

    switch( type )
    {
    case 0:
        poly[1]  = 1;
        //poly[16]  = 1;
        break;

    case 1:
        poly[3] = 1;
        poly[4] = 1;
        break;

    case 2:
        poly[0] = 1;
        poly[1] = 1;
        poly[2] = 1;
        break;

    case 3:
        poly[0]  = 1;
        poly[4]  = 1;
        poly[8]  = 1;
        poly[12] = 1;
        break;

    case 4:
        poly[0]  = 1;
        poly[15] = 1;
        break;

    case 5:
        poly[0]   = 1;
        poly[255] = 1;
        break;

    case 6:
        for( idx=0; idx<count; idx++ )
            poly[idx] = 1;
        break;

    default:
        random_poly( poly, DIMENSION );
        break;
    }
}

void generate_random_sample()
{
    random_poly( a, NUM_POLY_MULS * DIMENSION );
    random_poly( b, NUM_POLY_MULS * DIMENSION );
    mask_poly( a, NUM_POLY_MULS * DIMENSION, PRECISION );
    mask_poly( b, NUM_POLY_MULS * DIMENSION, PRECISION );
}

void generate_simple_sample( int type, int count )
{
    generate_simple_sample_core( a, type, count );
    generate_simple_sample_core( b, type, count );
    mask_poly( a, DIMENSION, PRECISION );
    mask_poly( b, DIMENSION, PRECISION );
}

/* Ordinary schoolbook multiplication */
MAKE_SCHOOLBOOK(16,32)
MAKE_SCHOOLBOOK(16,16)

/* Anticyclic schoolbook multiplications with scattered coefficients */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         ( idx < dim ? idx : idx - dim )
#define SCHOOLBOOK_FACTOR(dim,idx)  ( idx < dim ? 1   : -1        )

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)   WRAP_INDEX(dim,idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)  WRAP_INDEX(dim,idx)
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)  WRAP_INDEX(dim,idx)

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _C )

MAKE_SCHOOLBOOK(16,32)
MAKE_SCHOOLBOOK(16,16)

#if defined(TEST_ANTICYCLIC)
void poly_u16_anticyclic_rotate_C( uint16_t *c )
{
    unsigned idx;
    uint16_t last;
    last = -1 * c[ DIMENSION - 1];
    for( idx=0; idx < DIMENSION; idx++ )
    {
        uint16_t new = c[idx];
	c[idx] = last;
	last = new;
    }
}

void poly_u16_rev32( uint16_t *c )
{
    unsigned idx;
    for( idx=0; idx < NUM_POLY_MULS * DIMENSION / 2; idx++ )
    {
        uint16_t even = c[2*idx+0];
        uint16_t odd  = c[2*idx+1];

        c[2*idx + 0] = odd;
        c[2*idx + 1] = even;
    }
}

#if DIMENSION == 16
void poly_u16_permute_single( uint16_t *c )
{
    unsigned idx;
    for( idx=0; idx < DIMENSION; idx += 4 )
    {
        uint16_t c0 = c[idx + 0];
        uint16_t c1 = c[idx + 1];
        uint16_t c2 = c[idx + 2];
        uint16_t c3 = c[idx + 3];

        c[idx + 0] = c2;
        c[idx + 1] = c0;
        c[idx + 2] = c3;
        c[idx + 3] = c1;
    }
}

void poly_u16_permute( uint16_t *c )
{
    unsigned poly_idx;
    for( poly_idx=0; poly_idx < NUM_POLY_MULS; poly_idx++ )
        poly_u16_permute_single( c + poly_idx * DIMENSION );
}
#endif

#if !defined(TEST_CORE_ONLY)
int run_poly_arithmetic_test_anticyclic()
{
    debug_test_start( "Test: Anticyclic polynomial arithmetic with 16-bit precision" );

    generate_random_sample();

    /* Implementation 1: Reference C schoolbook implementation */

    for( unsigned iter=0; iter < NUM_POLY_MULS; iter++ )
    {
        uint16_t *cur_c, *cur_a, *cur_b;
        cur_c = c1 + iter * DIMENSION;
        cur_a = a + iter * DIMENSION;
        cur_b = b + iter * DIMENSION;

        poly_u16_mul_anticyclic_C( cur_c, cur_a, cur_b );

#if defined(OUTPUT_ROTATE16)
        poly_u16_anticyclic_rotate_C( cur_c );
#endif /* OUTPUT_ROTATE16 */
    }

    /* Implementation 2: MVE implementation */

#if defined(B_INPUT_REV32)
    poly_u16_rev32(a);
#endif /* B_INPUT_REV32 */

#if defined(B_INPUT_PERMUTE)
    poly_u16_permute(a);
#endif /* B_INPUT_PERMUTE */

    measure_start();
    polymul_asm_mve_anticyclic( c0, a, b );
    measure_end();

    /* Mask and compare results */

    mask_poly( c0, NUM_POLY_MULS * DIMENSION, PRECISION );
    mask_poly( c1, NUM_POLY_MULS * DIMENSION, PRECISION );

    for( unsigned iter=0; iter < NUM_POLY_MULS; iter++ )
    {
        uint16_t *cur_c1 = c1 + iter * DIMENSION;
        uint16_t *cur_c0 = c0 + iter * DIMENSION;
        if( compare_poly( cur_c0, cur_c1, DIMENSION ) != 0 )
        {
            debug_test_fail();
            debug_printf( "Error at index %u\n", iter );
            debug_print_poly( cur_c1, DIMENSION, "Ref: " );
            debug_print_poly( cur_c0, DIMENSION, "MVE: " );
            return( 1 );
        }
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int run_poly_arithmetic_test_anticyclic()
{
    measure_start();
    polymul_asm_mve_anticyclic( c0, a, b );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_ANTICYCLIC */

#if defined(TEST_ORDINARY)
#if !defined(TEST_CORE_ONLY)
int run_poly_arithmetic_test_ordinary()
{
    debug_test_start( "Test: Polynomial arithmetic with 16-bit precision" );

    generate_random_sample();

    /* Implementation 1: Reference C schoolbook implementation */

    poly_u16_mul_C( c1, a, b );

    /* Implementation 2: MVE implementation */

    measure_start();
    polymul_asm_mve_ordinary( c0, a, b );
    measure_end();

    /* Mask and compare results */

    mask_poly( c0, 2*DIMENSION, PRECISION );
    mask_poly( c1, 2*DIMENSION, PRECISION );

    if( compare_poly( c0, c1, OUT_DIMENSION_ORDINARY ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, OUT_DIMENSION_ORDINARY, "Ref: " );
        debug_print_poly( c0, OUT_DIMENSION_ORDINARY, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int run_poly_arithmetic_test_ordinary()
{
    measure_start();
    polymul_asm_mve_ordinary( c0, a, b );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_ORDINARY */

#if defined(TEST_KARATSUBA_FWD) || \
    defined(TEST_KARATSUBA_FWD_MUL_INV)
void karatsuba_extract_C( uint16_t const *input,
			  uint16_t *output_even,
			  uint16_t *output_odd,
			  uint16_t *output_sum )
{
    unsigned idx;
    for( idx = 0; idx < DIMENSION / 2; idx++ )
    {
        output_even[idx] = input[ 2*idx + 0 ];
	output_odd[idx]  = input[ 2*idx + 1 ];
	output_sum[idx]  = input[ 2*idx + 0 ] + input[ 2*idx + 1 ];
    }
}
#endif /* TEST_KARATSUBA_FWD || TEST_KARATSUBA_FWD_MUL_INV */

#if defined(TEST_KARATSUBA_FWD)
#if !defined(TEST_CORE_ONLY)
int run_poly_arithmetic_test_karatsuba_fwd()
{
    debug_test_start( "Test: Forward Karatsuba + anticyclic multiplication" );

    generate_random_sample();

    debug_print_poly( a, DIMENSION, "a: " );
    debug_print_poly( b, DIMENSION, "b: " );

    karatsuba_extract_C( a, a_even, a_odd, a_sum );
    karatsuba_extract_C( b, b_even, b_odd, b_sum );

    debug_print_poly( a_even, DIMENSION / 2, "a even: " );
    debug_print_poly( a_odd,  DIMENSION / 2, "a odd: "  );
    debug_print_poly( a_sum,  DIMENSION / 2, "a sum: "  );

    debug_print_poly( b_even, DIMENSION / 2, "b even: " );
    debug_print_poly( b_odd,  DIMENSION / 2, "b odd: "  );
    debug_print_poly( b_sum,  DIMENSION / 2, "b sum: "  );

    /* Implementation 1: Reference C schoolbook implementation */

    poly_u16_mul_half_anticyclic_C( c_even, a_even, b_even );
    poly_u16_mul_half_anticyclic_C( c_odd,  a_odd,  b_odd  );
    poly_u16_mul_half_anticyclic_C( c_sum,  a_sum,  b_sum  );

    /* Implementation 2: MVE implementation */

    measure_start();
    polymul_asm_mve_karatsuba_fwd( c0, a, b );
    measure_end();

    /* Mask and compare results */

    mask_poly( c_even, DIMENSION, PRECISION );
    mask_poly( c_odd,  DIMENSION, PRECISION );
    mask_poly( c_sum,  DIMENSION, PRECISION );
    mask_poly( c0, 3 * DIMENSION / 2, PRECISION );

    if( compare_poly( c0 + 0, c_even, DIMENSION / 2 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c_even, DIMENSION / 2, "Ref even: " );
        debug_print_poly( c0 +0, DIMENSION / 2, "MVE even: " );
        return( 1 );
    }

    if( compare_poly( c0 + DIMENSION / 2, c_odd, DIMENSION / 2 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c_odd, DIMENSION / 2, "Ref odd: " );
        debug_print_poly( c0 + DIMENSION / 2, DIMENSION / 2, "MVE odd: " );
        return( 1 );
    }

    if( compare_poly( c0 + DIMENSION, c_sum, DIMENSION / 2 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c_sum, DIMENSION / 2, "Ref sum: " );
        debug_print_poly( c0 + DIMENSION, DIMENSION / 2, "MVE sum: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int run_poly_arithmetic_test_karatsuba_fwd()
{
    measure_start();
    polymul_asm_mve_karatsuba_fwd( c0, a, b );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_KARATSUBA_FWD */

#if defined(TEST_KARATSUBA_FWD_MUL_INV)
void poly_u16_shuffle_even_odd_C( uint16_t *c )
{
    unsigned idx;

    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    copy_poly( tmp, c, DIMENSION );

    for( idx=0; idx < DIMENSION / 2; idx++ )
    {
        c[ idx ] = tmp[2*idx];
        c[ DIMENSION / 2 + idx ] = tmp[2*idx + 1];
    }
}

void poly_u16_rev32_( uint16_t *c )
{
    unsigned idx;
    for( idx=0; idx < NUM_POLY_MULS * DIMENSION / 2; idx++ )
    {
        uint16_t even = c[2*idx+0];
        uint16_t odd  = c[2*idx+1];

        c[2*idx + 0] = odd;
        c[2*idx + 1] = even;
    }
}

#if !defined(TEST_CORE_ONLY)
int run_poly_arithmetic_test_karatsuba_fwd_mul_inv()
{
    debug_test_start( "Test: Full Karatsuba + anticyclic multiplication" );

    generate_random_sample();
    //generate_simple_sample(0,0);

    MAKE_BUFFER(a0,16,NUM_POLY_MULS * BUFFER_SIZE,0);
    MAKE_BUFFER(b0,16,NUM_POLY_MULS * BUFFER_SIZE,0);
    copy_poly( a0, a, NUM_POLY_MULS * DIMENSION );
    copy_poly( b0, b, NUM_POLY_MULS * DIMENSION );

    /* Implementation 2: MVE implementation */

#if defined(INPUT_EVEN_ODD_SPLIT)
    for( unsigned iter=0; iter < NUM_POLY_MULS; iter++ )
    {
        uint16_t *cur_a, *cur_b;
        cur_a = a0 + iter * DIMENSION;
        cur_b = b0 + iter * DIMENSION;

        poly_u16_shuffle_even_odd_C( cur_a );
        poly_u16_shuffle_even_odd_C( cur_b );
    }
#endif

#if defined(INPUT_REV32)
    //poly_u16_rev32_( a0 );
    //poly_u16_rev32_( b0 );
#endif /* INPUT_REV32 */

    measure_start();
    polymul_asm_mve_karatsuba( c0, a0, b0 );
    measure_end();

    /* Implementation 1: Reference C schoolbook implementation */

    for( unsigned iter=0; iter < NUM_POLY_MULS; iter++ )
    {
        uint16_t *cur_c, *cur_a, *cur_b;
        cur_c = c + iter * DIMENSION;
        cur_a = a + iter * DIMENSION;
        cur_b = b + iter * DIMENSION;

        poly_u16_mul_anticyclic_C( cur_c, cur_a, cur_b );
        poly_u16_shuffle_even_odd_C( cur_c );
    }

    /* Mask and compare results */

    for( unsigned iter=0; iter < NUM_POLY_MULS; iter++ )
    {
        uint16_t *cur_c  =  c + iter * DIMENSION;
        uint16_t *cur_c0 = c0 + iter * DIMENSION;
        if( compare_poly( cur_c0, cur_c, DIMENSION ) != 0 )
        {
            debug_test_fail();
            debug_printf( "Error at index %u\n", iter );
            debug_print_poly( cur_c,  DIMENSION, "Ref: " );
            debug_print_poly( cur_c0, DIMENSION, "MVE: " );
            return( 1 );
        }
    }

    debug_test_ok();
    return( 0 );
}
#else /* TEST_CORE_ONLY */
int run_poly_arithmetic_test_karatsuba_fwd_mul_inv()
{
    measure_start();
    polymul_asm_mve_karatsuba( c0, a, b );
    measure_end();
    return( 0 );
}
#endif /* TEST_CORE_ONLY */
#endif /* TEST_KARATSUBA_FWD_MUL_INV */


int main (void)
{
    int ret;

#if defined(TEST_ORDINARY)
    ret = run_poly_arithmetic_test_ordinary();
    if( ret != 0 )
        return( 1 );
#endif /* TEST_ORDINARY */

#if defined(TEST_ANTICYCLIC)
    ret = run_poly_arithmetic_test_anticyclic();
    if( ret != 0 )
        return( 1 );
#endif /* TEST_ANTICYCLIC */

#if defined(TEST_KARATSUBA_FWD)
    ret = run_poly_arithmetic_test_karatsuba_fwd();
    if( ret != 0 )
        return( 1 );
#endif /* TEST_KARATSUBA_FWD */

#if defined(TEST_KARATSUBA_FWD_MUL_INV)
    ret = run_poly_arithmetic_test_karatsuba_fwd_mul_inv();
    if( ret != 0 )
        return( 1 );
#endif /* TEST_KARATSUBA_FWD */

    return( 0 );
}
