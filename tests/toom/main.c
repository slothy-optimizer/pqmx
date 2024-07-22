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

#include <hal.h>
#include <poly.h>
#include <misc.h>

/* For Toom3/4, DIMENSION must be a multiple of 3/4,
 * and DIMENSION_DIV3 / DIMENSION_DIV4 must be defined
 * as a third/quarter of the dimension -- in other words,
 * the degree for the multiplication that the Toom-3/4
 * routine reduces to. */

#define DIMENSION 256
//#define DIMENSION_DIV3 64
#define DIMENSION_DIV4 64

/* Pick one of the two below */

#define TEST_TYPE_RANDOM
//#define TEST_TYPE_SIMPLE

#define TEST_TYPE_SIMPLE_NO   2
#define TEST_TYPE_SIMPLE_ARG  0

/* Outcomment any test that should be compiled and run.
 * Outcomment TEST_ALL to build and run all tests. */

/* #define TEST_TOOM3_FWD */
/* #define TEST_TOOM3_FWD_INV */
/* #define TEST_TOOM3_FWD_MUL_INV */
/* #define TEST_TOOM3_STANDALONE */

#define TEST_TOOM4_FWD
#define TEST_TOOM4_FWD_OOP
#define TEST_TOOM4_FWD_KARATSUBA_X1_OOP
#define TEST_TOOM4_FWD_KARATSUBA_X2_OOP
#define TEST_TOOM4_FWD_DUAL_TOP
#define TEST_TOOM4_FWD_DUAL_TOP_OOP
#define TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP
#define TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP
#define TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP
#define TEST_TOOM4_FWD_DUAL_BOTTOM
#define TEST_TOOM4_FWD_INV
#define TEST_TOOM4_FWD_INV_DUAL_TOP
#define TEST_TOOM4_FWD_INV_DUAL_TOP_OOP
#define TEST_TOOM4_FWD_INV_DUAL_BOTTOM
#define TEST_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP
#define TEST_TOOM4_FWD_INV_DUAL_BOTTOM_OOP
#define TEST_TOOM4_FWD_MUL_INV
#define TEST_TOOM4_FWD_MUL_INV_DUAL_BOTTOM
#define TEST_TOOM4_FWD_MUL_INV_DUAL_TOP
#define TEST_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP
#define TEST_TOOM4_STANDALONE

//#define TEST_ALL

/*
 * Derived or internal configuration
 */

#define PRECISION 13

#if defined(TEST_ALL)
#define TEST_TOOM3_FWD
#define TEST_TOOM3_FWD_INV
#define TEST_TOOM3_FWD_MUL_INV
#define TEST_TOOM3_STANDALONE
#define TEST_TOOM4_FWD
#define TEST_TOOM4_FWD_DUAL_TOP
#define TEST_TOOM4_FWD_DUAL_BOTTOM
#define TEST_TOOM4_FWD_INV
#define TEST_TOOM4_FWD_INV_DUAL_TOP
#define TEST_TOOM4_FWD_INV_DUAL_BOTTOM
#define TEST_TOOM4_FWD_MUL_INV
#define TEST_TOOM4_FWD_MUL_INV_DUAL_BOTTOM
#define TEST_TOOM4_FWD_MUL_INV_DUAL_TOP
#define TEST_TOOM4_STANDALONE
#endif

/*
 * Some debug strings
 */
#define TEST_STRING_TOOM3_FWD_START__(DIM) "Toom3 " #DIM " evaluation test"
#define TEST_STRING_TOOM3_FWD_START_(DIM) TEST_STRING_TOOM3_FWD_START__(DIM)
#define TEST_STRING_TOOM3_FWD_START TEST_STRING_TOOM3_FWD_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_START__(DIM) "Toom4 " #DIM " evaluation test"
#define TEST_STRING_TOOM4_FWD_START_(DIM) TEST_STRING_TOOM4_FWD_START__(DIM)
#define TEST_STRING_TOOM4_FWD_START TEST_STRING_TOOM4_FWD_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_OOP_START__(DIM) "Toom4 " #DIM " evaluation test (out of place)"
#define TEST_STRING_TOOM4_FWD_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_OOP_START TEST_STRING_TOOM4_FWD_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START__(DIM) "Toom4 " #DIM " evaluation test (out of place, Karatsuba-x1)"
#define TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START__(DIM) "Toom4 " #DIM " evaluation test (out of place, Karatsuba-x2)"
#define TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_TOP_START__(DIM) "Toom4 " #DIM " dual evaluation test (top variant)"
#define TEST_STRING_TOOM4_FWD_DUAL_TOP_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_TOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_TOP_START TEST_STRING_TOOM4_FWD_DUAL_TOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation test (top variant, out of place)"
#define TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation test (packed, out of place)"
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation test (out of place, Karatsuba x1)"
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation test (out of place, Karatsuba x2)"
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START__(DIM) "Toom4 " #DIM " dual evaluation test (bottom variant)"
#define TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START_(DIM) TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START__(DIM)
#define TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START_(DIMENSION)

#define TEST_STRING_TOOM3_FWD_INV_START__(DIM) "Toom3 " #DIM " evaluation interpolation test"
#define TEST_STRING_TOOM3_FWD_INV_START_(DIM) TEST_STRING_TOOM3_FWD_INV_START__(DIM)
#define TEST_STRING_TOOM3_FWD_INV_START TEST_STRING_TOOM3_FWD_INV_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_INV_START__(DIM) "Toom4 " #DIM " evaluation interpolation test"
#define TEST_STRING_TOOM4_FWD_INV_START_(DIM) TEST_STRING_TOOM4_FWD_INV_START__(DIM)
#define TEST_STRING_TOOM4_FWD_INV_START TEST_STRING_TOOM4_FWD_INV_START_(DIMENSION)

#define TEST_STRING_TOOM3_FWD_MUL_INV_START__(DIM) "Toom3 " #DIM " evaluation multiplication interpolation test"
#define TEST_STRING_TOOM3_FWD_MUL_INV_START_(DIM) TEST_STRING_TOOM3_FWD_MUL_INV_START__(DIM)
#define TEST_STRING_TOOM3_FWD_MUL_INV_START TEST_STRING_TOOM3_FWD_MUL_INV_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_MUL_INV_START__(DIM) "Toom4 " #DIM " evaluation multiplication interpolation test"
#define TEST_STRING_TOOM4_FWD_MUL_INV_START_(DIM) TEST_STRING_TOOM4_FWD_MUL_INV_START__(DIM)
#define TEST_STRING_TOOM4_FWD_MUL_INV_START TEST_STRING_TOOM4_FWD_MUL_INV_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation multiplication interpolation test (packed, out of place)"
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START__(DIM) "Toom4 " #DIM " dual evaluation multiplication interpolation test (bottom variant)"
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START_(DIM) TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START__(DIM)
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START__(DIM) "Toom4 " #DIM " dual evaluation multiplication interpolation test (top variant)"
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START_(DIM) TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation multiplication interpolation test (top variant, out of place)"
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_OOP_START TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation interpolation test (standard, out of place)"
#define TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START__(DIM) "Toom4 " #DIM " dual evaluation interpolation test (top variant)"
#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START_(DIM) TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START__(DIM)
#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START__(DIM) "Toom4 " #DIM " dual evaluation interpolation test (top variant, out of place)"
#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START_(DIM) TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START__(DIM) "Toom4 " #DIM " dual evaluation interpolation test (bottom variant)"
#define TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START_(DIM) TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START__(DIM)
#define TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START_(DIMENSION)

#define TEST_STRING_TOOM4_STANDALONE_START__(DIM) "Toom4 " #DIM " standalone multiplication test"
#define TEST_STRING_TOOM4_STANDALONE_START_(DIM) TEST_STRING_TOOM4_STANDALONE_START__(DIM)
#define TEST_STRING_TOOM4_STANDALONE_START TEST_STRING_TOOM4_STANDALONE_START_(DIMENSION)

#define TEST_STRING_TOOM3_STANDALONE_START__(DIM) "Toom3 " #DIM " standalone multiplication test"
#define TEST_STRING_TOOM3_STANDALONE_START_(DIM) TEST_STRING_TOOM3_STANDALONE_START__(DIM)
#define TEST_STRING_TOOM3_STANDALONE_START TEST_STRING_TOOM3_STANDALONE_START_(DIMENSION)

            void CONCAT2(test_, DIMENSION)() {}

/*
 * Some external references to auto-generated assembly.
 */

/* MVE implementations */

extern void poly_u16_toom4_fwd_256_mve     ( uint16_t *a );
extern void poly_u16_toom4_fwd_oop_256_mve     ( uint16_t *a, uint16_t *b );
extern void poly_u16_toom4_fwd_karatsuba_x1_oop_256_mve     ( uint16_t *a, uint16_t *b );
extern void poly_u16_toom4_fwd_karatsuba_x2_oop_256_mve     ( uint16_t *a, uint16_t *b );

extern void poly_u16_toom4_inv_256_mve     ( uint16_t *a );
extern void poly_u16_toom4_fwd_512_mve     ( uint16_t *a );
extern void poly_u16_toom4_fwd_768_mve     ( uint16_t *a );
extern void poly_u16_toom4_fwd_832_mve     ( uint16_t *a );
extern void poly_u16_toom4_inv_512_mve     ( uint16_t *a );
extern void poly_u16_toom4_inv_768_mve     ( uint16_t *a );
extern void poly_u16_toom4_inv_832_mve     ( uint16_t *a );
extern void poly_u16_toom4_inv_half_256_mve( uint16_t *a );
extern void poly_u16_toom4_inv_half_512_mve( uint16_t *a );
extern void poly_u16_toom4_inv_half_768_mve( uint16_t *a );
extern void poly_u16_toom4_inv_half_832_mve( uint16_t *a );

