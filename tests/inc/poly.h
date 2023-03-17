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

#if !defined(MVE_POLY_ARITHMETIC_TESTS_POLY)
#define MVE_POLY_ARITHMETIC_TESTS_POLY

#include <stdint.h>

#include "misc.h"

int  compare_poly( uint16_t const *src_a, uint16_t const *src_b,
                   unsigned int dim );
void random_poly ( uint16_t *a, unsigned int dim );
void zero_poly   ( uint16_t *a, unsigned int dim );
void mask_poly   ( uint16_t *a, unsigned int dim, unsigned bitwidth );
void copy_poly   ( uint16_t *dst, uint16_t const *src, unsigned int dim );
void debug_print_poly  ( uint16_t *a, unsigned int dim, const char *prefix );

/*
 * Helpers for modular multiplication and reduction.
 */

/* Scalar operations */
int32_t mod_red_s32( int64_t a, int32_t mod );
int32_t mod_mul_s32( int32_t a, int32_t b, int32_t mod );
int32_t mod_add_s32( int32_t a, int32_t b, int32_t mod );
int32_t mod_sub_s32( int32_t a, int32_t b, int32_t mod );
int32_t mod_pow_s32( int32_t base, unsigned exp, int32_t mod );

/* Scalar operations */
int16_t mod_red_s16( int64_t a, int16_t mod );
int16_t mod_mul_s16( int16_t a, int16_t b, int16_t mod );
int16_t mod_add_s16( int16_t a, int16_t b, int16_t mod );
int16_t mod_sub_s16( int16_t a, int16_t b, int16_t mod );
int16_t mod_pow_s16( int16_t base, unsigned exp, int16_t mod );

/* Buffer operations */
void mod_reduce_buf_s32   ( int32_t *src, unsigned size, int32_t modulus );
void mod_reduce_buf_s32_signed( int32_t *src, unsigned size, int32_t modulus );
void mod_mul_buf_const_s32( int32_t *src, int32_t factor, int32_t *dst,
                            unsigned size, int32_t mod );
void mod_add_buf_u16( uint16_t *src_a, uint16_t *src_b, uint16_t *dst,
                      unsigned size );
void mod_add_buf_s32( int32_t *src_a, int32_t *src_b, int32_t *dst,
                      unsigned size, int32_t modulus );
void mod_mul_buf_s32      ( int32_t *src_a, int32_t *src_b, int32_t *dst,
                            unsigned size, int32_t modulus );

/* Buffer operations */
void mod_reduce_buf_s16   ( int16_t *src, unsigned size, int16_t modulus );
void mod_reduce_buf_s16_signed( int16_t *src, unsigned size, int16_t modulus );
void mod_mul_buf_const_s16( int16_t *src, int16_t factor, int16_t *dst,
                            unsigned size, int16_t mod );
void mod_add_buf_u16( uint16_t *src_a, uint16_t *src_b, uint16_t *dst,
                      unsigned size );
void mod_add_buf_s16( int16_t *src_a, int16_t *src_b, int16_t *dst,
                      unsigned size, int16_t modulus );
void mod_mul_buf_s16      ( int16_t *src_a, int16_t *src_b, int16_t *dst,
                            unsigned size, int16_t modulus );

/* This macro generates a naive schoolbook multiplication.
 * The emitted symbol name is poly_u{bitwidth}_mul_{dim}_C,
 * e.g. poly_u16_mul_32_C for a dimension 32 (degree <= 31)
 * multiplication modulo 2^16. */

#ifndef C_SCHOOLBOOK_SYMBOL_NAME
#define C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_, DIM, _C)
#endif /* C_SCHOOLBOOK_SYMBOL_NAME */

#ifndef C_SCHOOLBOOK_GATHER_SYMBOL_NAME
#define C_SCHOOLBOOK_GATHER_SYMBOL_NAME(BITWIDTH,DIM)  \
    CONCAT5(poly_u, BITWIDTH, _mul_, DIM, _C)
#endif /* C_SCHOOLBOOK_SYMBOL_NAME */

/* Use this index macro for plain consecutive element access. */
#define OFFSET_FROM_INDEX_PLAIN(dim,idx)  (idx)

/* Use this index macro for indices scattered in blocks. */
#define OFFSET_FROM_INDEX_GATHER(block, stride, idx)     \
    ( (stride) * (block) * ((idx) / (block)) + ((idx) % (block)))

#ifndef SCHOOBLOOK_OFFSET_FROM_INDEX_DST
#define SCHOOLBOOK_OFFSET_FROM_INDEX_DST(dim, idx) OFFSET_FROM_INDEX_PLAIN(dim,idx)
#endif

#ifndef SCHOOBLOOK_OFFSET_FROM_INDEX_SRCA
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(dim,idx) OFFSET_FROM_INDEX_PLAIN(dim,idx)
#endif
#ifndef SCHOOBLOOK_OFFSET_FROM_INDEX_SRCB
#define SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(dim,idx) OFFSET_FROM_INDEX_PLAIN(dim,idx)
#endif

#ifndef SCHOOLBOOK_FACTOR
#define SCHOOLBOOK_FACTOR(dim, idx) 1
#endif

