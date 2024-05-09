/*
 * Some external references to auto-generated assembly.
 */

#include <hal.h>
// #include <stdint.h>

// #include <string.h>
// #include <stdlib.h>
// #include <time.h>

int main(void)
{
    int ret = 0;
    while(1)
        hal_send_str("test\n");

    return( ret );
}