extern void poly_u16_toom4_fwd_dual_top_256_mve     ( uint16_t *a );
extern void poly_u16_toom4_fwd_dual_bottom_256_mve  ( uint16_t *a );

extern void poly_u16_toom4_fwd_dual_top_oop_256_mve ( uint16_t *a, uint16_t *b );
extern void poly_u16_toom4_fwd_dual_packed_limbs_oop_256_mve ( uint16_t *a, uint16_t *b );
extern void poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_256_mve ( uint16_t *a, uint16_t *b );
extern void poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_256_mve ( uint16_t *a, uint16_t *b );

extern void poly_u16_toom4_inv_dual_top_256_mve     ( uint16_t *a );
extern void poly_u16_toom4_inv_dual_bottom_256_mve  ( uint16_t *a );
extern void poly_u16_toom4_inv_dual_bottom_256_oop_mve  ( uint16_t *a, uint16_t *b );

extern void poly_u16_toom3_fwd_192_mve     ( uint16_t *a );
extern void poly_u16_toom3_inv_192_mve     ( uint16_t *a );
extern void poly_u16_toom3_fwd_768_mve     ( uint16_t *a );
extern void poly_u16_toom3_inv_768_mve     ( uint16_t *a );
extern void poly_u16_toom3_inv_half_192_mve( uint16_t *a );
extern void poly_u16_toom3_inv_half_768_mve( uint16_t *a );

extern void poly_u16_mul_16_schoolbook_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_32_schoolbook_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_64_schoolbook_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );

extern void poly_u16_mul_192_toom3_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_768_toom3_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );

extern void poly_u16_mul_64_toom4_mve ( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_256_toom4_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_512_toom4_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_768_toom4_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_832_toom4_mve( uint16_t *c, const uint16_t *a, const uint16_t *b );

/* M4 implementations from Schwabe et al.'s paper */

extern void poly_u16_mul_64_toom4_m4       ( uint16_t *c,  const uint16_t *a, const uint16_t *b );

extern void poly_u16_mul_16_schoolbook_m4  ( uint16_t *c,  const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_32_schoolbook_m4  ( uint16_t *c,  const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_64_schoolbook_m4  ( uint16_t *c,  const uint16_t *a, const uint16_t *b );

extern void poly_u16_mul_32_karatsuba_16_m4( uint16_t *c,  const uint16_t *a, const uint16_t *b );
extern void poly_u16_mul_64_karatsuba_16_m4( uint16_t *c,  const uint16_t *a, const uint16_t *b );


/*
 * Some helper macros specializing the above functions to the chosen dimension.
 */

/* Test names */
#define test_toom4_standalone  CONCAT3(test_toom4_standaone_, DIMENSION, _mve)
#define test_toom3_standalone  CONCAT3(test_toom3_standalone_, DIMENSION, _mve)
#define test_toom4_fwd         CONCAT3(test_toom4_fwd_, DIMENSION, _mve)
#define test_toom3_fwd         CONCAT3(test_toom3_fwd_, DIMENSION, _mve)
#define test_toom4_fwd_inv     CONCAT3(test_toom4_fwd_inv_, DIMENSION, _mve)
#define test_toom3_fwd_inv     CONCAT3(test_toom3_fwd_inv_, DIMENSION, _mve)
#define test_toom4_fwd_mul_inv CONCAT3(test_toom4_fwd_mul_inv_, DIMENSION, _mve)
#define test_toom3_fwd_mul_inv CONCAT3(test_toom3_fwd_mul_inv_, DIMENSION, _mve)

#define test_toom_all CONCAT3(test_toom_all_, DIMENSION, _mve)

/* MVE-based implementations */

#define poly_u16_mul_toom4_mve      CONCAT3(poly_u16_mul_, DIMENSION, _toom4_mve)
#define poly_u16_mul_toom3_mve      CONCAT3(poly_u16_mul_, DIMENSION, _toom3_mve)
#define poly_u16_toom4_fwd_mve      CONCAT3(poly_u16_toom4_fwd_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_oop_mve      CONCAT3(poly_u16_toom4_fwd_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_karatsuba_x1_oop_mve      CONCAT3(poly_u16_toom4_fwd_karatsuba_x1_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_karatsuba_x2_oop_mve      CONCAT3(poly_u16_toom4_fwd_karatsuba_x2_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_top_mve    CONCAT3(poly_u16_toom4_fwd_dual_top_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_top_oop_mve    CONCAT3(poly_u16_toom4_fwd_dual_top_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_packed_limbs_oop_mve    CONCAT3(poly_u16_toom4_fwd_dual_packed_limbs_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_mve    CONCAT3(poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_mve    CONCAT3(poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_, DIMENSION, _mve)
#define poly_u16_toom4_fwd_dual_bottom_mve CONCAT3(poly_u16_toom4_fwd_dual_bottom_, DIMENSION, _mve)
#define poly_u16_toom3_fwd_mve      CONCAT3(poly_u16_toom3_fwd_, DIMENSION, _mve)
#define poly_u16_toom4_inv_half_mve CONCAT3(poly_u16_toom4_inv_half_, DIMENSION, _mve)
#define poly_u16_toom3_inv_half_mve CONCAT3(poly_u16_toom3_inv_half_, DIMENSION, _mve)
#define poly_u16_toom4_inv_mve      CONCAT3(poly_u16_toom4_inv_, DIMENSION, _mve)
#define poly_u16_toom4_inv_dual_packed_limbs_oop_mve      CONCAT3(poly_u16_toom4_inv_dual_packed_limbs_oop_, DIMENSION, _mve)
#define poly_u16_toom4_inv_dual_top_mve    CONCAT3(poly_u16_toom4_inv_dual_top_, DIMENSION, _mve)
#define poly_u16_toom4_inv_dual_top_oop_mve    CONCAT3(poly_u16_toom4_inv_dual_top_oop_, DIMENSION, _mve)
#define poly_u16_toom4_inv_dual_bottom_mve CONCAT3(poly_u16_toom4_inv_dual_bottom_, DIMENSION, _mve)
#define poly_u16_toom4_inv_dual_bottom_oop_mve CONCAT3(poly_u16_toom4_inv_dual_bottom_oop_, DIMENSION, _mve)
#define poly_u16_toom3_inv_mve      CONCAT3(poly_u16_toom3_inv_, DIMENSION, _mve)

/* Naive C-implementation */

#define poly_u16_mul_C            CONCAT3(poly_u16_mul_ , DIMENSION, _C)
#define poly_u16_mul_anticyclic_C CONCAT3(poly_u16_mul_anticyclic_ , DIMENSION, _C)

#if defined(DIMENSION_DIV3)
#define poly_u16_mul_div3_C CONCAT3(poly_u16_mul_, DIMENSION_DIV3, _C)
#endif
#if defined(DIMENSION_DIV4)
#define poly_u16_mul_div4_C CONCAT3(poly_u16_mul_, DIMENSION_DIV4, _C)
#define poly_u16_mul_anticyclic_div4_C CONCAT3(poly_u16_mul_anticyclic_, DIMENSION_DIV4, _C)
#define poly_u16_mul_anticyclic_div4_4x8_C CONCAT3(poly_u16_mul_anticyclic_, DIMENSION_DIV4, _4x8_C)
#define poly_u16_mul_anticyclic_div4_3x8_C CONCAT3(poly_u16_mul_anticyclic_, DIMENSION_DIV4, _3x8_C)
#endif

/* The M4 implementation (can be undefined). */

#define poly_mul_m4  CONCAT3(poly_u16_mul_, DIMENSION, karatsuba_m4)

/*
 * Storage for test polynomials.
 */

#define BUFFER_SIZE (8 * DIMENSION)

MAKE_BUFFER(a, 16, BUFFER_SIZE, 8);
MAKE_BUFFER(b, 16, BUFFER_SIZE, 8);
MAKE_BUFFER(c, 16, BUFFER_SIZE, 8);
MAKE_BUFFER(d, 16, BUFFER_SIZE, 8);
MAKE_BUFFER(c0,16, BUFFER_SIZE, 8);
MAKE_BUFFER(c1,16, BUFFER_SIZE, 8);
MAKE_BUFFER(c2,16, BUFFER_SIZE, 8);

/*
 * Generate some schoolbook multiplications
 */

/* Ordinary schoolbook multiplications */
MAKE_SCHOOLBOOK(16,16)
MAKE_SCHOOLBOOK(16,32)
MAKE_SCHOOLBOOK(16,64)
MAKE_SCHOOLBOOK(16,128)
MAKE_SCHOOLBOOK(16,192)
MAKE_SCHOOLBOOK(16,208)
MAKE_SCHOOLBOOK(16,256)
MAKE_SCHOOLBOOK(16,512)
MAKE_SCHOOLBOOK(16,768)
MAKE_SCHOOLBOOK(16,832)

/* Anticyclic schoolbook multiplications with stride-4 scattered coefficients */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         ( (idx) < (dim) ? (idx) : (idx) - (dim) )
#define SCHOOLBOOK_FACTOR(dim,idx)  ( (idx) < (dim) ? 1   : -1        )

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)        \
    OFFSET_FROM_INDEX_GATHER(8,4,WRAP_INDEX((dim),(idx)))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)       \
    OFFSET_FROM_INDEX_GATHER(8,4,WRAP_INDEX((dim),(idx)))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)       \
    OFFSET_FROM_INDEX_GATHER(8,4,WRAP_INDEX((dim),(idx)))

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _4x8_C )

