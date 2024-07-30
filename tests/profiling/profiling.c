#include <hal.h>
#include "profiling.h"
#include "prefix_ubenchs.h"
#include <stdlib.h>
#include <string.h>

static int cmp_uint64_t(const void *a, const void *b)
{
    return (int)((*((const uint64_t *)a)) - (*((const uint64_t *)b)));
}

unsigned int measure(ubench_t func)
{
    uint64_t t0, t1;
    uint64_t cycles[TEST_COUNT];
    unsigned char foo[1000],foo1[1000],foo2[1000],foo3[1000],foo4[1000];
    for( unsigned cnt=0; cnt < WARMUP_ITERATIONS; cnt++ )
        func(foo,foo1,foo2,foo3,foo4);
    for( unsigned cnt=0; cnt < TEST_COUNT; cnt++ )
    {
        t0 = hal_get_time();
        for( unsigned cntp=0; cntp < ITER_PER_TEST; cntp++ )
        {
            func(foo,foo1,foo2,foo3,foo4);
        }
        t1 = hal_get_time();
        cycles[cnt] = (t1 - t0) / ITER_PER_TEST;
    }

    /* Report median */
    qsort( cycles, TEST_COUNT, sizeof(uint64_t), cmp_uint64_t );
    return (unsigned int)((cycles[TEST_COUNT >> 1]) /
                          UBENCH_PATTERN_REPEATS );
}


void profile_full()
{
    const unsigned maxchars = 80;
    char tmp[maxchars + 1];

    debug_printf( "===== Stepwise profiling =======\n");
    for( unsigned int i=0; i < num_ubenchs_prefix; i++ )
    {
        unsigned int median = measure(ubenchs_prefix[i]);
        median = median % maxchars;
        memset( tmp, '.', maxchars );
        tmp[median] = '*';
        tmp[maxchars] = '\0';
        debug_printf( "[%3u]: %60s %s", i, ubench_prefix_instructions[i], tmp );
    }
}
