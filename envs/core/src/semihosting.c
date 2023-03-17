#if !defined(NO_SEMIHOSTING_EXIT)

#include <stdio.h>
#include <stdint.h>

// TODO(dsprenkels) Currently, we only exit the QEMU host when a the program
// exists sucessfully.  We should also populate some interrupts handlers that
// occur on errors and/or other exception.

// These two syscall values are used at the end of the program, when we want
// to tell the QEMU host that we are done.  I took them from
// <https://github.com/rust-embedded/cortex-m-semihosting/blob/8ab74cdb8c9ab669ded328072447ea6f6054ffe6/src/debug.rs#L25-L50>.
static const uint32_t REPORT_EXCEPTION = 0x18;
static const uint32_t ApplicationExit = 0x20026;

// Do a system call towards QEMU or the debugger.
uint32_t semihosting_syscall(uint32_t nr, const uint32_t arg) {
	__asm__ volatile (
		"mov r0, %[nr]\n"
		"mov r1, %[arg]\n"
		"bkpt 0xAB\n"
		"mov %[nr], r0\n"
	: [nr] "+r" (nr) : [arg] "r" (arg) : "0", "1");
	return nr;
}

// Register a destructor that will call qemu telling them that the program
// has exited successfully.
static void __attribute__ ((destructor)) semihosting_exit(void) {
	semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void NMI_Handler(void) {
  puts("NMI_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void HardFault_Handler(void) {
  puts("HardFault_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void MemManage_Handler(void) {
  puts("MemManage_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void BusFault_Handler(void) {
  puts("BusFault_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void UsageFault_Handler(void) {
  puts("UsageFault_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void SecureFault_Handler(void) {
  puts("SecureFault_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void SVC_Handler(void) {
  puts("SVC_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void DebugMon_Handler(void) {
  puts("DebugMon_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

void PendSV_Handler(void) {
  puts("PendSV_Handler");
  semihosting_syscall(REPORT_EXCEPTION, ApplicationExit);
}

#endif /* !defined(NO_SEMIHOSTING_EXIT) */
