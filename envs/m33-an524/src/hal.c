
#include <hal.h>

#include <ARMCM33.h>
#include <system_ARMCM33.h>
#include <uart.h>
#include "randombytes.h"

#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static volatile unsigned long long overflowcnt = 0;
void SysTick_Handler(void) { ++overflowcnt; }

uint64_t hal_get_time()
{
  while (1)
  {
    unsigned long long before = overflowcnt;
    unsigned long long result = (before + 1) * 16777216llu - SysTick->VAL;
    if (overflowcnt == before)
    {
      return result;
    }
  }
}

/* Cortex-M33: Use DWT cycle counter (no dedicated PMU) */
void hal_pmu_enable()
{
  CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
  DWT->CYCCNT = 0;
  DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;
}

void hal_pmu_disable() { DWT->CTRL &= ~DWT_CTRL_CYCCNTENA_Msk; }

void hal_pmu_start_pmu_stats(pmu_stats *s)
{
  memset(s, 0, sizeof(*s));
  DWT->CYCCNT = 0;
  SysTick_Config(0xFFFFFFu);
}

void hal_pmu_finish_pmu_stats(pmu_stats *s)
{
  s->systick_cycles = 16777216llu - SysTick->VAL;
  s->pmu_cycles = DWT->CYCCNT;
}

void hal_pmu_send_stats(char *s, pmu_stats const *stats)
{
  printf("%s\n", s);
  printf("- cycles: %lu\n", (unsigned long)stats->pmu_cycles);
  printf("- systick cycles: %lu\n", (unsigned long)stats->systick_cycles);
}

static uint64_t _measure_start = 0;

/* Dependency on standard library:
 * - rand()
 * - printf()
 * - fflush()
 */
#include <stdlib.h>
#include <stdio.h>
#include <stdarg.h>

uint8_t get_random_byte()
{
  uint32_t data;
  randombytes((uint8_t *)&data, sizeof(data));
  return (uint8_t)data;
}

/* Stubs to enable/disable measurements. */
void measure_end()
{
  uint64_t dur = hal_get_time() - _measure_start;
  debug_printf("cycles: %llu\n", dur);
}

void measure_start() { _measure_start = hal_get_time(); }

/* Debugging stubs */

void debug_test_start(const char *testname)
{
  SysTick_Config(0xFFFFFFu);
  printf("%s ... ", testname);
  fflush(stdout);
}

void debug_printf(const char *format, ...)
{
  va_list argp;
  va_start(argp, format);
  vprintf(format, argp);
  va_end(argp);
}

void debug_test_ok() { printf("Ok\n"); }
void debug_test_fail() { printf("FAIL!\n"); }