MAKE_SCHOOLBOOK(16,64)

/* Anticyclic schoolbook multiplications with stride-3 scattered coefficients */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         ( (idx) < (dim) ? (idx) : (idx) - (dim) )
#define SCHOOLBOOK_FACTOR(dim,idx)  ( (idx) < (dim) ? 1   : -1        )

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)        \
    OFFSET_FROM_INDEX_GATHER(8,3,WRAP_INDEX((dim),(idx)))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)       \
    OFFSET_FROM_INDEX_GATHER(8,3,WRAP_INDEX((dim),(idx)))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)       \
    OFFSET_FROM_INDEX_GATHER(8,3,WRAP_INDEX((dim),(idx)))

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _3x8_C )

MAKE_SCHOOLBOOK(16,64)

/* Anticyclic schoolbook multiplications */

#undef SCHOOLBOOK_OFFSET_FROM_INDEX_DST
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA
#undef SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB
#undef SCHOOLBOOK_FACTOR
#undef C_SCHOOLBOOK_SYMBOL_NAME

#define WRAP_INDEX(dim,idx)         ( (idx) < (dim) ? (idx) : (idx) - (dim) )
#define SCHOOLBOOK_FACTOR(dim,idx)  ( (idx) < (dim) ? 1   : -1        )

#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx)   WRAP_INDEX((dim),(idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim, idx)  WRAP_INDEX((dim),(idx))
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim, idx)  WRAP_INDEX((dim),(idx))

#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_anticyclic_, DIM, _C )

MAKE_SCHOOLBOOK(16,256)
MAKE_SCHOOLBOOK(16,64)

/* We keep the 'evaluation at infinity' in-place at index 4 at evaluation time. */
#define make_eval_offsets_toom4(src,name,multiplier)                   \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim,             \
                          src + 1 * multiplier * limb_dim,             \
                          src + 2 * multiplier * limb_dim,             \
                          src + 4 * multiplier * limb_dim,             \
                          src + 5 * multiplier * limb_dim,             \
                          src + 6 * multiplier * limb_dim,             \
                          src + 3 * multiplier * limb_dim }

#define make_eval_offsets_toom4_oop(src,name,multiplier)               \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim,             \
                          src + 1 * multiplier * limb_dim,             \
                          src + 2 * multiplier * limb_dim,             \
                          src + 3 * multiplier * limb_dim,             \
                          src + 4 * multiplier * limb_dim,             \
                          src + 5 * multiplier * limb_dim,             \
                          src + 6 * multiplier * limb_dim }

#define make_eval_offsets_toom4_dual_bottom(src,name,multiplier)       \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim + 0,         \
                          src + 0 * multiplier * limb_dim + 8,         \
                          src + 0 * multiplier * limb_dim + 16,        \
                          src + 0 * multiplier * limb_dim + 24,        \
                          src - 3 * multiplier * limb_dim + 0,         \
                          src - 3 * multiplier * limb_dim + 8,         \
                          src - 3 * multiplier * limb_dim + 16 }

#define make_eval_offsets_toom4_dual_top(src,name,multiplier)          \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim + 0,         \
                          src + 0 * multiplier * limb_dim + 8,         \
                          src + 0 * multiplier * limb_dim + 16,        \
                          src + 0 * multiplier * limb_dim + 24,        \
                          src + 4 * multiplier * limb_dim + 0,         \
                          src + 4 * multiplier * limb_dim + 8,         \
                          src + 4 * multiplier * limb_dim + 16 }

/* Limbs get re-arranged when products are computed, with the
 * 'evaluation at infinity' moving to the back. */
#define make_prod_offsets_toom4(src,name,multiplier)                   \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim,             \
                          src + 1 * multiplier * limb_dim,             \
                          src + 2 * multiplier * limb_dim,             \
                          src + 3 * multiplier * limb_dim,             \
                          src + 4 * multiplier * limb_dim,             \
                          src + 5 * multiplier * limb_dim,             \
                          src + 6 * multiplier * limb_dim }

/* We keep the 'evaluation at infinity' in-place at index 2 at evaluation time. */
#define make_eval_offsets_toom3(src,name,multiplier)                   \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim,             \
                          src + 1 * multiplier * limb_dim,             \
                          src + 3 * multiplier * limb_dim,             \
                          src + 4 * multiplier * limb_dim,             \
                          src + 2 * multiplier * limb_dim }

/* Limbs get re-arranged when products are computed, with the
 * 'evaluation at infinity' moving to the back. */
#define make_prod_offsets_toom3(src,name,multiplier)                   \
    uint16_t* name [] = { src + 0 * multiplier * limb_dim,             \
                          src + 1 * multiplier * limb_dim,             \
                          src + 2 * multiplier * limb_dim,             \
                          src + 3 * multiplier * limb_dim,             \
                          src + 4 * multiplier * limb_dim }

/* Compute the Toom4 evaluation step in-place, evaluating
 * at the points 0, -1/2, +1/2, -1, +1, +2, infty, in this
 * order. */
static void poly_u16_toom4_fwd_C( uint16_t *poly )
{
    unsigned limb_dim = DIMENSION / 4;
    uint16_t* limb[]  = { poly + 0 * limb_dim,
                          poly + 1 * limb_dim,
                          poly + 2 * limb_dim,
                          poly + 3 * limb_dim };
    make_eval_offsets_toom4( poly, eval, 1 );
    unsigned idx;

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t a,b,c,d;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];
        d = limb[3][idx];

        eval[0][idx] = (uint16_t)(   a );
        eval[1][idx] = (uint16_t)( 8*a - 4*b + 2*c -   d );
        eval[2][idx] = (uint16_t)( 8*a + 4*b + 2*c +   d );
        eval[3][idx] = (uint16_t)(   a -   b +   c -   d );
        eval[4][idx] = (uint16_t)(   a +   b +   c +   d );
        eval[5][idx] = (uint16_t)(   a + 2*b + 4*c + 8*d );
        eval[6][idx] = (uint16_t)(                     d );
    }
}

static void poly_u16_toom4_fwd_oop_C( uint16_t *src, uint16_t *dst )
{
    unsigned limb_dim = DIMENSION / 4;
    uint16_t* limb[]  = { src + 0 * limb_dim,
                          src + 1 * limb_dim,
                          src + 2 * limb_dim,
                          src + 3 * limb_dim };
    make_eval_offsets_toom4_oop( dst, eval, 1 );
    unsigned idx;

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t a,b,c,d;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];
        d = limb[3][idx];

        eval[0][idx] = (uint16_t)(   a );
        eval[1][idx] = (uint16_t)( 8*a - 4*b + 2*c -   d );
        eval[2][idx] = (uint16_t)( 8*a + 4*b + 2*c +   d );
        eval[3][idx] = (uint16_t)(   a -   b +   c -   d );
        eval[4][idx] = (uint16_t)(   a +   b +   c +   d );
        eval[5][idx] = (uint16_t)(   a + 2*b + 4*c + 8*d );
        eval[6][idx] = (uint16_t)(                     d );
    }
}

static void poly_u16_toom4_fwd_karatsuba_x1_oop_C( uint16_t *src, uint16_t *dst )
{
    unsigned limb_dim = DIMENSION / 4;
    uint16_t* limb[]  = { src + 0 * limb_dim,
                          src + 1 * limb_dim,
                          src + 2 * limb_dim,
                          src + 3 * limb_dim };
    unsigned padded_limb_dim = 3 * limb_dim / 2;
    unsigned idx;

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t a,b,c,d;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];
        d = limb[3][idx];

        dst[0 * padded_limb_dim + idx] = (uint16_t)(   a                   );   /* 0     */
        dst[1 * padded_limb_dim + idx] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        dst[2 * padded_limb_dim + idx] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        dst[3 * padded_limb_dim + idx] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        dst[4 * padded_limb_dim + idx] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        dst[5 * padded_limb_dim + idx] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        dst[6 * padded_limb_dim + idx] = (uint16_t)(                     d );   /* infty */
    }
}

static void poly_u16_toom4_fwd_karatsuba_x2_oop_C( uint16_t *src, uint16_t *dst )
{
    unsigned limb_dim = DIMENSION / 4;
    uint16_t* limb[]  = { src + 0 * limb_dim,
                          src + 1 * limb_dim,
                          src + 2 * limb_dim,
                          src + 3 * limb_dim };
    unsigned padded_limb_dim = 9 * limb_dim / 4;
    unsigned limb_shift = limb_dim / 4;
    unsigned idx;

    for( idx = 0; idx < limb_dim / 2; idx++ )
    {
        uint16_t a,b,c,d;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];
        d = limb[3][idx];

        dst[0 * padded_limb_dim + idx] = (uint16_t)(   a                   );   /* 0     */
        dst[1 * padded_limb_dim + idx] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        dst[2 * padded_limb_dim + idx] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        dst[3 * padded_limb_dim + idx] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        dst[4 * padded_limb_dim + idx] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        dst[5 * padded_limb_dim + idx] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        dst[6 * padded_limb_dim + idx] = (uint16_t)(                     d );   /* infty */
    }

    for( idx = limb_dim/2; idx < limb_dim; idx++ )
    {
        uint16_t a,b,c,d;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];
        d = limb[3][idx];

        dst[0 * padded_limb_dim + idx + limb_shift] = (uint16_t)(   a                   );   /* 0     */
        dst[1 * padded_limb_dim + idx + limb_shift] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        dst[2 * padded_limb_dim + idx + limb_shift] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        dst[3 * padded_limb_dim + idx + limb_shift] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        dst[4 * padded_limb_dim + idx + limb_shift] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        dst[5 * padded_limb_dim + idx + limb_shift] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        dst[6 * padded_limb_dim + idx + limb_shift] = (uint16_t)(                     d );   /* infty */
    }
}

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP) || \
    defined(TEST_TOOM4_FWD_DUAL_TOP)     || \
    defined(TEST_TOOM4_FWD_DUAL_TOP_OOP)
