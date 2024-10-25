/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <stdlib.h>

#define STATE_SIZE 200
#define REPEAT 100
#define REPEAT_MEDIAN 100


/* Assembly Functions */
/* Reference, bit interlaved */
extern void KeccakF1600_StatePermute_pqm4(void*);
/* To be tested, bit interlaved */
extern void KeccakF1600_StatePermute_old(void*);
/* M7 optimized code by Alexandre Adomnicai */
extern void KeccakP1600_Permute_24rounds(void*);

/* Slothy */
extern void KeccakF1600_StatePermute_opt_m7(void*);
extern void KeccakP1600_Permute_24rounds_opt_m7(void*);
extern void KeccakF1600_StatePermute_old_opt_m7(void*);

void KeccakF1600_StatePermute_part(void*);
void KeccakF1600_StatePermute_part_opt_m7(void*);
void KeccakF1600_StatePermute_part_dummy(void*);

static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH_KECCAKF(var, func)                                         \
    int bench_keccakf_##var()                                                 \
    {                                                                         \
        debug_printf("Keccakf Benchmark for " #func);                         \
        uint64_t t2, t1;                                                      \
        uint64_t cycles[REPEAT_MEDIAN];                                       \
        uint8_t state[STATE_SIZE] __attribute__((aligned(16)));               \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                             \
        {                                                                     \
            state[i] = rand();                                                \
        }                                                                     \
                                                                              \
        /* Warm up */                                                         \
        (func)(state);                                                        \
        for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
        {                                                                     \
            t1 = hal_get_time();                                              \
            for (size_t cnt = 0; cnt < REPEAT; cnt++)                         \
                (func)(state);                                                \
            t2 = hal_get_time();                                              \
            cycles[cnt_median] = (t2 - t1) / REPEAT;                          \
        }                                                                     \
        qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
        debug_printf(#func " repeat %d, %d",                                  \
                     REPEAT *REPEAT_MEDIAN, (cycles[REPEAT_MEDIAN >> 1]));    \
                                                                              \
        return (0);                                                           \
    }

MAKE_BENCH_KECCAKF(ref, KeccakF1600_StatePermute_pqm4)
MAKE_BENCH_KECCAKF(ref_old, KeccakF1600_StatePermute_old)
MAKE_BENCH_KECCAKF(m7, KeccakP1600_Permute_24rounds)

MAKE_BENCH_KECCAKF(opt_m7, KeccakF1600_StatePermute_opt_m7)
MAKE_BENCH_KECCAKF(old_opt_m7, KeccakF1600_StatePermute_old_opt_m7)
MAKE_BENCH_KECCAKF(m7_opt_m7, KeccakP1600_Permute_24rounds_opt_m7)

MAKE_BENCH_KECCAKF(part, KeccakF1600_StatePermute_part)
MAKE_BENCH_KECCAKF(part_opt_m7, KeccakF1600_StatePermute_part_opt_m7)
MAKE_BENCH_KECCAKF(overhead_dummy, KeccakF1600_StatePermute_part_dummy)

#define MAKE_TEST_KECCAKF(var, func, ref_func)                         \
    int test_keccakf_##var()                                           \
    {                                                                  \
        debug_printf("Keccakf for " #func);                            \
        uint64_t t0, t1;                                               \
        char str[100];                                                 \
        char byte_str[8];                                             \
        uint8_t state[STATE_SIZE] __attribute__((aligned(16)));        \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                               \
        {                                                              \
            state[i] = rand();                                         \
        }                                                              \
        uint8_t state_copy[STATE_SIZE] __attribute__((aligned(16)));   \
                                                                       \
        /* Step 1: Reference Keccakf */                                \
        memcpy(state_copy, state, sizeof(state));                      \
        KeccakF1600_StatePermute_pqm4(state_copy);                          \
        /* Step 2: MVE-based Keccakf */                                \
        t0 = hal_get_time();                                           \
        (func)(state);                                                 \
        t1 = hal_get_time();                                           \
        sprintf(str, "t=%llu", (t1 - t0));                             \
        int err = 0;                                                   \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                      \
        {                                                              \
            if (state[i] != state_copy[i])                             \
            {                                                          \
                debug_printf("Test Fail\n");                           \
                sprintf(byte_str, "%x - %x", state[i], state_copy[i]); \
                debug_printf(byte_str);                                \
                err = 1;                                               \
            }                                                          \
        }                                                              \
        if(err) return 1;                                              \
                                                                       \
        debug_printf("Test OK\n");                                     \
        debug_printf(str);                                             \
                                                                       \
        return (0);                                                    \
    }

MAKE_TEST_KECCAKF(pqm4, KeccakF1600_StatePermute_old, KeccakF1600_StatePermute_pqm4)
MAKE_TEST_KECCAKF(m7, KeccakP1600_Permute_24rounds, KeccakF1600_StatePermute_pqm4)

MAKE_TEST_KECCAKF(old_opt_m7, KeccakF1600_StatePermute_old_opt_m7, KeccakF1600_StatePermute_pqm4)

int main(void)
{
    debug_test_start( "Keccak new" );
    /* Test correctness */
    if(test_keccakf_pqm4() != 0){
        return 1;
    }

    if(test_keccakf_m7()) {
        return 1;
    }

    if(test_keccakf_old_opt_m7()) {
        return 1;
    }

    /* Bench */
    bench_keccakf_ref();
    bench_keccakf_ref_old();
    bench_keccakf_m7();
    
    bench_keccakf_opt_m7();
    bench_keccakf_old_opt_m7();
    bench_keccakf_m7_opt_m7();

    bench_keccakf_part();
    bench_keccakf_part_opt_m7();
    bench_keccakf_overhead_dummy();

    debug_test_ok();
    debug_printf( "ALL GOOD!\n" );
    return 0;
}