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
extern void KeccakF1600_StatePermute_adomnicai_m4(void *);
/* To be tested, bit interlaved */
extern void KeccakF1600_StatePermute_xkcp(void *);
/* M7 optimized code by Alexandre Adomnicai */
extern void KeccakF1600_StatePermute_adomnicai_m7(void *);

/* Slothy */
extern void KeccakF1600_StatePermute_adomnicai_m7_opt_m7(void *);
extern void KeccakF1600_StatePermute_xkcp_opt_m7(void *);
extern void KeccakF1600_StatePermute_adomnicai_m4_opt_m7(void *);

typedef struct
{
  char name[100];
  uint64_t cycles;
} benchmark_result;

benchmark_result results[100];
int benchmark_cnt = 0;

static void add_benchmark_results(char *name, uint64_t cycles)
{
  if (benchmark_cnt == 100)
  {
    return;
  }

  results[benchmark_cnt].cycles = cycles;
  strncpy(results[benchmark_cnt].name, name, 100);
  benchmark_cnt++;
}

static void dump_benchmarks_tex(void)
{
  for (int i = 0; i < benchmark_cnt; i++)
  {
    debug_printf("\\DefineVar{%s_%s}{%llu}", DEVICE, results[i].name,
                 results[i].cycles);
  }
}

static int cmp_uint64_t(const void *a, const void *b)
{
  return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

#define MAKE_BENCH_KECCAKF(var, func)                                     \
  int bench_keccakf_##var()                                               \
  {                                                                       \
    debug_printf("Keccakf Benchmark for " #func);                         \
    uint64_t t2, t1;                                                      \
    uint64_t cycles[REPEAT_MEDIAN];                                       \
    uint8_t state[STATE_SIZE] __attribute__((aligned(16)));               \
    for (uint32_t i = 0; i < STATE_SIZE; i++)                             \
    {                                                                     \
      state[i] = rand();                                                  \
    }                                                                     \
                                                                          \
    /* Warm up */                                                         \
    (func)(state);                                                        \
    for (size_t cnt_median = 0; cnt_median < REPEAT_MEDIAN; cnt_median++) \
    {                                                                     \
      t1 = hal_get_time();                                                \
      for (size_t cnt = 0; cnt < REPEAT; cnt++)                           \
        (func)(state);                                                    \
      t2 = hal_get_time();                                                \
      cycles[cnt_median] = (t2 - t1) / REPEAT;                            \
    }                                                                     \
    qsort(cycles, REPEAT_MEDIAN, sizeof(uint64_t), cmp_uint64_t);         \
    debug_printf(#func " repeat %d, %d\n", REPEAT *REPEAT_MEDIAN,         \
                 (cycles[REPEAT_MEDIAN >> 1]));                           \
    add_benchmark_results(#var, (cycles[REPEAT_MEDIAN >> 1]));            \
                                                                          \
    return (0);                                                           \
  }

MAKE_BENCH_KECCAKF(keccak_adomnicai_m4, KeccakF1600_StatePermute_adomnicai_m4)
MAKE_BENCH_KECCAKF(keccak_xkcp, KeccakF1600_StatePermute_xkcp)
MAKE_BENCH_KECCAKF(keccak_adomnicai_m7, KeccakF1600_StatePermute_adomnicai_m7)

MAKE_BENCH_KECCAKF(keccak_xkcp_opt_m7, KeccakF1600_StatePermute_xkcp_opt_m7)
MAKE_BENCH_KECCAKF(keccak_adomnicai_m7_opt_m7,
                   KeccakF1600_StatePermute_adomnicai_m7_opt_m7)
MAKE_BENCH_KECCAKF(keccak_adomnicai_m4_opt_m7,
                   KeccakF1600_StatePermute_adomnicai_m4_opt_m7)

#define MAKE_TEST_KECCAKF(var, func, ref_func)                   \
  int test_keccakf_##var()                                       \
  {                                                              \
    debug_printf("Keccakf for " #func);                          \
    char str[100];                                               \
    char byte_str[8];                                            \
    uint8_t state[STATE_SIZE] __attribute__((aligned(16)));      \
    for (uint32_t i = 0; i < STATE_SIZE; i++)                    \
    {                                                            \
      state[i] = rand();                                         \
    }                                                            \
    uint8_t state_copy[STATE_SIZE] __attribute__((aligned(16))); \
                                                                 \
    /* Step 1: Reference Keccakf */                              \
    memcpy(state_copy, state, sizeof(state));                    \
    ref_func(state_copy);                                        \
    /* Step 2: MVE-based Keccakf */                              \
    (func)(state);                                               \
    int err = 0;                                                 \
    for (uint32_t i = 0; i < STATE_SIZE; i++)                    \
    {                                                            \
      if (state[i] != state_copy[i])                             \
      {                                                          \
        debug_printf("Test Fail\n");                             \
        sprintf(byte_str, "%x - %x", state[i], state_copy[i]);   \
        debug_printf(byte_str);                                  \
        err = 1;                                                 \
      }                                                          \
    }                                                            \
    if (err)                                                     \
      return 1;                                                  \
                                                                 \
    debug_printf("Test OK\n");                                   \
    debug_printf(str);                                           \
                                                                 \
    return (0);                                                  \
  }

MAKE_TEST_KECCAKF(keccak_xkcp, KeccakF1600_StatePermute_xkcp,
                  KeccakF1600_StatePermute_adomnicai_m4)
MAKE_TEST_KECCAKF(keccak_adomnicai_m7, KeccakF1600_StatePermute_adomnicai_m7,
                  KeccakF1600_StatePermute_adomnicai_m4)

MAKE_TEST_KECCAKF(keccak_xkcp_opt_m7, KeccakF1600_StatePermute_xkcp_opt_m7,
                  KeccakF1600_StatePermute_adomnicai_m4)
MAKE_TEST_KECCAKF(keccak_adomnicai_m4_opt_m7,
                  KeccakF1600_StatePermute_adomnicai_m4_opt_m7,
                  KeccakF1600_StatePermute_adomnicai_m4)
MAKE_TEST_KECCAKF(keccak_adomnicai_m7_opt_m7,
                  KeccakF1600_StatePermute_adomnicai_m7_opt_m7,
                  KeccakF1600_StatePermute_adomnicai_m4)


int main(void)
{
  debug_test_start("Keccak new");
  /* Test correctness */
  if (test_keccakf_keccak_xkcp() != 0)
  {
    return 1;
  }

  if (test_keccakf_keccak_adomnicai_m7() != 0)
  {
    return 1;
  }

  if (test_keccakf_keccak_xkcp_opt_m7() != 0)
  {
    return 1;
  }

  if (test_keccakf_keccak_adomnicai_m4_opt_m7() != 0)
  {
    return 1;
  }

  if (test_keccakf_keccak_adomnicai_m7_opt_m7() != 0)
  {
    return 1;
  }

  /* Bench */
  bench_keccakf_keccak_adomnicai_m4();
  bench_keccakf_keccak_xkcp();
  bench_keccakf_keccak_adomnicai_m7();

  bench_keccakf_keccak_xkcp_opt_m7();
  bench_keccakf_keccak_adomnicai_m7_opt_m7();
  bench_keccakf_keccak_adomnicai_m4_opt_m7();

  debug_printf("======================");
  dump_benchmarks_tex();
  debug_printf("======================\n");

  debug_test_ok();
  debug_printf("ALL GOOD!\n");
  return 0;
}