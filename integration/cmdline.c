/*
 * Copyright (c) The mldsa-native project authors
 * SPDX-License-Identifier: Apache-2.0 OR ISC OR MIT
 */
#include <stddef.h>
#include <stdint.h>

typedef struct cmdline_s
{
  int argc;
  char *argv[];
} cmdline_t;

#ifndef CMDLINE_BASE_ADDR
#define CMDLINE_BASE_ADDR 0x70000
#endif
#define CMDLINE_ADDR ((cmdline_t *)CMDLINE_BASE_ADDR)

/* Provide a prototype for the real main that the C library expects. */
extern int __real_main(int argc, char *argv[]);
int __wrap_main(int unused_argc, char *unused_argv[]);

#ifdef SEMIHOSTING
#define SYS_EXIT_EXTENDED 0x20
#define ADP_Stopped_ApplicationExit 0x20026
extern void semihosting_syscall(int32_t opnr, int32_t param);
void semihosting_exit_with_rc(int rc);

void semihosting_exit_with_rc(int rc)
{
  struct exit_code_s
  {
    int32_t reason_code;
    int32_t return_code;
  } s = {ADP_Stopped_ApplicationExit, rc};
  semihosting_syscall(SYS_EXIT_EXTENDED, (int32_t)(void *)&s);
}
#endif

/* Wrap main: build argc/argv from cmdline and forward to __real_main. */
int __wrap_main(int unused_argc, char *unused_argv[])
{
  (void)unused_argc;
  (void)unused_argv;
  cmdline_t *cmdline = (cmdline_t *)CMDLINE_ADDR;
  int rc = __real_main(cmdline->argc, cmdline->argv);
  semihosting_exit_with_rc(rc);
  return rc;
}
