#include "utils.h"

#include <errno.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>

#ifdef RA8M1
#include "SEGGER_RTT.h"
#include "hal_data.h"
#elif defined(QEMU_M55)
#include "timeout.h"

int stdout_init(void);
int _write(int file, char *ptr, int len);
#endif

#ifdef __clang__
static int trace_putc(char c, FILE *file) {
    (void)file; /* Not used in this function */
#ifdef RA8M1
    SEGGER_RTT_Write(0, &c, 1);
#elif defined(QEMU_M55)
    _write(STDOUT_FILENO, &c, 1);
#endif
    return c;
}

static int null_getc(FILE *file) {
    (void)file; /* Not used in this function */
    return 0;
}

static FILE __stdio = FDEV_SETUP_STREAM(trace_putc, null_getc, NULL, _FDEV_SETUP_RW);

FILE *const stdin = &__stdio;
__strong_reference(stdin, stdout);
__strong_reference(stdin, stderr);
#endif

void Utils_Init(void) {
#ifdef RA8M1
    SEGGER_RTT_Init();
#elif defined(QEMU_M55)
    stdout_init();
#endif
}

void delay_ms(uint32_t ms) {
#ifdef RA8M1
    R_BSP_SoftwareDelay(ms, BSP_DELAY_UNITS_MILLISECONDS);
#elif defined(QEMU_M55)
    wait_ms(ms);
#endif
}

int utils_putchar(char c) {
#ifdef RA8M1
    return (int)SEGGER_RTT_PutChar(0, c);
#elif defined(QEMU_M55)
    return _write(STDOUT_FILENO, &c, 1);
#endif
}

void utils_exit(int retcode) {
#ifdef RA8M1
    printf("---------- Program exited with return code %d ----------\n", retcode);
    while (1) {
        __asm volatile("NOP");
    }
#elif defined(QEMU_M55)
    int ret[] = {0x20026, retcode};
    __asm__ volatile("" ::: "memory");
    __asm__ volatile(
        "mov  r0, #0x20 \n"
        "mov  r1, %[ret]\n"
        "bkpt #0xAB     \n"
        :
        : [ret] "r"(ret)
        : "r0", "r1");
#else
    exit(retcode);
#endif
}
