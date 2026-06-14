/*
 * Copyright (c) The pqmx project authors
 * Copyright (c) Arm Ltd.
 * SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT
 *
 * Board init and main() wrapper for the NUCLEO-N657X0-Q RAM-loaded tests.
 *
 * pqmx tests are plain `int main(void)` programs that signal success by
 * printing "ALL GOOD!"; there is no argv blob and no exit sentinel. The
 * wrapper prepares the RAM-resident runtime (cache, clock, FLEXMEM layout
 * check, RAM stdout capture) and then forwards to the real test main. After
 * main returns, execution stops at a breakpoint so the host can harvest the
 * captured stdout over GDB.
 */
#include <stddef.h>
#include <stdint.h>
#include <stdio.h>
#include "main.h"
#include "semihosting_syscall.h"
#include "stm32n6xx.h"
#include "stm32n6xx_hal.h"
#include "stm32n6xx_it.h"

void nucleo_flexmem_layout_check(void);

extern unsigned char _ebss[];
extern unsigned char __StackLimit[];
extern unsigned char _estack[];

/* Zero the DTCM heap/stack region so DTCM ECC is initialized before use. */
__attribute__((noinline)) static void nucleo_init_dtcm_ecc(void)
{
  uintptr_t sp;
  __asm__ volatile("mov %0, sp" : "=r"(sp));
  sp = (sp - 64U) & ~(uintptr_t)31U;
  uintptr_t heap_start = ((uintptr_t)_ebss + 31U) & ~(uintptr_t)31U;
  uintptr_t heap_end = (uintptr_t)__StackLimit & ~(uintptr_t)31U;
  if (heap_start < heap_end)
  {
    for (volatile uint32_t *ptr = (volatile uint32_t *)heap_start;
         (uintptr_t)ptr < heap_end; ptr++)
    {
      *ptr = 0;
    }
  }

  uintptr_t stack_start = ((uintptr_t)__StackLimit + 31U) & ~(uintptr_t)31U;
  uintptr_t stack_end = sp;
  if (stack_end > (uintptr_t)_estack)
  {
    stack_end = (uintptr_t)_estack;
  }
  for (volatile uint32_t *ptr = (volatile uint32_t *)stack_start;
       (uintptr_t)ptr < stack_end; ptr++)
  {
    *ptr = 0;
  }
  __DSB();
}

/* Provide a prototype for the real main that the C library expects. */
extern int __real_main(int argc, char *argv[]);
int __wrap_main(int unused_argc, char *unused_argv[]);

__attribute__((noreturn)) static void nucleo_exit(void)
{
  fflush(stdout);
  fflush(stderr);
  SCB_CleanDCache();
  __DSB();
  __ISB();
  /* Stop here so the host's GDB batch can dump the RAM stdout capture. */
  __BKPT(0);
  while (1)
  {
    __WFI();
  }
}

void _exit(int status)
{
  (void)status;
  nucleo_exit();
}

void Error_Handler(void) { HardFault_Handler(); }

int __wrap_main(int unused_argc, char *unused_argv[])
{
  (void)unused_argc;
  (void)unused_argv;
  nucleo_init_dtcm_ecc();
  nucleo_stdio_init();
  SCB_EnableICache();
  SCB_EnableDCache();
  HAL_Init();
  SystemClock_Config();
  nucleo_flexmem_layout_check();

  (void)__real_main(0, NULL);
  nucleo_exit();
}