/* Compute the dual/striding Toom4 evaluation step in-place */
static void poly_u16_toom4_fwd_dual_top_C( uint16_t *src, uint16_t *dst )
{
    MAKE_BUFFER(tmp, 16, BUFFER_SIZE, 0);

    unsigned limb_dim = DIMENSION_DIV4;
    unsigned idx, k;
    unsigned high_offset = 4 * limb_dim;

    copy_poly( tmp, src, DIMENSION );

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++ )
        {
            uint16_t tmp_eval[7];
            uint16_t a,b,c,d;
            a = tmp[ 4*(8*idx + k) + 0 ];
            b = tmp[ 4*(8*idx + k) + 1 ];
            c = tmp[ 4*(8*idx + k) + 2 ];
            d = tmp[ 4*(8*idx + k) + 3 ];

            tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
            tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
            tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
            tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
            tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
            tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
            tmp_eval[6] = (uint16_t)(                     d );   /* infty */

            dst[idx * 4 * 8 + 8*0 + k] = tmp_eval[0];
            dst[idx * 4 * 8 + 8*1 + k] = tmp_eval[1];
            dst[idx * 4 * 8 + 8*2 + k] = tmp_eval[2];
            dst[idx * 4 * 8 + 8*3 + k] = tmp_eval[3];

            dst[high_offset + idx * 3 * 8 + 8*0 + k] = tmp_eval[4];
            dst[high_offset + idx * 3 * 8 + 8*1 + k] = tmp_eval[5];
            dst[high_offset + idx * 3 * 8 + 8*2 + k] = tmp_eval[6];
        }
    }
}
#endif /* TEST_TOOM4_FWD_INV_DUAL_TOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP)
/* Compute the dual/striding Toom4 evaluation step in-place */
static void poly_u16_toom4_fwd_dual_packed_limbs_oop_C( uint16_t *src, uint16_t *dst )
{
    MAKE_BUFFER(tmp, 16, BUFFER_SIZE, 0);

    unsigned limb_dim = DIMENSION_DIV4;
    unsigned idx;

    copy_poly( tmp, src, DIMENSION );

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t tmp_eval[7];
        uint16_t a,b,c,d;
        a = tmp[ 4*idx + 0 ];
        b = tmp[ 4*idx + 1 ];
        c = tmp[ 4*idx + 2 ];
        d = tmp[ 4*idx + 3 ];

        tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
        tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        tmp_eval[6] = (uint16_t)(                     d );   /* infty */

        dst[0 * limb_dim + idx] = tmp_eval[0];
        dst[1 * limb_dim + idx] = tmp_eval[1];
        dst[2 * limb_dim + idx] = tmp_eval[2];
        dst[3 * limb_dim + idx] = tmp_eval[3];
        dst[4 * limb_dim + idx] = tmp_eval[4];
        dst[5 * limb_dim + idx] = tmp_eval[5];
        dst[6 * limb_dim + idx] = tmp_eval[6];
    }
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP)
/* Compute the dual/striding Toom4 evaluation step in-place */
static void poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_C( uint16_t *src, uint16_t *dst )
{
    MAKE_BUFFER(tmp, 16, BUFFER_SIZE, 0);

    unsigned limb_dim = DIMENSION_DIV4;
    unsigned padded_limb_dim = 3 * limb_dim / 2;
    unsigned idx;

    copy_poly( tmp, src, DIMENSION );

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t tmp_eval[7];
        uint16_t a,b,c,d;
        a = tmp[ 4*idx + 0 ];
        b = tmp[ 4*idx + 1 ];
        c = tmp[ 4*idx + 2 ];
        d = tmp[ 4*idx + 3 ];

        tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
        tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        tmp_eval[6] = (uint16_t)(                     d );   /* infty */

        dst[0 * padded_limb_dim + idx] = tmp_eval[0];
        dst[1 * padded_limb_dim + idx] = tmp_eval[1];
        dst[2 * padded_limb_dim + idx] = tmp_eval[2];
        dst[3 * padded_limb_dim + idx] = tmp_eval[3];
        dst[4 * padded_limb_dim + idx] = tmp_eval[4];
        dst[5 * padded_limb_dim + idx] = tmp_eval[5];
        dst[6 * padded_limb_dim + idx] = tmp_eval[6];
    }
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP)
/* Compute the dual/striding Toom4 evaluation step in-place */
static void poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_C( uint16_t *src, uint16_t *dst )
{
    MAKE_BUFFER(tmp, 16, BUFFER_SIZE, 0);

    unsigned limb_dim = DIMENSION_DIV4;
    unsigned limb_shift = limb_dim / 4;
    unsigned padded_limb_dim = 9 * limb_dim / 4;
    unsigned idx;

    copy_poly( tmp, src, DIMENSION );

    for( idx = 0; idx < limb_dim / 2; idx++ )
    {
        uint16_t tmp_eval[7];
        uint16_t a,b,c,d;
        a = tmp[ 4*idx + 0 ];
        b = tmp[ 4*idx + 1 ];
        c = tmp[ 4*idx + 2 ];
        d = tmp[ 4*idx + 3 ];

        tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
        tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        tmp_eval[6] = (uint16_t)(                     d );   /* infty */

        dst[0 * padded_limb_dim + idx] = tmp_eval[0];
        dst[1 * padded_limb_dim + idx] = tmp_eval[1];
        dst[2 * padded_limb_dim + idx] = tmp_eval[2];
        dst[3 * padded_limb_dim + idx] = tmp_eval[3];
        dst[4 * padded_limb_dim + idx] = tmp_eval[4];
        dst[5 * padded_limb_dim + idx] = tmp_eval[5];
        dst[6 * padded_limb_dim + idx] = tmp_eval[6];
    }

    for( idx = limb_dim / 2; idx < limb_dim; idx++ )
    {
        uint16_t tmp_eval[7];
        uint16_t a,b,c,d;
        a = tmp[ 4*idx + 0 ];
        b = tmp[ 4*idx + 1 ];
        c = tmp[ 4*idx + 2 ];
        d = tmp[ 4*idx + 3 ];

        tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
        tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
        tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
        tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
        tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
        tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
        tmp_eval[6] = (uint16_t)(                     d );   /* infty */

        dst[0 * padded_limb_dim + idx + limb_shift] = tmp_eval[0];
        dst[1 * padded_limb_dim + idx + limb_shift] = tmp_eval[1];
        dst[2 * padded_limb_dim + idx + limb_shift] = tmp_eval[2];
        dst[3 * padded_limb_dim + idx + limb_shift] = tmp_eval[3];
        dst[4 * padded_limb_dim + idx + limb_shift] = tmp_eval[4];
        dst[5 * padded_limb_dim + idx + limb_shift] = tmp_eval[5];
        dst[6 * padded_limb_dim + idx + limb_shift] = tmp_eval[6];
    }
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP */


#if defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM)     || \
    defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM_OOP) || \
    defined(TEST_TOOM4_FWD_DUAL_BOTTOM)
/* Compute the dual/striding Toom4 evaluation step in-place */
static void poly_u16_toom4_fwd_dual_bottom_C( uint16_t *poly )
{
    MAKE_BUFFER(tmp, 16, BUFFER_SIZE, 0);

    unsigned limb_dim = DIMENSION_DIV4;
    unsigned idx, k;

    signed high_offset = -3 * limb_dim;

    copy_poly( tmp, poly, DIMENSION );

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++ )
        {
            uint16_t tmp_eval[7];
            uint16_t a,b,c,d;
            a = tmp[ 4*(8*idx + k) + 0 ];
            b = tmp[ 4*(8*idx + k) + 1 ];
            c = tmp[ 4*(8*idx + k) + 2 ];
            d = tmp[ 4*(8*idx + k) + 3 ];

            tmp_eval[0] = (uint16_t)(   a                   );   /* 0     */
            tmp_eval[1] = (uint16_t)( 8*a - 4*b + 2*c -   d );   /* -1/2  */
            tmp_eval[2] = (uint16_t)( 8*a + 4*b + 2*c +   d );   /* +1/2  */
            tmp_eval[3] = (uint16_t)(   a -   b +   c -   d );   /* -1    */
            tmp_eval[4] = (uint16_t)(   a +   b +   c +   d );   /* +1    */
            tmp_eval[5] = (uint16_t)(   a + 2*b + 4*c + 8*d );   /* +2    */
            tmp_eval[6] = (uint16_t)(                     d );   /* infty */

            poly[idx * 4 * 8 + 8*0 + k] = tmp_eval[0];
            poly[idx * 4 * 8 + 8*1 + k] = tmp_eval[1];
            poly[idx * 4 * 8 + 8*2 + k] = tmp_eval[2];
            poly[idx * 4 * 8 + 8*3 + k] = tmp_eval[3];

            poly[high_offset + idx * 3 * 8 + 8*0 + k] = tmp_eval[4];
            poly[high_offset + idx * 3 * 8 + 8*1 + k] = tmp_eval[5];
            poly[high_offset + idx * 3 * 8 + 8*2 + k] = tmp_eval[6];
        }
    }
}
#endif /* TEST_TOOM4_FWD_INV_DUAL_BOTTOM */

