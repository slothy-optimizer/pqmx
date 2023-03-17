
#include <hal.h>

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
    return( rand() );
}

/* Stubs to enable/disable measurements. */
void measure_end()
{
    asm volatile( "DBG #9" : : : "memory" );
}

void measure_start()
{
    asm volatile( "DBG #1" : : : "memory" );
}

/* Debugging stubs */

void debug_test_start( const char *testname )
{
    printf( "%s ... ", testname );
    fflush( stdout );
}

void debug_printf(const char * format, ... )
{
    va_list argp;
    va_start( argp, format );
    vprintf( format, argp );
    va_end( argp );
}

void debug_test_ok()   { printf( "Ok\n"    ); }
void debug_test_fail() { printf( "FAIL!\n" ); }
