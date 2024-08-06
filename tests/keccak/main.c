/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>

#define STATE_SIZE 200
#define REPEAT 1000


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

#define MAKE_BENCH_KECCAKF(var, func)                                \
    int bench_keccakf_##var()                                        \
    {                                                                \
        debug_printf("Keccakf Benchmark for " #func);                          \
        uint64_t t0, t1, total;                                      \
        total = 0;                                                   \
        char str[100];                                               \
        uint8_t state[STATE_SIZE] __attribute__((aligned(16)));      \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                    \
        {                                                            \
            state[i] = rand();                                       \
        }                                                            \
                                                                     \
        /* Warm up */                                                \
        (func)(state);                                               \
        for (size_t cnt = 0; cnt < REPEAT; cnt++)                    \
        {                                                            \
            t0 = hal_get_time();                                     \
            (func)(state);                                           \
            t1 = hal_get_time();                                     \
            total += t1 - t0;                                        \
        }                                                            \
        sprintf(str, "t=%f", total / 1000.0);                        \
        debug_printf(str);                                           \
                                                                     \
        return (0);                                                  \
    }

MAKE_BENCH_KECCAKF(ref, KeccakF1600_StatePermute_pqm4)
MAKE_BENCH_KECCAKF(ref_old, KeccakF1600_StatePermute_old)
MAKE_BENCH_KECCAKF(m7, KeccakP1600_Permute_24rounds)

MAKE_BENCH_KECCAKF(opt_m7, KeccakF1600_StatePermute_opt_m7)
MAKE_BENCH_KECCAKF(old_opt_m7, KeccakF1600_StatePermute_old_opt_m7)
MAKE_BENCH_KECCAKF(m7_opt_m7, KeccakP1600_Permute_24rounds_opt_m7)


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

    /* Bench */
    bench_keccakf_ref();
    bench_keccakf_ref_old();
    bench_keccakf_m7();
    
    bench_keccakf_opt_m7();
    bench_keccakf_old_opt_m7();
    bench_keccakf_m7_opt_m7();

    debug_test_ok();
    debug_printf( "ALL GOOD!\n" );
    return 0;
}