/* Compute the Toom3 evaluation step in-place, evaluating
 * at the points 0, -1, +1, -2, infty in this order. */
static void poly_u16_toom3_fwd_C( uint16_t *poly )
{
    unsigned limb_dim = DIMENSION / 3;
    uint16_t* limb[]  = { poly + 0 * limb_dim,
                          poly + 1 * limb_dim,
                          poly + 2 * limb_dim };
    make_eval_offsets_toom3( poly, eval, 1 );
    unsigned idx;

    for( idx = 0; idx < limb_dim; idx++ )
    {
        uint16_t a,b,c;
        a = limb[0][idx];
        b = limb[1][idx];
        c = limb[2][idx];

        eval[0][idx] = (uint16_t)(   a             );
        eval[1][idx] = (uint16_t)(   a +   b +   c );
        eval[2][idx] = (uint16_t)(   a -   b +   c );
        eval[3][idx] = (uint16_t)(   a - 2*b + 4*c );
        eval[4][idx] = (uint16_t)(               c );
    }
}

/*
 * Test case generation
 */

#if defined(TEST_TYPE_SIMPLE)
static void generate_simple_sample_core( uint16_t *poly, int type, int count )
{
    unsigned idx;
    zero_poly( poly, DIMENSION );

    switch( type )
    {
    case 0:
        poly[0]  = 1;
        break;

    case 1:
        poly[0]  = 1;
        poly[64] = 1;
        break;

    case 2:
        poly[0] = 1;
        poly[1] = 1;
        break;

#if DIMENSION_DIV3
    case 3:
        poly[0 * DIMENSION_DIV_3] = 1;
        poly[1 * DIMENSION_DIV_3] = 1;
        poly[2 * DIMENSION_DIV_3] = 1;
        break;
#endif

#if DIMENSION_DIV4
    case 4:
        poly[0 * DIMENSION_DIV4] = 1;
        poly[1 * DIMENSION_DIV4] = 1;
        poly[2 * DIMENSION_DIV4] = 1;
        poly[3 * DIMENSION_DIV4] = 1;
        break;
#endif

    case 5:
        poly[0]  = 1;
        poly[15] = 1;
        break;

    case 6:
        poly[0]   = 1;
        poly[255] = 1;
        break;

    case 7:
        for( idx=0; idx<count; idx++ )
            poly[idx] = 1;
        break;

    default:
        random_poly( poly, DIMENSION );
        break;
    }
}

static void generate_simple_sample( int type, int count )
{
    generate_simple_sample_core( a, type, count );
    generate_simple_sample_core( b, type, count );
    mask_poly( a, DIMENSION, PRECISION );
    mask_poly( b, DIMENSION, PRECISION );
}
#endif /* TEST_TYPE_SIMPLE */

#if defined(TEST_TYPE_RANDOM)
static void generate_random_sample()
{
    random_poly( a, BUFFER_SIZE );
    random_poly( b, BUFFER_SIZE );
    mask_poly( a, BUFFER_SIZE, PRECISION );
    mask_poly( b, BUFFER_SIZE, PRECISION );
}
#endif /* TEST_TYPE_RANDOM */

static void generate_sample()
{
    memset(a,  0, 2*BUFFER_SIZE);
    memset(b,  0, 2*BUFFER_SIZE);
    memset(c,  0, 2*BUFFER_SIZE);
    memset(c0, 0, 2*BUFFER_SIZE);
    memset(c1, 0, 2*BUFFER_SIZE);
    memset(c2, 0, 2*BUFFER_SIZE);
    memset(d,  0, 2*BUFFER_SIZE);

#if defined(TEST_TYPE_RANDOM)
    generate_random_sample();
#else
    generate_simple_sample( TEST_TYPE_SIMPLE_NO,
                            TEST_TYPE_SIMPLE_ARG );
#endif
}

/*
 * Test for autogenerated code for standalone Toom4 u16 polynomial arithmetic.
 */

#if defined(TEST_TOOM4_STANDALONE)
int unfold(test_toom4_standalone)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_START );
    generate_sample();

    /* Implementation 1: Reference C schoolbook implementation */

    poly_u16_mul_C( c1, a, b );

    /* Implementation 2: MVE implementation */

    measure_start();
    poly_u16_mul_toom4_mve( c0, a, b );
    measure_end();

    /* Implementation 3 (if enabled): M4 implementation */
#if defined(poly_u16_mul_m4)
    poly_u16_mul_m4( c2, a, b );
#endif

    /* Mask and compare results */

    mask_poly( c0, 2*DIMENSION, PRECISION );
    mask_poly( c1, 2*DIMENSION, PRECISION );
    mask_poly( c2, 2*DIMENSION, PRECISION );

#if defined(poly_u16_mul_mve)
    if( compare_poly( c0, c1, 2 * ( DIMENSION - 1 ) ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c0, 2 * ( DIMENSION - 1 ), "MVE: " );
        return( 1 );
    }
#endif

#if defined(poly_u16_mul_m4)
    if( compare_poly( c2, c1, 2 * ( DIMENSION - 1 ) ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c2, 2 * ( DIMENSION - 1 ), " M4: " );
        return( 1 );
    }
#endif

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_STANDALONE */

