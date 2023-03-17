/*
 * Copyright (c) 2021 Arm Limited
 * SPDX-License-Identifier: MIT
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 *
 */

#include <hal.h>
#include <misc.h>

#include <string.h>
#include <stdlib.h>
#include <time.h>

#include "ct.h"

/*
 * Configure which tests to build and run
 *
 * Comment out tests you don't need, and they'll be
 * removed at compile-time. This is useful to generate
 * minimal test images, esp. if simulation is slow.
 */
#define CHECK_CRT_S32_SINGLE
#define TEST_CT_TABLE_LOOKUP


int test_ct_table_lookup()
{
    uint8_t tbl[CT_SZ_TABLE];
    uint8_t entry[CT_SZ_ENTRY];

    debug_test_start( "Test constant time table lookup" );

    for( unsigned e_idx=0; e_idx < CT_NUM_ENTRY; e_idx++ )
    {
        uint8_t * cur_entry = tbl + e_idx * CT_SZ_ENTRY;
        for( unsigned i=0; i < CT_SZ_ENTRY; i++ )
            cur_entry[i] = ( e_idx + i );
    }

    unsigned lookup_idx = 12;
    debug_printf( "Lookup index: %u\n", lookup_idx );

    ct_table_lookup( entry, tbl, lookup_idx );

    for( unsigned i=0; i < CT_SZ_ENTRY; i++ )
    {
        if( entry[i] != (unsigned char)( lookup_idx + i ) )
        {
            debug_printf( "Failure at index %u: %u != %u\n",
                          i, entry[i], (unsigned)( (unsigned char)( lookup_idx + i ) ) );
            debug_test_fail();
            return( 1 );
        }
    }

    debug_test_ok();
    return( 0 );
}

int main(void)
{
    int ret = 0;

#if defined(TEST_CT_TABLE_LOOKUP)
    ret |= test_ct_table_lookup();
#endif /* TEST_CT_LOOKUP */

    return( 0 );
}
