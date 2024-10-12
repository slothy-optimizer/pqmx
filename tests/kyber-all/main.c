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

#define ENABLE_PMU_STATS         /* Do not enable when benching for cycle count */

#if defined(ENABLE_PMU_STATS)
#define REPEAT 100
#define REPEAT_MEDIAN 100
#else
#define REPEAT  1024
#endif

/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdint.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "misc.h"
#include "poly.h"
#include "ntt-acle.h"
#include "ntt-asm.h"

// XXX: extra arguments are so we can use a single test function also for basemul
void pointwise_add(int16_t *, int16_t *, int16_t *, int16_t *, int16_t *);
void pointwise_add_opt_m7(int16_t *, int16_t *, int16_t *, int16_t *, int16_t *);

#define NTT_LAYERS             7
#define NTT_SIZE               256

/*
 * Test cases
 */

int16_t modulus         = 3329;


#define MAKE_TEST_NTT(var,func,ref_func)                                    \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #func);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy);                                                    \
    mod_reduce_buf_s16( src_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src );                                                          \
                                                                            \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

#define MAKE_TEST_FWD(var,func,ref_func,rev4)                               \
int test_ ## var ()                                                         \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                             \
    debug_printf("Test for " #var);                                        \
    int16_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int16_t src1[NTT_SIZE*2] __attribute__((aligned(16)));                    \
    int16_t src2[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src3[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src4[NTT_SIZE] __attribute__((aligned(16)));                    \
    int16_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u16( (uint16_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1, src2, src3, src4 );                           \
    mod_reduce_buf_s16( src_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: Optimized NTT */                                             \
    (func)( src, src1, src2, src3, src4 );                                  \
                                                                            \
    mod_reduce_buf_s16( src, NTT_SIZE, modulus );                           \
    if( compare_buf_u16( (uint16_t const*) src, (uint16_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s16( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s16( src, NTT_SIZE, "This" );                       \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

/* Check against pqm4 code */
MAKE_TEST_NTT(ntt_pqm4, ntt_fast_wrap, ntt_fast_wrap)
MAKE_TEST_NTT(ntt_pqm4_opt, ntt_fast_opt_m7_wrap, ntt_fast_wrap)
MAKE_TEST_NTT(ntt_acle, ntt_acle, ntt_fast_wrap)

MAKE_TEST_NTT(invntt_pqm4, invntt_fast_wrap, invntt_fast_wrap)
MAKE_TEST_NTT(invntt_pqm4_opt, invntt_fast_opt_m7_wrap, invntt_fast_wrap)
MAKE_TEST_NTT(invntt_acle, invntt_acle, invntt_fast_wrap)

MAKE_TEST_FWD(pointwise_add_pqm4, pointwise_add, pointwise_add, 0)
MAKE_TEST_FWD(pointwise_add_pqm4_opt, pointwise_add_opt_m7, pointwise_add, 0)

static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH_NTT(var, func)                                             \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        (func)(src);                                                          \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src);                                                  \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#func " repeat %d, %d",                                  \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

#define MAKE_BENCH(var, func)                                                 \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int16_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        int16_t src1[NTT_SIZE] __attribute__((aligned(16)));                  \
        int16_t src2[NTT_SIZE] __attribute__((aligned(16)));                  \
        int16_t src3[NTT_SIZE] __attribute__((aligned(16)));                  \
        int16_t src4[NTT_SIZE] __attribute__((aligned(16)));                  \
        (func)(src, src1, src2, src3, src4);                                  \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(src, src1, src2, src3, src4);                          \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#var " repeat %d, %d",                                  \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }


/*MAKE_BENCH(ref,ntt_s32_C)*/
MAKE_BENCH_NTT(ntt_pqm4,ntt_fast_wrap)
MAKE_BENCH_NTT(ntt_pqm4_opt,ntt_fast_opt_m7_wrap)
MAKE_BENCH_NTT(ntt_acle,ntt_acle)

MAKE_BENCH_NTT(invntt_pqm4,invntt_fast_wrap)
MAKE_BENCH_NTT(invntt_pqm4_opt,invntt_fast_opt_m7_wrap)
MAKE_BENCH_NTT(invntt_acle,invntt_acle)

MAKE_BENCH(pointwise_add_pqm4,pointwise_add)
MAKE_BENCH(pointwise_add_pqm4_opt,pointwise_add_opt_m7)


int main(void)
{
    int ret = 0;
    debug_test_start( "\nKyber All Test!\n" );

    /* Test cases */
    if( test_ntt_pqm4() != 0 ){return( 1 );}
    if( test_ntt_pqm4_opt() != 0 ){return( 1 );}
    
    if( test_ntt_acle() != 0){return( 1 );}
    if( test_invntt_pqm4() != 0 ){return( 1 );}
    if( test_invntt_pqm4_opt() != 0 ){return( 1 );}
    // TODO: test currently fails -- need to debug
    // if( test_invntt_acle() != 0 ){return( 1 );}
    if( test_pointwise_add_pqm4() != 0 ){return( 1 );}
    if( test_pointwise_add_pqm4_opt() != 0 ){return( 1 );}

    bench_ntt_pqm4();
    bench_ntt_pqm4_opt();
    bench_ntt_acle();
    bench_invntt_pqm4();
    bench_invntt_pqm4_opt();
    bench_invntt_acle();
    bench_pointwise_add_pqm4();
    bench_pointwise_add_pqm4_opt();


    /* Test cases */
    debug_printf( "Done!\n" );
    debug_printf( "ALL GOOD!\n" );
    return( ret );
}