#if defined(TEST_TOOM3_STANDALONE)
int unfold(test_toom3_standalone)()
{
    debug_test_start( TEST_STRING_TOOM3_STANDALONE_START );
    generate_sample();

    /* Implementation 1: Reference C schoolbook implementation */

    poly_u16_mul_C( c1, a, b );

    /* Implementation 2: MVE implementation */

    measure_start();
    poly_u16_mul_toom3_mve( c0, a, b );
    measure_end();

    /* Implementation 3 (if enabled): M4 implementation */
#if defined(poly_u16_mul_m4)
    poly_u16_mul_m4( c2, a, b );
#endif

    /* Mask and compare results */

    mask_poly( c0, 2*DIMENSION, PRECISION );
    mask_poly( c1, 2*DIMENSION, PRECISION );
    mask_poly( c2, 2*DIMENSION, PRECISION );

#if defined(poly_u16_mul_mve)
    if( compare_poly( c0, c1, 2 * ( DIMENSION - 1 ) ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c0, 2 * ( DIMENSION - 1 ), "MVE: " );
        return( 1 );
    }
#endif

#if defined(poly_u16_mul_m4)
    if( compare_poly( c2, c1, 2 * ( DIMENSION - 1 ) ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c2, 2 * ( DIMENSION - 1 ), " M4: " );
        return( 1 );
    }
#endif

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM3_STANDALONE */

/*
 * Test that autogenerated code for Toom3 evaluation is functionally correct.
 */

#if defined(TEST_TOOM3_FWD)
int unfold(test_toom3_fwd)()
{
    debug_test_start( TEST_STRING_TOOM3_FWD_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom3_fwd_mve( a );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom3_fwd_C( b );

    if( compare_poly( a, b, 5 * DIMENSION_DIV3 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( a, 2 * ( DIMENSION - 1 ), "MVE: " );
        debug_print_poly( b, 2 * ( DIMENSION - 1 ), "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM3_FWD */

/*
 * Test that autogenerated code for Toom4 evaluation is functionally correct.
 */

#if defined(TEST_TOOM4_FWD)
int unfold(test_toom4_fwd)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_mve( a );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_C( b );

    if( compare_poly( a, b, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( a, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( b, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD */

#if defined(TEST_TOOM4_FWD_OOP)
int unfold(test_toom4_fwd_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_oop_C( b, d );

    if( compare_poly( c, d, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( d, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_OOP */

#if defined(TEST_TOOM4_FWD_KARATSUBA_X1_OOP)
int unfold(test_toom4_fwd_karatsuba_x1_oop)()
{
    unsigned out_dim = 7 * 3 * DIMENSION_DIV4 / 2;

    debug_test_start( TEST_STRING_TOOM4_FWD_KARATSUBA_X1_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_karatsuba_x1_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_karatsuba_x1_oop_C( b, d );

    if( compare_poly( c, d, out_dim ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, out_dim, "MVE: " );
        debug_print_poly( d, out_dim, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_KARATSUBA_X1_OOP */

#if defined(TEST_TOOM4_FWD_KARATSUBA_X2_OOP)
int unfold(test_toom4_fwd_karatsuba_x2_oop)()
{
    unsigned out_dim = 7 * 9 * DIMENSION_DIV4 / 4;

    debug_test_start( TEST_STRING_TOOM4_FWD_KARATSUBA_X2_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_karatsuba_x2_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_karatsuba_x2_oop_C( b, d );

    if( compare_poly( c, d, out_dim ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, out_dim, "MVE: " );
        debug_print_poly( b, out_dim, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_KARATSUBA_X2_OOP */

/*
 * Test that autogenerated code for dual/striding Toom4 evaluation is functionally correct.
 */

#if defined(TEST_TOOM4_FWD_DUAL_TOP)
int unfold(test_toom4_fwd_dual_top)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_TOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_top_mve( a );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_top_C( b, b );

    if( compare_poly( a, b, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( a, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( b, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_TOP */

#if defined(TEST_TOOM4_FWD_DUAL_TOP_OOP)
int unfold(test_toom4_fwd_dual_top_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_TOP_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_top_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_top_C( b, b );

    if( compare_poly( c, b, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( b, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_TOP_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP)
int unfold(test_toom4_fwd_dual_packed_limbs_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_packed_limbs_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_packed_limbs_oop_C( b, b );

    if( compare_poly( c, b, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( b, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP)
int unfold(test_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    unsigned out_dim = 7 * 3 * DIMENSION_DIV4 / 2;

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_C( b, d );

    if( compare_poly( c, d, out_dim ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, out_dim, "MVE: " );
        debug_print_poly( d, out_dim, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP)
int unfold(test_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    unsigned out_dim = 7 * 9 * DIMENSION_DIV4 / 4;

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_mve( a, c );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop_C( b, d );

    if( compare_poly( c, d, out_dim ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c, out_dim, "MVE: " );
        debug_print_poly( b, out_dim, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP */

#if defined(TEST_TOOM4_FWD_DUAL_BOTTOM)
int unfold(test_toom4_fwd_dual_bottom)()
{
    uint16_t * const a_shift = a + 3*DIMENSION_DIV4;
    uint16_t * const b_shift = b + 3*DIMENSION_DIV4;
    debug_test_start( TEST_STRING_TOOM4_FWD_DUAL_BOTTOM_START );
    generate_sample();
    copy_poly( b_shift, a_shift, DIMENSION );

    /* Step 1: Toom4 evaluation, MVE implementation. */

    measure_start();
    poly_u16_toom4_fwd_dual_bottom_mve( a_shift );
    measure_end();

    /* Step 2: Toom4 evaluation, reference implementation */

    poly_u16_toom4_fwd_dual_bottom_C( b_shift );

    if( compare_poly( a, b, 7 * DIMENSION_DIV4 ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( a, 7 * DIMENSION_DIV4, "MVE: " );
        debug_print_poly( b, 7 * DIMENSION_DIV4, "Ref: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_DUAL_BOTTOM */

/*
 * Test that autogenerated code for Toom4 evaluation and interpolation
 * (without any intermediate multiplication) are inverses of each other.
 */

#if defined(TEST_TOOM4_FWD_INV)
static void multiply_by_eval_of_1_toom4( uint16_t *a )
{
    unsigned limb_dim = DIMENSION / 4;
    unsigned idx, pt_idx;
    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    make_eval_offsets_toom4( a,   eval_a,   1 );
    make_prod_offsets_toom4( a,   prod_a,   1 );
    make_prod_offsets_toom4( tmp, prod_tmp, 1 );

    uint16_t eval_of_one[] = { 1, 8, 8, 1, 1, 1, 0 };

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 7; pt_idx++ )
            prod_tmp[pt_idx][idx] = eval_a[pt_idx][idx] * eval_of_one[pt_idx];

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 7; pt_idx++ )
            prod_a[pt_idx][idx] = prod_tmp[pt_idx][idx];
}

int unfold(test_toom4_fwd_inv)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

    measure_start();
    poly_u16_toom4_fwd_mve( a );
    measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4( a );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_half_mve( a );
    measure_end();

    /* Mask and compare results */
    mask_poly( a, DIMENSION, PRECISION );
    mask_poly( b, DIMENSION, PRECISION );

    if( compare_poly( a, b, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b, DIMENSION, "Ref: " );
        debug_print_poly( a, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_INV */

#if defined(TEST_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP)
static void multiply_by_eval_of_1_toom4_dual_packed_limbs_oop( uint16_t *a )
{
    unsigned limb_dim = DIMENSION / 4;
    unsigned idx, pt_idx;
    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    make_eval_offsets_toom4_oop( a,   eval_a,   1 );
    make_prod_offsets_toom4( a,   prod_a,   1 );
    make_prod_offsets_toom4( tmp, prod_tmp, 1 );

    uint16_t eval_of_one[] = { 1, 8, 8, 1, 1, 1, 0 };

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 7; pt_idx++ )
            prod_tmp[pt_idx][idx] = eval_a[pt_idx][idx] * eval_of_one[pt_idx];

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 7; pt_idx++ )
            prod_a[pt_idx][idx] = prod_tmp[pt_idx][idx];
}

int unfold(test_toom4_fwd_inv_dual_packed_limbs_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

    measure_start();
    poly_u16_toom4_fwd_dual_packed_limbs_oop_mve( a, c );
    measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4_dual_packed_limbs_oop( c );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_dual_packed_limbs_oop_mve( c, d );
    measure_end();

    /* Mask and compare results */
    mask_poly( d, DIMENSION, PRECISION );
    mask_poly( b, DIMENSION, PRECISION );

    if( compare_poly( d, b, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b, DIMENSION, "Ref: " );
        debug_print_poly( d, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_INV */

#if defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM) || \
    defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM_OOP)
static void multiply_by_eval_of_1_toom4_dual_bottom( uint16_t *a )
{
    unsigned limb_dim = DIMENSION_DIV4;
    unsigned idx, pt_idx, k;
    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    make_eval_offsets_toom4_dual_bottom( a,   eval_a,   1 );
    make_eval_offsets_toom4_dual_bottom( a,   prod_a,   1 );
    make_eval_offsets_toom4_dual_bottom( tmp + 3 * DIMENSION_DIV4, prod_tmp, 1 );

    uint16_t eval_of_one[] = { 1, 8, 8, 1, 1, 1, 0 };

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++)
        {
            for( pt_idx = 0; pt_idx < 4; pt_idx++ )
                prod_tmp[pt_idx][4*8*idx + k] =
		  eval_a[pt_idx][4*8*idx +k] * eval_of_one[pt_idx];
            for( pt_idx = 4; pt_idx < 7; pt_idx++ )
                prod_tmp[pt_idx][3*8*idx + k] = eval_a[pt_idx][3*8*idx+k] * eval_of_one[pt_idx];
        }
    }

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++)
        {
            for( pt_idx = 0; pt_idx < 4; pt_idx++ )
                prod_a[pt_idx][4*8*idx+k] = prod_tmp[pt_idx][4*8*idx+k];
            for( pt_idx = 4; pt_idx < 7; pt_idx++ )
                prod_a[pt_idx][3*8*idx+k] = prod_tmp[pt_idx][3*8*idx+k];
        }
    }
}

int unfold(test_toom4_fwd_inv_dual_bottom)()
{
    uint16_t * const a_shift = a + 3*DIMENSION_DIV4;
    uint16_t * const b_shift = b + 3*DIMENSION_DIV4;
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_START );

    generate_sample();
    copy_poly( b_shift, a_shift, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

//    measure_start();
    poly_u16_toom4_fwd_dual_bottom_mve( a_shift );
//    measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4_dual_bottom( a_shift );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_dual_bottom_mve( a_shift );
    measure_end();

    /* Mask and compare results */
    mask_poly( a, 7 * DIMENSION_DIV4, PRECISION );
    mask_poly( b, 7 * DIMENSION_DIV4, PRECISION );

    if( compare_poly( a_shift, b_shift, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b_shift, DIMENSION, "Ref: " );
        debug_print_poly( a_shift, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}

int unfold(test_toom4_fwd_inv_dual_bottom_oop)()
{
    uint16_t * const a_shift = a + 3*DIMENSION_DIV4;
    uint16_t * const b_shift = b + 3*DIMENSION_DIV4;
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_DUAL_BOTTOM_OOP_START );

    generate_sample();
    copy_poly( b_shift, a_shift, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

//    measure_start();
    poly_u16_toom4_fwd_dual_bottom_mve( a_shift );
//    measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4_dual_bottom( a_shift );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_dual_bottom_oop_mve( a_shift, c );
    measure_end();

    /* Mask and compare results */
    mask_poly( c, 7 * DIMENSION_DIV4, PRECISION );
    mask_poly( b, 7 * DIMENSION_DIV4, PRECISION );

    if( compare_poly( c, b_shift, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b_shift, DIMENSION, "Ref: " );
        debug_print_poly( c, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_INV_DUAL_BOTTOM_OOP */

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP) || \
    defined(TEST_TOOM4_FWD_INV_DUAL_TOP_OOP)
static void multiply_by_eval_of_1_toom4_dual_top( uint16_t *a )
{
    unsigned limb_dim = DIMENSION_DIV4;
    unsigned idx, pt_idx, k;
    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    make_eval_offsets_toom4_dual_top( a,   eval_a,   1 );
    make_eval_offsets_toom4_dual_top( a,   prod_a,   1 );
    make_eval_offsets_toom4_dual_top( tmp, prod_tmp, 1 );

    uint16_t eval_of_one[] = { 1, 8, 8, 1, 1, 1, 0 };

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++)
        {
            for( pt_idx = 0; pt_idx < 4; pt_idx++ )
                prod_tmp[pt_idx][4*8*idx + k] = eval_a[pt_idx][4*8*idx +k] * eval_of_one[pt_idx];
            for( pt_idx = 4; pt_idx < 7; pt_idx++ )
                prod_tmp[pt_idx][3*8*idx + k] = eval_a[pt_idx][3*8*idx+k] * eval_of_one[pt_idx];
        }
    }

    for( idx = 0; idx < limb_dim / 8; idx++ )
    {
        for( k=0; k<8; k++)
        {
            for( pt_idx = 0; pt_idx < 4; pt_idx++ )
                prod_a[pt_idx][4*8*idx+k] = prod_tmp[pt_idx][4*8*idx+k];
            for( pt_idx = 4; pt_idx < 7; pt_idx++ )
                prod_a[pt_idx][3*8*idx+k] = prod_tmp[pt_idx][3*8*idx+k];
        }
    }
}
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP)
int unfold(test_toom4_fwd_inv_dual_top)()
{
    uint16_t * const a_shift = a + 3*DIMENSION_DIV4;
    uint16_t * const b_shift = b + 3*DIMENSION_DIV4;
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START );

    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

    measure_start();
    poly_u16_toom4_fwd_dual_top_mve( a );
    measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4_dual_top( a );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_dual_top_mve( a );
    measure_end();

    /* Mask and compare results */
    mask_poly( a, 7 * DIMENSION_DIV4, PRECISION );
    mask_poly( b, 7 * DIMENSION_DIV4, PRECISION );

    if( compare_poly( a, b, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b, DIMENSION, "REF: " );
        debug_print_poly( a, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP_OOP)
int unfold(test_toom4_fwd_inv_dual_top_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_INV_DUAL_TOP_START );

    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom4 evaluation, akin to forward-NTT (but size-increasing) */

    //measure_start();
    poly_u16_toom4_fwd_dual_top_mve( a );
    //measure_end();

    /* The Toom4 evaluation + interpolation as implemented here (and in the
     * original paper https://eprint.iacr.org/2018/682.pdf) aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 8, 8, 1, 1, 1, 0
     * so we only need to shift a few values in the evaluation-form.
     */
    multiply_by_eval_of_1_toom4_dual_top( a );

    /* Step 2: Toom4 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom4_inv_dual_top_oop_mve( a, c );
    measure_end();

    /* Mask and compare results */
    mask_poly( c, 7 * DIMENSION_DIV4, PRECISION );
    mask_poly( b, 7 * DIMENSION_DIV4, PRECISION );

    if( compare_poly( c, b, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b, DIMENSION, "REF: " );
        debug_print_poly( c, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_INV_DUAL_TOP_OOP */

#if defined(TEST_TOOM3_FWD_INV)
static void multiply_by_eval_of_1_toom3( uint16_t *a )
{
    unsigned limb_dim = DIMENSION / 3;
    unsigned idx, pt_idx;
    MAKE_BUFFER(tmp,16,BUFFER_SIZE,8);
    make_eval_offsets_toom3( a,   eval_a,   1 );
    make_prod_offsets_toom3( a,   prod_a,   1 );
    make_prod_offsets_toom3( tmp, prod_tmp, 1 );

    uint16_t eval_of_one[] = { 1, 1, 1, 1, 0 };

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 5; pt_idx++ )
            prod_tmp[pt_idx][idx] = eval_a[pt_idx][idx] * eval_of_one[pt_idx];

    for( idx = 0; idx < limb_dim; idx++ )
        for( pt_idx = 0; pt_idx < 5; pt_idx++ )
            prod_a[pt_idx][idx] = prod_tmp[pt_idx][idx];
}

int unfold(test_toom3_fwd_inv)()
{
    debug_test_start( TEST_STRING_TOOM3_FWD_INV_START );
    generate_sample();
    copy_poly( b, a, DIMENSION );

    /* Step 1: Toom3 evaluation, akin to forward-NTT (but size-increasing) */

    /* measure_start(); */
    poly_u16_toom3_fwd_mve( a );
    /* measure_end(); */

    /* The Toom3 evaluation + interpolation as implemented here aren't actually
     * inverse to each other. It is required that you perform a multiplication
     * in between.
     *
     * In particular, in order to get back the original polynomial, we need
     * to multiply with the evaluation of the 1 (as a polynomial) before
     * interpolating.
     *
     * The values of this evaluation are
     *     1, 1, 1, 1, 0
     * so we only need to eliminate the last limb.
     */
    multiply_by_eval_of_1_toom3( a );

    /* Step 2: Toom3 interpolation, akin to inverse-NTT */

    measure_start();
    poly_u16_toom3_inv_half_mve( a );
    measure_end();

    /* Mask and compare results */
    mask_poly( a, DIMENSION, PRECISION );
    mask_poly( b, DIMENSION, PRECISION );

    if( compare_poly( a, b, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( b, DIMENSION, "Ref: " );
        debug_print_poly( a, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM3_FWD_INV */

#if defined(TEST_TOOM4_FWD_MUL_INV)

static void multiply_evals_toom4( uint16_t *c, uint16_t *a, uint16_t *b )
{
    unsigned limb_dim = DIMENSION / 4;
    unsigned pt_idx;

    make_eval_offsets_toom4( a, eval_a, 1 );
    make_eval_offsets_toom4( b, eval_b, 1 );
    make_prod_offsets_toom4( c, prod_c, 2 );

    for( pt_idx = 0; pt_idx < 7; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */
        poly_u16_mul_div4_C( prod_c[pt_idx],
                             eval_a[pt_idx],
                             eval_b[pt_idx] );
    }
}

static void narrow_limbs_toom4( uint16_t *a )
{
    unsigned limb_dim = DIMENSION / 4;
    unsigned idx, pt_idx;

    make_prod_offsets_toom4( a, a_wide,   2);
    make_prod_offsets_toom4( a, a_narrow, 1);

    for( pt_idx = 0; pt_idx < 7; pt_idx++ )
    {
        unsigned cur_limb_dim = pt_idx < 6 ? limb_dim : 2 * limb_dim;
        for( idx=0; idx < cur_limb_dim; idx++ )
            a_narrow[pt_idx][idx] = a_wide[pt_idx][idx];
    }
}

int unfold(test_toom4_fwd_mul_inv)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_MUL_INV_START );
    generate_sample();

    /* Compute reference product */
    poly_u16_mul_C( c1, a, b );

    /* Step 1: Toom4 evaluations, akin to forward-NTT (but size-increasing) */

    poly_u16_toom4_fwd_mve( a );
    poly_u16_toom4_fwd_mve( b );

    /* Step 3: Multiply evaluations */
    multiply_evals_toom4( c0, a, b );

    /* Step 3: Toom4 interpolation, akin to inverse-NTT */
    measure_start();
    poly_u16_toom4_inv_mve( c0 );
    measure_end();

    /* The current implementation of Toom4 interpolation leaves a gap
     * between the limbs - remove that by hand for now.
     *
     * If go for 'dual' Toom4 ultimately, this shouldn't matter
     * because the multiplication of the evaluations would be
     * size preserving in this case. */
    narrow_limbs_toom4( c0 );

    /* Mask and compare results */
    mask_poly( c0, 2*DIMENSION, PRECISION );
    mask_poly( c1, 2*DIMENSION, PRECISION );

    if( compare_poly( c0, c1, 2*DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c0, 2 * ( DIMENSION - 1 ), "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_MUL_INV */

#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP)
static void multiply_evals_toom4_dual_packed_limbs_oop( uint16_t *c, uint16_t *a, uint16_t *b )
{
    unsigned limb_dim = DIMENSION / 4;
    unsigned pt_idx;

    make_eval_offsets_toom4_oop( a, eval_a, 1 );
    make_eval_offsets_toom4_oop( b, eval_b, 1 );
    make_prod_offsets_toom4( c, prod_c, 1 );

    for( pt_idx = 0; pt_idx < 7; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_anticyclic_div4_C( prod_c[pt_idx],
                                        eval_a[pt_idx],
                                        eval_b[pt_idx] );
    }
}

int unfold(test_toom4_fwd_mul_inv_dual_packed_limbs_oop)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP_START );
    generate_sample();

    /* Compute reference product */
    poly_u16_mul_anticyclic_C( c1, a, b );

    /* Step 1: Toom4 evaluations, akin to forward-NTT (but size-increasing) */

    poly_u16_toom4_fwd_dual_packed_limbs_oop_mve( a, c );
    poly_u16_toom4_fwd_dual_packed_limbs_oop_mve( b, d );

    /* Step 3: Multiply evaluations */
    multiply_evals_toom4_dual_packed_limbs_oop( c0, c, d );

    /* Step 3: Toom4 interpolation, akin to inverse-NTT */
    measure_start();
    poly_u16_toom4_inv_dual_packed_limbs_oop_mve( c0, c2 );
    measure_end();

    /* Mask and compare results */
    mask_poly( c2, DIMENSION, PRECISION );
    mask_poly( c1, DIMENSION, PRECISION );

    if( compare_poly( c2, c1, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c2, 2 * ( DIMENSION - 1 ), "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP */


#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_BOTTOM)
static void multiply_evals_toom4_dual_bottom( uint16_t *c, uint16_t *a, uint16_t *b )
{
    unsigned limb_dim = DIMENSION_DIV4;
    unsigned pt_idx;

    make_eval_offsets_toom4_dual_bottom( a, eval_a, 1 );
    make_eval_offsets_toom4_dual_bottom( b, eval_b, 1 );
    make_eval_offsets_toom4_dual_bottom( c, prod_c, 1 );

    for( pt_idx = 0; pt_idx < 4; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_anticyclic_div4_4x8_C( prod_c[pt_idx],
                                            eval_a[pt_idx],
                                            eval_b[pt_idx] );
    }

    for( pt_idx = 4; pt_idx < 7; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_anticyclic_div4_3x8_C( prod_c[pt_idx],
                                            eval_a[pt_idx],
                                            eval_b[pt_idx] );
    }
}

int unfold(test_toom4_fwd_mul_inv_dual_bottom)()
{
    uint16_t * const a_shift  = a + 3*DIMENSION_DIV4;
    uint16_t * const b_shift  = b + 3*DIMENSION_DIV4;
    uint16_t * const c0_shift = c0 + 3*DIMENSION_DIV4;

    debug_test_start( TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_BOTTOM_START );
    generate_sample();

    /* Compute reference product */
    poly_u16_mul_anticyclic_256_C( c1, a_shift, b_shift );

    /* Step 1: Toom4 evaluations, akin to forward-NTT (but size-increasing) */

    poly_u16_toom4_fwd_dual_bottom_mve( a_shift );
    poly_u16_toom4_fwd_dual_bottom_mve( b_shift );

    /* Step 3: Multiply evaluations */
    multiply_evals_toom4_dual_bottom( c0_shift, a_shift, b_shift );

    /* Step 3: Toom4 interpolation, akin to inverse-NTT */
    measure_start();
    poly_u16_toom4_inv_dual_bottom_mve( c0_shift );
    measure_end();

    /* Mask and compare results */
    mask_poly( c0_shift, DIMENSION, PRECISION );
    mask_poly( c1, DIMENSION, PRECISION );

    if( compare_poly( c0_shift, c1, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1,       DIMENSION, "Ref: " );
        debug_print_poly( c0_shift, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_MUL_INV_DUAL_BOTTOM */

#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_TOP)

static void multiply_evals_toom4_dual_top( uint16_t *c, uint16_t *a, uint16_t *b )
{
    unsigned limb_dim = DIMENSION_DIV4;
    unsigned pt_idx;

    make_eval_offsets_toom4_dual_top( a, eval_a, 1 );
    make_eval_offsets_toom4_dual_top( b, eval_b, 1 );
    make_eval_offsets_toom4_dual_top( c, prod_c, 1 );

    for( pt_idx = 0; pt_idx < 4; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_anticyclic_div4_4x8_C( prod_c[pt_idx],
                                            eval_a[pt_idx],
                                            eval_b[pt_idx] );
    }

    for( pt_idx = 4; pt_idx < 7; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_anticyclic_div4_3x8_C( prod_c[pt_idx],
                                            eval_a[pt_idx],
                                            eval_b[pt_idx] );
    }
}

int unfold(test_toom4_fwd_mul_inv_dual_top)()
{
    debug_test_start( TEST_STRING_TOOM4_FWD_MUL_INV_DUAL_TOP_START );
    generate_sample();

    /* Compute reference product */
    poly_u16_mul_anticyclic_256_C( c1, a, b );

    /* Step 1: Toom4 evaluations, akin to forward-NTT (but size-increasing) */

    poly_u16_toom4_fwd_dual_top_mve( a );
    poly_u16_toom4_fwd_dual_top_mve( b );

    /* Step 3: Multiply evaluations */
    multiply_evals_toom4_dual_top( c0, a, b );

    /* Step 3: Toom4 interpolation, akin to inverse-NTT */
    measure_start();
    poly_u16_toom4_inv_dual_top_mve( c0 );
    measure_end();

    /* Mask and compare results */
    mask_poly( c0, DIMENSION, PRECISION );
    mask_poly( c1, DIMENSION, PRECISION );

    if( compare_poly( c0, c1, DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, DIMENSION, "Ref: " );
        debug_print_poly( c0, DIMENSION, "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM4_FWD_MUL_INV_DUAL_TOP */

#if defined(TEST_TOOM3_FWD_MUL_INV)

static void multiply_evals_toom3( uint16_t *c, uint16_t *a, uint16_t *b )
{
    unsigned limb_dim = DIMENSION / 3;
    unsigned pt_idx;

    make_eval_offsets_toom3( a, eval_a, 1 );
    make_eval_offsets_toom3( b, eval_b, 1 );
    make_prod_offsets_toom3( c, prod_c, 2 );

    for( pt_idx = 0; pt_idx < 5; pt_idx++ )
    {
        /* Multiply evaluations with naive schoolbook implementation. */

        poly_u16_mul_div3_C( prod_c[pt_idx],
                             eval_a[pt_idx],
                             eval_b[pt_idx] );
    }
}

static void narrow_limbs_toom3( uint16_t *a )
{
    unsigned limb_dim = DIMENSION / 3;
    unsigned idx, pt_idx;

    make_prod_offsets_toom3( a, a_wide,   2);
    make_prod_offsets_toom3( a, a_narrow, 1);

    for( pt_idx = 0; pt_idx < 5; pt_idx++ )
    {
        unsigned cur_limb_dim = pt_idx < 4 ? limb_dim : 2 * limb_dim;
        for( idx=0; idx < cur_limb_dim; idx++ )
            a_narrow[pt_idx][idx] = a_wide[pt_idx][idx];
    }
}

int unfold(test_toom3_fwd_mul_inv)()
{
    debug_test_start( TEST_STRING_TOOM3_FWD_MUL_INV_START );

    generate_sample();

    /* Compute reference product */
    poly_u16_mul_C( c1, a, b );

    /* Step 1: Toom3 evaluations, akin to forward-NTT (but size-increasing) */

    measure_start();
    poly_u16_toom3_fwd_mve( a );
    measure_end();
    poly_u16_toom3_fwd_mve( b );

    /* Step 3: Multiply evaluations */
    multiply_evals_toom3( c0, a, b );

    /* Step 3: Toom3 interpolation, akin to inverse-NTT */
    measure_start();
    poly_u16_toom3_inv_mve( c0 );
    measure_end();

    /* The current implementation of Toom3 interpolation leaves a gap
     * between the limbs - remove that by hand for now.
     *
     * If go for 'dual' Toom3 ultimately, this shouldn't matter
     * because the multiplication of the evaluations would be
     * size preserving in this case. */
    narrow_limbs_toom3( c0 );

    /* Mask and compare results */
    mask_poly( c0, 2*DIMENSION, PRECISION );
    mask_poly( c1, 2*DIMENSION, PRECISION );

    if( compare_poly( c0, c1, 2*DIMENSION ) != 0 )
    {
        debug_test_fail();
        debug_print_poly( c1, 2 * ( DIMENSION - 1 ), "Ref: " );
        debug_print_poly( c0, 2 * ( DIMENSION - 1 ), "MVE: " );
        return( 1 );
    }

    debug_test_ok();
    return( 0 );
}
#endif /* TEST_TOOM3_FWD_MUL_INV */

int unfold(test_toom_all) (void)
{
    int ret;

#if defined(TEST_TOOM3_FWD)
    ret = run(test_toom3_fwd);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM3_FWD_INV)
    ret = run(test_toom3_fwd_inv);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM3_FWD_MUL_INV)
    ret = run(test_toom3_fwd_mul_inv);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM3_STANDALONE)
    ret = run(test_toom3_standalone);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD)
    ret = run(test_toom4_fwd);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_OOP)
    ret = run(test_toom4_fwd_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_KARATSUBA_X1_OOP)
    ret = run(test_toom4_fwd_karatsuba_x1_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_KARATSUBA_X2_OOP)
    ret = run(test_toom4_fwd_karatsuba_x2_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_TOP)
    ret = run(test_toom4_fwd_dual_top);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_TOP_OOP)
    ret = run(test_toom4_fwd_dual_top_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_OOP)
    ret = run(test_toom4_fwd_dual_packed_limbs_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X1_OOP)
    ret = run(test_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_PACKED_LIMBS_KARATSUBA_X2_OOP)
    ret = run(test_toom4_fwd_dual_packed_limbs_karatsuba_x2_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_DUAL_BOTTOM)
    ret = run(test_toom4_fwd_dual_bottom);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV)
    ret = run(test_toom4_fwd_inv);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP)
    ret = run(test_toom4_fwd_inv_dual_top);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_TOP_OOP)
    ret = run(test_toom4_fwd_inv_dual_top_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_PACKED_LIMBS_OOP)
    ret = run(test_toom4_fwd_inv_dual_packed_limbs_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM)
    ret = run(test_toom4_fwd_inv_dual_bottom);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_INV_DUAL_BOTTOM_OOP)
    ret = run(test_toom4_fwd_inv_dual_bottom_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_MUL_INV)
    ret = run(test_toom4_fwd_mul_inv);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_BOTTOM)
    ret = run(test_toom4_fwd_mul_inv_dual_bottom);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_TOP)
    ret = run(test_toom4_fwd_mul_inv_dual_top);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_FWD_MUL_INV_DUAL_PACKED_LIMBS_OOP)
    ret = run(test_toom4_fwd_mul_inv_dual_packed_limbs_oop);
    if( ret != 0 )
        return( 1 );
#endif

#if defined(TEST_TOOM4_STANDALONE)
    ret = run(test_toom4_standalone);
    if( ret != 0 )
        return( 1 );
#endif

    debug_printf( "ALL GOOD!\n" );

    return( 0 );
}

#if !defined(TEST_NO_MAIN)
int main(void)
{
    return( unfold(test_toom_all)() );
}
#endif
