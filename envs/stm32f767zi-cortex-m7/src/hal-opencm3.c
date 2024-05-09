#include "hal.h"
#include <sys/cdefs.h>

#define SERIAL_BAUD 9600

#include <libopencm3/cm3/dwt.h>
#include <libopencm3/cm3/nvic.h>
#include <libopencm3/cm3/systick.h>
#include <libopencm3/stm32/rcc.h>
#include <libopencm3/stm32/gpio.h>
#include <libopencm3/stm32/usart.h>
#include <libopencm3/stm32/flash.h>
#include <libopencm3/stm32/rng.h>
#include <libopencm3/stm32/f7/rcc.h>

#define SERIAL_GPIO GPIOD
#define SERIAL_USART USART3
#define SERIAL_PINS (GPIO8 | GPIO9)
#define STM32



static void clock_setup(enum clock_mode clock)
{

  switch(clock) {
  case CLOCK_BENCHMARK:
    rcc_clock_setup_hsi(&rcc_3v3[RCC_CLOCK_3V3_24MHZ]);
    break;
  case CLOCK_FAST:
  default:
    rcc_clock_setup_hsi(&rcc_3v3[RCC_CLOCK_3V3_216MHZ]);
    break;
  }


  rcc_periph_clock_enable(RCC_RNG);
  rng_enable();
  flash_art_enable();
  flash_prefetch_enable();

}

static void usart_setup(void)
{
  rcc_periph_clock_enable(RCC_GPIOD);
  rcc_periph_clock_enable(RCC_USART3);
  gpio_set_output_options(SERIAL_GPIO, GPIO_OTYPE_OD, GPIO_OSPEED_100MHZ, SERIAL_PINS);
  gpio_set_af(SERIAL_GPIO, GPIO_AF7, SERIAL_PINS);
  gpio_mode_setup(SERIAL_GPIO, GPIO_MODE_AF, GPIO_PUPD_PULLUP, SERIAL_PINS);
  usart_set_baudrate(SERIAL_USART, SERIAL_BAUD);
  usart_set_databits(SERIAL_USART, 8);
  usart_set_stopbits(SERIAL_USART, USART_STOPBITS_1);
  usart_set_mode(SERIAL_USART, USART_MODE_TX_RX);
  usart_set_parity(SERIAL_USART, USART_PARITY_NONE);
  usart_set_flow_control(SERIAL_USART, USART_FLOWCONTROL_NONE);
  usart_disable_rx_interrupt(SERIAL_USART);
  usart_disable_tx_interrupt(SERIAL_USART);
  usart_enable(SERIAL_USART);
}

static void systick_setup(void)
{
  /* Systick is always the same on libopencm3 */
  systick_set_clocksource(STK_CSR_CLKSOURCE_AHB);
  systick_set_reload(0xFFFFFFu);
  systick_interrupt_enable();
  systick_counter_enable();
}
static volatile unsigned long long overflowcnt = 0;
void hal_setup(const enum clock_mode clock)
{
  clock_setup(clock);
  usart_setup();
  systick_setup();

  // wait for the first systick overflow
  // improves reliability of the benchmarking scripts since it makes it much
  // less likely that the host will miss the start of the output
  unsigned long long old = overflowcnt;
  while(old == overflowcnt);
}

void hal_send_str(const char* in)
{
  const char* cur = in;
  while (*cur) {
    usart_send_blocking(SERIAL_USART, *cur);
    cur += 1;
  }
  usart_send_blocking(SERIAL_USART, '\n');
}

void sys_tick_handler(void)
{
  ++overflowcnt;
}

uint64_t hal_get_time()
{
  while (true) {
    unsigned long long before = overflowcnt;
    unsigned long long result = (before + 1) * 16777216llu - systick_get_value();
    if (overflowcnt == before) {
      return result;
    }
  }
}

/* End of BSS is where the heap starts (defined in the linker script) */
extern char end;
static char* heap_end = &end;
void* __wrap__sbrk (int incr);
void* __wrap__sbrk (int incr)
{
  char* prev_heap_end;

  prev_heap_end = heap_end;
  heap_end += incr;

  return (void *) prev_heap_end;
}

size_t hal_get_stack_size(void)
{
  register char* cur_stack;
	__asm__ volatile ("mov %0, sp" : "=r" (cur_stack));
  return cur_stack - heap_end;
}
