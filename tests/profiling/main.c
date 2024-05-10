/*
 * Author: Hanno Becker <hannobecker@posteo.de>
 */

/*
 * Some external references to auto-generated assembly.
 */
#include <stdlib.h>
#include <stdint.h>
#include <stdio.h>
#include <string.h>

#include "profiling.h"
#include <hal.h>

MAKE_PROFILE(throughput_ldr_no_inc)
MAKE_PROFILE(latency_add_mul)

int main( void )
{
    hal_setup(CLOCK_BENCHMARK);
    hal_send_str("Profiling");
    hal_send_str( "=========== uArch profiling ===============\n" );
    profile_full();
    /* PROFILING */

    /* profile_latency_add_mul(); */
    
    /*
    profile_throughput_ldr_no_inc();
    debug_printf( "ok\n" ); */

    debug_printf( "\nDone!\n" );
    return(0);
}
