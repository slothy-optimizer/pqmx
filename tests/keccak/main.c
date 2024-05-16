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

#define MAKE_BENCH_KECCAKF(var, func)                                \
    int bench_keccakf_##var()                                        \
    {                                                                \
        hal_send_str("Keccakf Benchmark for " #func);                          \
        uint64_t t0, t1, total;                                      \
        total = 0;                                                   \
        char str[100];                                               \
        uint8_t state[STATE_SIZE] __attribute__((aligned(16)));      \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                    \
        {                                                            \
            state[i] = rand();                                       \
        }                                                            \
        uint8_t state_copy[STATE_SIZE] __attribute__((aligned(16))); \
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
        hal_send_str(str);                                           \
                                                                     \
        return (0);                                                  \
    }

MAKE_BENCH_KECCAKF(ref, KeccakF1600_StatePermute_pqm4)
MAKE_BENCH_KECCAKF(ref_old, KeccakF1600_StatePermute_old)
MAKE_BENCH_KECCAKF(m7, KeccakP1600_Permute_24rounds)

MAKE_BENCH_KECCAKF(opt_m7, KeccakF1600_StatePermute_opt_m7)


#define MAKE_TEST_KECCAKF(var, func, ref_func)                         \
    int test_keccakf_##var()                                           \
    {                                                                  \
        hal_send_str("Keccakf for " #func);                            \
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
        KeccakF1600_StatePermute(state_copy);                          \
        /* Step 2: MVE-based Keccakf */                                \
        t0 = hal_get_time();                                           \
        (func)(state);                                                 \
        t1 = hal_get_time();                                           \
        sprintf(str, "t=%llu", (t1 - t0));                             \
        for (uint32_t i = 0; i < STATE_SIZE; i++)                      \
        {                                                              \
            if (state[i] != state_copy[i])                             \
            {                                                          \
                hal_send_str("Test Fail\n");                           \
                sprintf(byte_str, "%x - %x", state[i], state_copy[i]); \
                hal_send_str(byte_str);                                \
                /* return 1; */                                        \
            }                                                          \
        }                                                              \
                                                                       \
        hal_send_str("Test OK\n");                                     \
        hal_send_str(str);                                             \
                                                                       \
        return (0);                                                    \
    }

MAKE_TEST_KECCAKF(pqm4, KeccakF1600_StatePermute_old, KeccakF1600_StatePermute_pqm4)
MAKE_TEST_KECCAKF(m7, KeccakP1600_Permute_24rounds, KeccakF1600_StatePermute_pqm4)

int main(void)
{
    hal_setup(CLOCK_BENCHMARK);
    hal_send_str("Start Keccak Test\n");
    /* Test correctness */
    test_keccakf_pqm4();
    test_keccakf_m7();

    /* Bench */
    bench_keccakf_ref();
    bench_keccakf_ref_old();
    bench_keccakf_m7();
    
    bench_keccakf_opt_m7();
    
    return 0;
}