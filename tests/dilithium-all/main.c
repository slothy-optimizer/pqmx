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

void pqcrystals_dilithium_ntt(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_ntt_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_invntt_tomont(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_invntt_tomont_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void __asm_asymmetric_mul_257_16(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void __asm_asymmetric_mul_257_16_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void __asm_point_mul_257_16(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void __asm_point_mul_257_16_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_caddq(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_caddq_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void __asm_fnt_257(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void __asm_fnt_257_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void __asm_ifnt_257(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void __asm_ifnt_257_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void small_invntt_asm_769(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void small_invntt_asm_769_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void small_ntt_asm_769(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void small_ntt_asm_769_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void small_asymmetric_mul_asm_769(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void small_asymmetric_mul_asm_769_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void small_pointmul_asm_769(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void small_pointmul_asm_769_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_pointwise_acc_montgomery(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_pointwise_montgomery(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

void pqcrystals_dilithium_asm_reduce32(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_asm_reduce32_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_small_asm_reduce32_central(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);
void pqcrystals_dilithium_small_asm_reduce32_central_opt_m7(int32_t *, int32_t *, int32_t *, int32_t *, int32_t *);

#define NTT_LAYERS             8
#define NTT_SIZE               (1u << NTT_LAYERS)
#define NTT_ROOT_ORDER         (2 * NTT_SIZE)
#define NTT_INCOMPLETE_LAYERS  8
#define NTT_INCOMPLETE_SIZE    (1u << NTT_INCOMPLETE_LAYERS)
#define NTT_LAYER_GAP          ( NTT_LAYERS - NTT_INCOMPLETE_LAYERS )
#define NTT_LAYER_STRIDE       (1u << NTT_LAYER_GAP )

/*
 * Test cases
 */

int32_t modulus         = 8380417;

#define MAKE_TEST_FWD(var,func,ref_func,rev4)                                        \
int test_ ## var ()                                                     \
{                                                                           \
    /* debug_test_start( "Test for " #func );*/                         \
    debug_printf("Test for " #func);                                     \
    int32_t src[NTT_SIZE]      __attribute__((aligned(16)));                \
    int32_t src1[NTT_SIZE] __attribute__((aligned(16)));                  \
    int32_t src2[NTT_SIZE] __attribute__((aligned(16)));                  \
    int32_t src3[NTT_SIZE] __attribute__((aligned(16)));                  \
    int32_t src4[NTT_SIZE] __attribute__((aligned(16)));                  \
    int32_t src_copy[NTT_SIZE] __attribute__((aligned(16)));                \
                                                                            \
    /* Setup input */                                                       \
    fill_random_u32( (uint32_t*) src, NTT_SIZE );                           \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                           \
                                                                            \
    /* Step 1: Reference NTT */                                             \
    memcpy( src_copy, src, sizeof( src ) );                                 \
    ref_func( src_copy, src1, src2, src3, src4 );                                                  \
    mod_reduce_buf_s32( src_copy, NTT_SIZE, modulus );                      \
                                                                            \
                                                                            \
    /* Step 2: MVE-based NTT */                                             \
    (func)( src, src1, src2, src3, src4 );                                                          \
                                                                            \
    mod_reduce_buf_s32( src, NTT_SIZE, modulus );                           \
    if( compare_buf_u32( (uint32_t const*) src, (uint32_t const*) src_copy, \
                         NTT_SIZE ) != 0 )                                  \
    {                                                                       \
        debug_print_buf_s32( src_copy, NTT_SIZE, "Reference" );             \
        debug_print_buf_s32( src, NTT_SIZE, "This" );                        \
        debug_test_fail();                                                  \
        return( 1 );                                                        \
    }                                                                       \
    debug_test_ok();                                                        \
                                                                            \
    return( 0 );                                                            \
}

/* Check against pqm4 code */
MAKE_TEST_FWD(ntt_pqm4, pqcrystals_dilithium_ntt, pqcrystals_dilithium_ntt, 0)
MAKE_TEST_FWD(ntt_pqm4_opt, pqcrystals_dilithium_ntt_opt_m7, pqcrystals_dilithium_ntt, 0)

MAKE_TEST_FWD(intt_pqm4, pqcrystals_dilithium_invntt_tomont, pqcrystals_dilithium_invntt_tomont, 0)
MAKE_TEST_FWD(intt_pqm4_opt, pqcrystals_dilithium_invntt_tomont_opt_m7, pqcrystals_dilithium_invntt_tomont, 0)

MAKE_TEST_FWD(asymmetric_mul_257_16_pqm4, __asm_asymmetric_mul_257_16, __asm_asymmetric_mul_257_16, 0)
MAKE_TEST_FWD(asymmetric_mul_257_16_pqm4_opt, __asm_asymmetric_mul_257_16_opt_m7, __asm_asymmetric_mul_257_16, 0)

MAKE_TEST_FWD(point_mul_257_16_pqm4, __asm_point_mul_257_16, __asm_point_mul_257_16, 0)
MAKE_TEST_FWD(point_mul_257_16_pqm4_opt, __asm_point_mul_257_16_opt_m7, __asm_point_mul_257_16, 0)

MAKE_TEST_FWD(caddq_pqm4, pqcrystals_dilithium_asm_caddq, pqcrystals_dilithium_asm_caddq, 0)
MAKE_TEST_FWD(caddq_pqm4_opt, pqcrystals_dilithium_asm_caddq_opt_m7, pqcrystals_dilithium_asm_caddq, 0)

MAKE_TEST_FWD(fnt_257_pqm4, __asm_fnt_257, __asm_fnt_257, 0)
MAKE_TEST_FWD(fnt_257_pqm4_opt, __asm_fnt_257_opt_m7, __asm_fnt_257_opt_m7, 0)

MAKE_TEST_FWD(ifnt_257_pqm4, __asm_ifnt_257, __asm_ifnt_257, 0)
MAKE_TEST_FWD(ifnt_257_pqm4_opt, __asm_ifnt_257_opt_m7, __asm_ifnt_257_opt_m7, 0)

MAKE_TEST_FWD(intt_769_pqm4, small_invntt_asm_769, small_invntt_asm_769, 0)
MAKE_TEST_FWD(intt_769_pqm4_opt, small_invntt_asm_769_opt_m7, small_invntt_asm_769, 0)

MAKE_TEST_FWD(ntt_769_pqm4, small_ntt_asm_769, small_ntt_asm_769, 0)
MAKE_TEST_FWD(ntt_769_pqm4_opt, small_ntt_asm_769_opt_m7, small_ntt_asm_769, 0)

MAKE_TEST_FWD(asymmetric_mul_769_pqm4, small_asymmetric_mul_asm_769, small_asymmetric_mul_asm_769, 0)
MAKE_TEST_FWD(asymmetric_mul_769_pqm4_opt, small_asymmetric_mul_asm_769_opt_m7, small_asymmetric_mul_asm_769, 0)

MAKE_TEST_FWD(pointmul_769_pqm4, small_pointmul_asm_769, small_pointmul_asm_769, 0)
MAKE_TEST_FWD(pointmul_769_pqm4_opt, small_pointmul_asm_769_opt_m7, small_pointmul_asm_769, 0)

MAKE_TEST_FWD(pointwise_acc_montgomery_pqm4, pqcrystals_dilithium_asm_pointwise_acc_montgomery, pqcrystals_dilithium_asm_pointwise_acc_montgomery, 0)
MAKE_TEST_FWD(pointwise_acc_montgomery_pqm4_opt, pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7, pqcrystals_dilithium_asm_pointwise_acc_montgomery, 0)

MAKE_TEST_FWD(pointwise_montgomery_pqm4, pqcrystals_dilithium_asm_pointwise_montgomery, pqcrystals_dilithium_asm_pointwise_montgomery, 0)
MAKE_TEST_FWD(pointwise_montgomery_pqm4_opt, pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7, pqcrystals_dilithium_asm_pointwise_montgomery, 0)

MAKE_TEST_FWD(reduce32_pqm4, pqcrystals_dilithium_asm_reduce32, pqcrystals_dilithium_asm_reduce32, 0)
MAKE_TEST_FWD(reduce32_pqm4_opt, pqcrystals_dilithium_asm_reduce32_opt_m7, pqcrystals_dilithium_asm_reduce32, 0)

MAKE_TEST_FWD(reduce32_central_pqm4, pqcrystals_dilithium_small_asm_reduce32_central, pqcrystals_dilithium_small_asm_reduce32_central, 0)
MAKE_TEST_FWD(reduce32_central_pqm4_opt, pqcrystals_dilithium_small_asm_reduce32_central_opt_m7, pqcrystals_dilithium_small_asm_reduce32_central, 0)

static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH(var, func)                                                 \
    int bench_##var()                                                         \
    {                                                                         \
        uint64_t t1, t2;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        int32_t src[NTT_SIZE] __attribute__((aligned(16)));                   \
        int32_t src1[NTT_SIZE] __attribute__((aligned(16)));                  \
        int32_t src2[NTT_SIZE] __attribute__((aligned(16)));                  \
        int32_t src3[NTT_SIZE] __attribute__((aligned(16)));                  \
        int32_t src4[NTT_SIZE] __attribute__((aligned(16)));                  \
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
        debug_printf(#func " repeat %d, %d",                                  \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
        return (0);                                                           \
    }

/*MAKE_BENCH(ref,ntt_s32_C)*/
MAKE_BENCH(ntt_pqm4,pqcrystals_dilithium_ntt)
MAKE_BENCH(ntt_pqm4_opt,pqcrystals_dilithium_ntt_opt_m7)

MAKE_BENCH(intt_pqm4,pqcrystals_dilithium_invntt_tomont)
MAKE_BENCH(intt_pqm4_opt,pqcrystals_dilithium_invntt_tomont_opt_m7)

MAKE_BENCH(asymmetric_mul_257_16_pqm4,__asm_asymmetric_mul_257_16)
MAKE_BENCH(asymmetric_mul_257_16_pqm4_opt,__asm_asymmetric_mul_257_16_opt_m7)

MAKE_BENCH(point_mul_257_16_pqm4,__asm_point_mul_257_16)
MAKE_BENCH(point_mul_257_16_pqm4_opt,__asm_point_mul_257_16_opt_m7)

MAKE_BENCH(caddq_pqm4,pqcrystals_dilithium_asm_caddq)
MAKE_BENCH(caddq_pqm4_opt,pqcrystals_dilithium_asm_caddq_opt_m7)

MAKE_BENCH(fnt_257_pqm4,__asm_fnt_257)
MAKE_BENCH(fnt_257_pqm4_opt,__asm_fnt_257_opt_m7)

MAKE_BENCH(ifnt_257_pqm4,__asm_ifnt_257)
MAKE_BENCH(ifnt_257_pqm4_opt,__asm_ifnt_257_opt_m7)

MAKE_BENCH(intt_769_pqm4,small_invntt_asm_769)
MAKE_BENCH(intt_769_pqm4_opt,small_invntt_asm_769_opt_m7)

MAKE_BENCH(ntt_769_pqm4,small_ntt_asm_769)
MAKE_BENCH(ntt_769_pqm4_opt,small_ntt_asm_769_opt_m7)

MAKE_BENCH(asymmetric_mul_769_pqm4,small_asymmetric_mul_asm_769)
MAKE_BENCH(asymmetric_mul_769_pqm4_opt,small_asymmetric_mul_asm_769_opt_m7)

MAKE_BENCH(pointmul_769_pqm4,small_pointmul_asm_769)
MAKE_BENCH(pointmul_769_pqm4_opt,small_pointmul_asm_769_opt_m7)

MAKE_BENCH(pointwise_acc_montgomery_pqm4,pqcrystals_dilithium_asm_pointwise_acc_montgomery)
MAKE_BENCH(pointwise_acc_montgomery_pqm4_opt,pqcrystals_dilithium_asm_pointwise_acc_montgomery_opt_m7)

MAKE_BENCH(pointwise_montgomery_pqm4,pqcrystals_dilithium_asm_pointwise_montgomery)
MAKE_BENCH(pointwise_montgomery_pqm4_opt,pqcrystals_dilithium_asm_pointwise_montgomery_opt_m7)

MAKE_BENCH(reduce32_pqm4,pqcrystals_dilithium_asm_reduce32)
MAKE_BENCH(reduce32_pqm4_opt,pqcrystals_dilithium_asm_reduce32_opt_m7)

MAKE_BENCH(reduce32_central_pqm4,pqcrystals_dilithium_small_asm_reduce32_central)
MAKE_BENCH(reduce32_central_pqm4_opt,pqcrystals_dilithium_small_asm_reduce32_central_opt_m7)

int main(void)
{
    int ret = 0;
    debug_test_start( "\nDilithium All Test!\n" );

    /* Test cases */
    if( test_ntt_pqm4() != 0 ){return( 1 );}
    if( test_ntt_pqm4_opt() != 0 ){return( 1 );}
    if( test_intt_pqm4() != 0 ){return( 1 );}
    if( test_intt_pqm4_opt() != 0 ){return( 1 );}
    if( test_asymmetric_mul_257_16_pqm4() != 0 ){return( 1 );}
    if( test_asymmetric_mul_257_16_pqm4_opt() != 0 ){return( 1 );}
    if( test_point_mul_257_16_pqm4() != 0 ){return( 1 );}
    if( test_point_mul_257_16_pqm4_opt() != 0 ){return( 1 );}
    if( test_caddq_pqm4() != 0 ){return( 1 );}
    if( test_caddq_pqm4_opt() != 0 ){return( 1 );}
    if( test_fnt_257_pqm4() != 0 ){return( 1 );}
    if( test_fnt_257_pqm4_opt() != 0 ){return( 1 );}
    if( test_ifnt_257_pqm4() != 0 ){return( 1 );}
    if( test_ifnt_257_pqm4_opt() != 0 ){return( 1 );}
    if( test_intt_769_pqm4() != 0 ){return( 1 );}
    if( test_intt_769_pqm4_opt() != 0 ){return( 1 );}
    if( test_ntt_769_pqm4() != 0 ){return( 1 );}
    if( test_ntt_769_pqm4_opt() != 0 ){return( 1 );}
    if( test_asymmetric_mul_769_pqm4() != 0 ){ return( 1 ); }
    if( test_asymmetric_mul_769_pqm4_opt() != 0 ){ return( 1 ); }
    if( test_pointmul_769_pqm4() != 0 ){ return( 1 ); }
    if( test_pointmul_769_pqm4_opt() != 0 ){ return( 1 ); }
    if( test_pointwise_acc_montgomery_pqm4() != 0 ){ return( 1 ); }
    if( test_pointwise_acc_montgomery_pqm4_opt() != 0 ){ return( 1 ); }
    if( test_reduce32_pqm4() != 0 ){ return( 1 ); }
    if( test_reduce32_pqm4_opt() != 0 ){ return( 1 ); }
    if( test_reduce32_central_pqm4() != 0 ){ return( 1 ); }
    if( test_reduce32_central_pqm4_opt() != 0 ){ return( 1 ); }


    bench_ntt_pqm4();
    bench_ntt_pqm4_opt();

    bench_intt_pqm4();
    bench_intt_pqm4_opt();

    bench_asymmetric_mul_257_16_pqm4();
    bench_asymmetric_mul_257_16_pqm4_opt();

    bench_point_mul_257_16_pqm4();
    bench_point_mul_257_16_pqm4_opt();

    bench_caddq_pqm4();
    bench_caddq_pqm4_opt();

    bench_fnt_257_pqm4();
    bench_fnt_257_pqm4_opt();

    bench_ifnt_257_pqm4();
    bench_ifnt_257_pqm4_opt();

    bench_intt_769_pqm4();
    bench_intt_769_pqm4_opt();

    bench_ntt_769_pqm4();
    bench_ntt_769_pqm4_opt();

    bench_asymmetric_mul_769_pqm4();
    bench_asymmetric_mul_769_pqm4_opt();

    bench_pointmul_769_pqm4();
    bench_pointmul_769_pqm4_opt();

    bench_pointwise_acc_montgomery_pqm4();
    bench_pointwise_acc_montgomery_pqm4_opt();

    bench_pointwise_montgomery_pqm4();
    bench_pointwise_montgomery_pqm4_opt();

    bench_reduce32_pqm4();
    bench_reduce32_pqm4_opt();

    bench_reduce32_central_pqm4();
    bench_reduce32_central_pqm4_opt();


    debug_printf( "Done!\n" );
    debug_printf( "ALL GOOD!\n" );
    return( ret );
}
