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

#include <stdint.h>

#include <misc.h>
#include <hal.h>

#define BUFSZ_BYTES 2048

/*
 * Some external references to auto-generated assembly.
 */

extern void permute_and_clear_u8 ( uint8_t  *src, uint8_t  *dst );
extern void permute_and_clear_u16( uint16_t *src, uint16_t *dst );
extern void permute_and_clear_u32( uint32_t *src, uint32_t *dst );

/*
 * Test for the codegenerator for multi-source-readers.
 */

#define BITS_TO_BYTES( bits ) ( bits / 8 )

#define GEN_PERMUTATION_TEST( bits )                            \
int run_permute_test_u ## bits ()                               \
{                                                               \
    uint(bits) src[BUFSZ_BYTES / BITS_TO_BYTES(bits)];          \
    uint(bits) dst[BUFSZ_BYTES / BITS_TO_BYTES(bits)];          \
    unsigned i, j;                                              \
    unsigned entries = BUFSZ_BYTES / BITS_TO_BYTES(bits);       \
    int fail = 0;                                               \
    int multiples;                                              \
    unsigned values;                                                 \
                                                                \
    debug_test_start( "Test: " #bits "-bit permutation");       \
                                                                \
    /* Start with identity mapping */                           \
    for( i=0; i < entries; i++ )                                \
        src[i] = i;                                             \
                                                                \
    /* In the case of 8-bit lanes, there will be overlapping    \
     * values. Account for that */                              \
    if( (bits) == 8 )                                           \
    {                                                           \
        multiples = ( entries + 255 ) >> 8;                     \
        values = 256;                                           \
    }                                                           \
    else                                                        \
    {                                                           \
        multiples = 1;                                          \
        values = entries;                                       \
    }                                                           \
                                                                \
    permute_and_clear_u ## bits ( src, dst );                   \
                                                                \
    /* Check (very naively) that dst is a permutation of        \
     * [0, .., entries - 1] and that src has been cleared. */   \
    for( i = 0; i < values; i++ )                               \
    {                                                           \
        int num_found = 0;                                      \
        for( j = 0; j < (unsigned)entries; j++ )                          \
        {                                                       \
            if( dst[j] == i )                                   \
                num_found++;                                    \
        }                                                       \
                                                                \
        if( src[i] != 42 || num_found != multiples )            \
        {                                                       \
            fail = 1;                                           \
            break;                                              \
        }                                                       \
    }                                                           \
                                                                \
    if( fail )                                                  \
    {                                                           \
        debug_test_fail();                                      \
        debug_print_buf_u ## bits ( src, entries, "src" );      \
        debug_print_buf_u ## bits ( dst, entries, "dst" );      \
        return( 1 );                                            \
    }                                                           \
                                                                \
    debug_test_ok();                                            \
    return( 0 );                                                \
}

GEN_PERMUTATION_TEST(8)
GEN_PERMUTATION_TEST(16)
GEN_PERMUTATION_TEST(32)

int main (void)
{
    int ret;

    ret = run_permute_test_u32();
    if( ret != 0 )
        return( 1 );

    ret = run_permute_test_u16();
    if( ret != 0 )
        return( 1 );

    ret = run_permute_test_u8();
    if( ret != 0 )
        return( 1 );

    debug_printf( "ALL GOOD!\n" );
    return( 0 );
}
