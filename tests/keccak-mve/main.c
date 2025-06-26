/*
 * Test and benchmark for MVE Keccak implementations
 * 
 * Bit-interleaving code adapted from:
 * Copyright (c) 2025 Arm Limited
 * SPDX-License-Identifier: Apache-2.0 OR MIT OR ISC
 * 
 */

#define ENABLE_PMU_STATS          /* Do not enable when benching for cycle count */

#if defined(ENABLE_PMU_STATS)
#define REPEAT     1
#else
#define REPEAT  1024
#endif

#include <hal.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#define STATE_SIZE 800  // 200 bytes * 4 for 4-fold batching

/* https://github.com/XKCP/XKCP/blob/master/Standalone/CompactFIPS202/C/TweetableFIPS202.c */
typedef unsigned long long U;
typedef unsigned char C;

#define R(a, n) ((a) << (n) ^ (a) >> (64-(n)))
#define L(i, n) for(U i = 0; i < n; i++)

static void keccakf_reference(U *s)
{
  C RC = 1, r, x, y;
  U t, B[5], Y;

  L(n, 24)
  {
    L(i, 5)
    {
      B[i] = 0;
      L(j, 5)
        B[i] ^= s[i+5*j];
    }

    L(i,5)
    {
      t = B[(i+4)%5] ^ R(B[(i+1)%5], 1);
      L(j, 5)
        s[i+5*j] ^= t;
    }

    t = s[1];
    y = r = 0;
    x = 1;
    L(j, 24)
    {
      r += j + 1;
      Y = 2 * x + 3 * y;
      x = y;
      y = Y % 5;
      Y = s[x+5*y];
      s[x+5*y] = R(t, r % 64);
      t = Y;
    }

    L(j, 5)
    {
      L(i, 5)
        B[i] = s[i+5*j];
      L(i, 5)
        s[i+5*j] = B[i] ^ (~B[(i+1)%5] & B[(i+2)%5]);
    }

    L(j, 7)
      if ((RC = (RC << 1) ^ (113 * (RC >> 7))) & 2)
        *s ^= 1ULL << ((1 << j) - 1);
  }
}

/* Bit-interleaving functions */
static uint32_t bitinterleave_even(uint64_t x)
{
    uint32_t result = 0;
    for (int i = 0; i < 32; i++) {
        if (x & (1ULL << (2 * i))) {
            result |= (1U << i);
        }
    }
    return result;
}

static uint32_t bitinterleave_odd(uint64_t x)
{
    uint32_t result = 0;
    for (int i = 0; i < 32; i++) {
        if (x & (1ULL << (2 * i + 1))) {
            result |= (1U << i);
        }
    }
    return result;
}

static uint64_t bitdeinterleave(uint32_t even, uint32_t odd)
{
    uint64_t result = 0;
    for (int i = 0; i < 32; i++) {
        if (even & (1U << i)) {
            result |= (1ULL << (2 * i));
        }
        if (odd & (1U << i)) {
            result |= (1ULL << (2 * i + 1));
        }
    }
    return result;
}

/* Updated interleave_4fold with integrated bit-interleaving */
static void interleave_4fold(void *state_4x, const uint64_t *state0, const uint64_t *state1, 
                            const uint64_t *state2, const uint64_t *state3) 
{
    uint32_t *state_4xl = (uint32_t *)state_4x;
    uint32_t *state_4xh = (uint32_t *)((uintptr_t)state_4x + 400); 

    for (size_t i = 0; i < 25; i++) {
        // Bit-interleave each 64-bit word and slot together 4 lower/upper 32-bit words
        state_4xl[i*4 + 0] = bitinterleave_even(state0[i]);
        state_4xl[i*4 + 1] = bitinterleave_even(state1[i]);
        state_4xl[i*4 + 2] = bitinterleave_even(state2[i]);
        state_4xl[i*4 + 3] = bitinterleave_even(state3[i]);
        
        state_4xh[i*4 + 0] = bitinterleave_odd(state0[i]);
        state_4xh[i*4 + 1] = bitinterleave_odd(state1[i]);
        state_4xh[i*4 + 2] = bitinterleave_odd(state2[i]);
        state_4xh[i*4 + 3] = bitinterleave_odd(state3[i]);
    }
}

/* Updated deinterleave_4fold with integrated bit-deinterleaving */
static void deinterleave_4fold(void *state_4x, uint64_t *state0, uint64_t *state1, 
                              uint64_t *state2, uint64_t *state3) 
{
    uint32_t *state_4xl = (uint32_t *)state_4x;
    uint32_t *state_4xh = (uint32_t *)((uintptr_t)state_4x + 400); 

    for (size_t i = 0; i < 25; i++) {
        // Extract and bit-deinterleave back to 64-bit words
        state0[i] = bitdeinterleave(state_4xl[i*4 + 0], state_4xh[i*4 + 0]);
        if (state1) state1[i] = bitdeinterleave(state_4xl[i*4 + 1], state_4xh[i*4 + 1]);
        if (state2) state2[i] = bitdeinterleave(state_4xl[i*4 + 2], state_4xh[i*4 + 2]);
        if (state3) state3[i] = bitdeinterleave(state_4xl[i*4 + 3], state_4xh[i*4 + 3]);
    }
}

