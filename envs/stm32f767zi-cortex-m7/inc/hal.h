#ifndef HAL_H
#define HAL_H

#include <stdint.h>
#include <stdlib.h>

enum clock_mode {
    CLOCK_FAST,
    CLOCK_BENCHMARK
};

void hal_setup(const enum clock_mode clock);
void hal_send_str(const char* in);
uint64_t hal_get_time(void);
size_t hal_get_stack_size(void);

#include <stdint.h>

/* Request random data. */
extern uint8_t get_random_byte(void);

/* Stubs to enable/disable measurements.
 *
 * Those stubs can either be defined as macros (which is especially
 * useful when measurement shall be disabled and we don't want to
 * waste code space) or as externally defined functions.
 * In case no measurements are desired, just put
 * ```
 *    #define measure_start() do {} while( 0 )
 *    #define measure_end()   do {} while( 0 )
 * ```
 * in hal_env.h.
 **/
#if !defined(HALPQMX_MEASURE_MACRO)
extern void measure_start(void);
extern void measure_end(void);
#endif /* HALPQMX_MEASURE_MACRO */

/* Debugging stubs
 *
 * Those stubs can either be defined as macros (which is especially
 * useful when debugging shall be disabled and we don't want to waste
 * code space) or as externally defined functions.
 * In case no debugging is desired, just put
 * ```
 * #define debug_test_start(str) do {} while(0)
 * #define debug_printf( ... )   do {} while(0)
 * #define debug_test_ok()       do {} while(0)
 * #define debug_test_fail()     do {} while(0)
 * ```
 * in hal_env.h.
 */
#if !defined(HALPQMX_DEBUG_MACRO)
extern void debug_test_start( const char *testname );
extern void debug_printf(const char * restrict format, ... );
extern void debug_test_ok(void);
extern void debug_test_fail(void);
#endif /* HALPQMX_DEBUG_MACRO */

#endif