#define MAKE_SCHOOLBOOK_(BITWIDTH,DIM)                                   \
void C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)                              \
        ( uint(BITWIDTH)        *r,                                      \
          uint(BITWIDTH) const  *a,                                      \
          uint(BITWIDTH) const  *b )                                     \
    {                                                                    \
        unsigned i, j;                                                   \
                                                                         \
        for( i=0; i < 2 * DIM; i++ )                                     \
            r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i)] = 0;             \
                                                                         \
        for( i=0; i < DIM; i++ )                                         \
        {                                                                \
            for( j=0; j < DIM; j++ )                                     \
            {                                                            \
                r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)]            \
                    +=   SCHOOLBOOK_FACTOR(DIM, i+j)                     \
                    * a[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(DIM, i)]       \
                    * b[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(DIM, j)];      \
            }                                                            \
        }                                                                \
    }

#define MAKE_INT_SCHOOLBOOK_(BITWIDTH,DIM)                               \
void C_SCHOOLBOOK_SYMBOL_NAME(BITWIDTH,DIM)                              \
        ( sint(BITWIDTH)        *r,                                      \
          sint(BITWIDTH) const  *a,                                      \
          sint(BITWIDTH) const  *b,                                      \
          sint(BITWIDTH) modulus )                                       \
    {                                                                    \
        unsigned i, j;                                                   \
                                                                         \
        for( i=0; i < 2 * DIM; i++ )                                     \
            r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i)] = 0;             \
                                                                         \
        for( i=0; i < DIM; i++ )                                         \
        {                                                                \
            for( j=0; j < DIM; j++ )                                     \
            {                                                            \
                int64_t tmp =                                            \
                  r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)]               \
                  + ( SCHOOLBOOK_FACTOR(DIM, i+j)                             \
                  * (int64_t) a[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(DIM, i)]    \
                  * (int64_t) b[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(DIM, j)] ); \
                r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)] =          \
                    SCHOOLBOOK_REDUCTION( tmp, modulus );                \
            }                                                            \
        }                                                                \
    }

#define MAKE_INT_SCHOOLBOOK_VARSIZE_(BITWIDTH_IN,BITWIDTH_OUT,DIM)       \
void C_SCHOOLBOOK_VARSIZE_SYMBOL_NAME(BITWIDTH_IN,BITWIDTH_OUT,DIM)      \
        ( sint(BITWIDTH_OUT)        *r,                                  \
          sint(BITWIDTH_IN)  const  *a,                                  \
          sint(BITWIDTH_IN)  const  *b,                                  \
          sint(BITWIDTH_IN) modulus )                                    \
    {                                                                    \
        unsigned i, j;                                                   \
                                                                         \
        for( i=0; i < 2 * DIM; i++ )                                     \
            r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i)] = 0;             \
                                                                         \
        for( i=0; i < DIM; i++ )                                         \
        {                                                                \
            for( j=0; j < DIM; j++ )                                     \
            {                                                            \
                int64_t tmp =                                            \
                  r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)]               \
                  + ( SCHOOLBOOK_FACTOR(DIM, i+j)                             \
                  * (int64_t) a[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(DIM, i)]    \
                  * (int64_t) b[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(DIM, j)] ); \
                r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)] =          \
                    SCHOOLBOOK_REDUCTION( tmp, modulus );                \
            }                                                            \
        }                                                                \
    }

#define MAKE_SCHOOLBOOK_VARSIZE_(BITWIDTH_IN,BITWIDTH_OUT,DIM)           \
void C_SCHOOLBOOK_VARSIZE_SYMBOL_NAME(BITWIDTH_IN,BITWIDTH_OUT,DIM)      \
        ( uint(BITWIDTH_OUT)        *r,                                  \
          uint(BITWIDTH_IN)  const  *a,                                  \
          uint(BITWIDTH_IN)  const  *b,                                  \
          uint(BITWIDTH_IN) modulus )                                    \
    {                                                                    \
        unsigned i, j;                                                   \
                                                                         \
        for( i=0; i < 2 * DIM; i++ )                                     \
            r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i)] = 0;             \
                                                                         \
        for( i=0; i < DIM; i++ )                                         \
        {                                                                \
            for( j=0; j < DIM; j++ )                                     \
            {                                                            \
                uint64_t tmp =                                            \
                  r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)]               \
                  + ( SCHOOLBOOK_FACTOR(DIM, i+j)                             \
                  * (uint64_t) a[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCA(DIM, i)]    \
                  * (uint64_t) b[SCHOOLBOOK_OFFSET_FROM_INDEX_SRCB(DIM, j)] ); \
                r[SCHOOLBOOK_OFFSET_FROM_INDEX_DST(DIM, i+j)] =          \
                    SCHOOLBOOK_REDUCTION( tmp, modulus );                \
            }                                                            \
        }                                                                \
    }

#define MAKE_SCHOOLBOOK(BITWIDTH,DIM) MAKE_SCHOOLBOOK_(BITWIDTH,DIM)
#define MAKE_INT_SCHOOLBOOK(BITWIDTH,DIM) MAKE_INT_SCHOOLBOOK_(BITWIDTH,DIM)

#define MAKE_SCHOOLBOOK_VARSIZE(BITWIDTH_IN,BITWIDTH_OUT,DIM) MAKE_SCHOOLBOOK_VARSIZE_(BITWIDTH_IN,BITWIDTH_OUT,DIM)
#define MAKE_INT_SCHOOLBOOK_VARSIZE(BITWIDTH_IN,BITWIDTH_OUT,DIM) MAKE_INT_SCHOOLBOOK_VARSIZE_(BITWIDTH_IN,BITWIDTH_OUT,DIM)

#endif /* MVE_POLY_ARITHMETIC_TESTS_POLY */