/* Assembly Functions */
/* Optimized implementations - note they take TWO parameters: state and temp buffer */
extern void mve_keccak_state_permute_4fold_opt_m55(void*, void*);
extern void mve_keccak_state_permute_4fold_opt_m85(void*, void*);

typedef struct
{
    uint32_t systick_cycles;
    uint32_t pmu_cycles;

    uint32_t inst_all;

    uint32_t inst_mve_all;
    uint32_t inst_mve_lsu;
    uint32_t inst_mve_int;
    uint32_t inst_mve_mul;

    uint32_t stall_all;
    uint32_t stall_mve_all;
    uint32_t stall_mve_resource;
} pmu_stats;

void hal_pmu_enable();
void hal_pmu_disable();
void hal_pmu_start_pmu_stats( pmu_stats *s );
void hal_pmu_finish_pmu_stats( pmu_stats *s );
void hal_pmu_send_stats( char *s, pmu_stats const *stats );

void hal_pmu_send_stats_wrapper(pmu_stats *stats)
{
#if defined(ENABLE_PMU_STATS)
    hal_pmu_send_stats("", stats);
#endif
}

#define MAKE_TEST_KECCAK(var, func) \
    int test_keccak_##var() \
    { \
        debug_test_start("Keccak MVE Test for " #func); \
        uint64_t state_4x[4][25] __attribute__((aligned(16))); \
        uint64_t ref_4x[4][25] __attribute__((aligned(16))); \
        uint8_t mve_state[STATE_SIZE] __attribute__((aligned(16))); \
        uint8_t mve_tmp[STATE_SIZE] __attribute__((aligned(16))); \
 \
        /* Setup 4 different randomly initialized input states */ \
        for (int j = 0; j < 4; j++) { \
            for (uint32_t i = 0; i < 25; i++) { \
                state_4x[j][i] = ((uint64_t)rand() << 32) | rand(); \
            } \
        } \
 \
        /* Reference implementation on each state */ \
        for (int j = 0; j < 4; j++) { \
            memcpy(ref_4x[j], state_4x[j], sizeof(uint64_t) * 25); \
            keccakf_reference(ref_4x[j]); \
        } \
 \
        /* MVE implementation with integrated bit-interleaving */ \
        interleave_4fold(mve_state, state_4x[0], state_4x[1], state_4x[2], state_4x[3]); \
        (func)(mve_state, mve_tmp); \
        deinterleave_4fold(mve_state, state_4x[0], state_4x[1], state_4x[2], state_4x[3]); \
 \
        /* Compare results for all 4 states */ \
        if (memcmp(state_4x[0], ref_4x[0], sizeof(uint64_t) * 25) != 0 || \
            memcmp(state_4x[1], ref_4x[1], sizeof(uint64_t) * 25) != 0 || \
            memcmp(state_4x[2], ref_4x[2], sizeof(uint64_t) * 25) != 0 || \
            memcmp(state_4x[3], ref_4x[3], sizeof(uint64_t) * 25) != 0) \
        { \
            debug_test_fail(); \
            return 1; \
        } \
 \
        debug_test_ok(); \
        return (0); \
    }

MAKE_TEST_KECCAK(m55, mve_keccak_state_permute_4fold_opt_m55)
MAKE_TEST_KECCAK(m85, mve_keccak_state_permute_4fold_opt_m85)



#define MAKE_BENCH_KECCAK(var, func) \
int bench_keccak_##var() \
{ \
    uint8_t state_4x[STATE_SIZE] __attribute__((aligned(16))); \
    uint8_t state_4x_tmp[STATE_SIZE] __attribute__((aligned(16))); \
    pmu_stats stats; \
    /* Setup input */ \
    for (uint32_t i = 0; i < STATE_SIZE; i++) \
    { \
        state_4x[i] = rand(); \
    } \
    /* Warm up */ \
    (func)(state_4x, state_4x_tmp); \
    hal_pmu_start_pmu_stats(&stats); \
    for( size_t cnt=0; cnt<REPEAT; cnt++ ) \
        (func)(state_4x, state_4x_tmp); \
    hal_pmu_finish_pmu_stats(&stats); \
    debug_printf( #func ": %f cycles (avg)\n", \
                  (float) stats.pmu_cycles/(REPEAT) ); \
    hal_pmu_send_stats_wrapper(&stats); \
    return( 0 ); \
}

MAKE_BENCH_KECCAK(m55, mve_keccak_state_permute_4fold_opt_m55)
MAKE_BENCH_KECCAK(m85, mve_keccak_state_permute_4fold_opt_m85)

int main(void)
{
    int ret = 0;

    debug_printf("\nKeccak MVE Test!\n");
    

    /* Test correctness */
    debug_printf("Testing M55 optimized implementation...\n");
    ret |= test_keccak_m55();
    if( ret != 0 )
        return( 1 );

    debug_printf("Testing M85 optimized implementation...\n");
    ret |= test_keccak_m85();
    if( ret != 0 )
        return( 1 );

    hal_pmu_enable();
    debug_printf("Keccak MVE Bench!\n");

    /* Benchmark optimized implementations */
    bench_keccak_m55();
    bench_keccak_m85();

    debug_printf("Done!\n");
    hal_pmu_disable();
    debug_printf("ALL GOOD!\n");
    return ret;
}
