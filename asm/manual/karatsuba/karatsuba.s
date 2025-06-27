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

#include "karatsuba_const.h"

.syntax unified

/* Template:
 *
 * .type FUNCNAME, %function
 * .global FUNCNAME
 * FUNCNAME:
 *         push {r4-r12,lr}
 *         vpush {d0-d15}
 *
 *         foo .req r0
 *         .unreq bar
 *
 *         vpop {d0-d15}
 *         pop {r4-r12,lr}
 *         bx lr
 */

/*
 * Karatsuba evaluation
 */

.type karatsuba_fwd_dual_32_loop, %function
.global karatsuba_fwd_dual_32_loop
karatsuba_fwd_dual_32_loop:
        push {r4-r12,lr}
        vpush {d0-d15}

        src    .req r0
        dst    .req r1
        carry  .req r12

        #define VECTOR_SIZE 16
        #define LIMB_BYTE_SIZE      64
        #define LIMB_BYTE_SIZE_HALF (LIMB_BYTE_SIZE/2)

        #define EVEN_INDEX 0
        #define ODD_INDEX  1
        #define SUM_INDEX  2
        #define NUM_LIMBS 3

        even_a .req q0
        odd_a  .req q1
        sum_a  .req q2

        even_b .req q3
        odd_b  .req q4
        sum_b  .req q5

        loop_cnt .req r14
        mov loop_cnt, #(KARATSUBA_FWD_ITERATIONS-2)

        /* First iteration */
        #define OFFSET 0
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        #if OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE != 0
        #error Unexpected offset
        #endif
        vstrh.u16 even_a, [dst /*, #(OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE) */], #(NUM_LIMBS*LIMB_BYTE_SIZE)
        #define SHIFT (-NUM_LIMBS*LIMB_BYTE_SIZE)

        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 1
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 2
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        vstrh.u16 even_a, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 3
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        wls loop_cnt, loop_cnt, karatsuba_fwd_dual_32_loop_end
karatsuba_fwd_dual_32_loop_start:

        #define OFFSET 0
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        #if OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE != 0
        #error Unexpected offset
        #endif
        vstrh.u16 even_a, [dst /*, #(OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE) */], #(NUM_LIMBS*LIMB_BYTE_SIZE)
        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 1
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 2
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        vstrh.u16 even_a, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 3
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        le loop_cnt, karatsuba_fwd_dual_32_loop_start
karatsuba_fwd_dual_32_loop_end:

        /* Last iteration */

        #define OFFSET 0
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        #if OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE != 0
        #error Unexpected offset
        #endif
        vstrh.u16 even_a, [dst /*, #(OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE) */], #(NUM_LIMBS*LIMB_BYTE_SIZE)
        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 1
        vld21.s16 {even_a,odd_a}, [src]
        vld20.s16 {even_a,odd_a}, [src]!
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 2
        vld21.s16 {even_b,odd_b}, [src]
        vld20.s16 {even_b,odd_b}, [src]!
        vadd.u16 sum_a, even_a, odd_a
        vstrh.u16 even_a, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_a,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        #define OFFSET 3
        vadd.u16 sum_b, even_b, odd_b
        vstrh.u16 even_b, [dst, #(SHIFT + OFFSET * VECTOR_SIZE + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vstrh.u16 odd_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vstrh.u16 sum_b,  [dst, #(SHIFT + OFFSET * VECTOR_SIZE + SUM_INDEX  * LIMB_BYTE_SIZE)]
        #undef OFFSET

        .unreq even_a
        .unreq odd_a
        .unreq sum_a
        .unreq even_b
        .unreq odd_b
        .unreq sum_b

        .unreq src
        .unreq dst
        .unreq loop_cnt

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr

/*
 * Karatsuba interpolation
 */

.type karatsuba_naive_inv_dual_32, %function
.global karatsuba_naive_inv_dual_32
karatsuba_naive_inv_dual_32:
        push {r4-r12,lr}
        vpush {d0-d15}

        src    .req r0
        dst    .req r1
        carry  .req r12

        #define LIMB_BYTE_SIZE      64
        #define LIMB_BYTE_SIZE_HALF (LIMB_BYTE_SIZE/2)

        #define EVEN_INDEX 0
        #define ODD_INDEX  1
        #define SUM_INDEX  2

        mov carry, #0

        even_even .req q0
        sum_even  .req q1
        even_odd  .req q2
        sum_odd   .req q3
        odd_even  .req q4
        odd_odd   .req q5

        vldrh.u16 even_even, [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE)]
        vldrh.u16 even_odd,  [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vldrh.u16 odd_even,  [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE)]
        vldrh.u16 odd_odd,   [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vldrh.u16 sum_even,  [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE)]
        vldrh.u16 sum_odd,   [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_even, sum_even, odd_even
        vsub.u16 sum_odd,  sum_odd,  odd_odd
        vsub.u16 sum_even, sum_even, even_even
        vsub.u16 sum_odd,  sum_odd,  even_odd

        vadd.u16 even_odd, even_odd, odd_even
        vshlc odd_odd, carry, #16
        vadd.u16 even_even, even_even, odd_odd

        vst40.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst41.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst42.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst43.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]!

        .unreq even_even
        .unreq even_odd
        .unreq odd_even
        .unreq odd_odd
        .unreq sum_even
        .unreq sum_odd

        add src, src, #16

        even_even .req q0
        sum_even  .req q1
        even_odd  .req q2
        sum_odd   .req q3
        odd_even  .req q4
        odd_odd   .req q5

        vldrh.u16 even_even, [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE)]
        vldrh.u16 even_odd,  [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vldrh.u16 odd_even,  [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE)]
        vldrh.u16 odd_odd,   [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vldrh.u16 sum_even,  [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE)]
        vldrh.u16 sum_odd,   [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_even, sum_even, odd_even
        vsub.u16 sum_odd,  sum_odd,  odd_odd
        vsub.u16 sum_even, sum_even, even_even
        vsub.u16 sum_odd,  sum_odd,  even_odd

        vadd.u16 even_odd, even_odd, odd_even
        vshlc odd_odd, carry, #16
        vadd.u16 even_even, even_even, odd_odd

        vst40.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst41.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst42.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]
        vst43.s16 {even_even, sum_even, even_odd, sum_odd}, [dst]!

        carry_correct .req r11
        ldrh carry_correct, [dst, #(-128)]
        sub carry_correct, carry_correct, carry
        strh carry_correct, [dst, #(-128)]
        .unreq carry_correct

        .unreq even_even
        .unreq even_odd
        .unreq odd_even
        .unreq odd_odd
        .unreq sum_even
        .unreq sum_odd

        .unreq src
        .unreq dst
        .unreq carry

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr

/* Slightly pipeline optimized version of Karatsuba interpolation. */

.type karatsuba_inv_dual_32, %function
.global karatsuba_inv_dual_32
karatsuba_inv_dual_32:
        push {r4-r12,lr}
        vpush {d0-d15}

        src    .req r0
        dst    .req r1
        carry  .req r12

        #define LIMB_BYTE_SIZE      64
        #define LIMB_BYTE_SIZE_HALF (LIMB_BYTE_SIZE/2)

        #define EVEN_INDEX 0
        #define ODD_INDEX  1
        #define SUM_INDEX  2

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        sum_even  .req q4 // alloc q4
        vldrh.u16 sum_even,  [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE)]

        mov carry, #0

        odd_even  .req q6 // alloc q4, q6
        vldrh.u16 odd_even,  [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE)]
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q4, q5, q6
        vldrh.u16 even_even, [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even

        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        add src, src, #16
        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5, q6, q7
        .unreq even_even  // alloc q6, q7

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even already preloaded
        // odd_even already preloaded
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q5, q6, q7
        vldrh.u16 even_even, [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even
        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        vshlc odd_odd, carry, #16
        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5
        .unreq even_even  // alloc --

        // Correction of initial coefficient after we know the wraparound
        carry_correct .req r11
        ldrh carry_correct, [dst, #(-64)]

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        sub carry_correct, carry_correct, carry
        strh carry_correct, [dst, #(-64)]
        .unreq carry_correct
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr

/* Slightly pipelined and looping version of Karatsuba interpolation. */

.type karatsuba_inv_dual_32_loop, %function
.global karatsuba_inv_dual_32_loop
karatsuba_inv_dual_32_loop:
        push {r4-r12,lr}
        vpush {d0-d15}

        src    .req r0
        dst    .req r1
        carry  .req r12

        carry_correct .req r11

        #define LIMB_BYTE_SIZE      64
        #define LIMB_BYTE_SIZE_HALF (LIMB_BYTE_SIZE/2)
        #define NUM_LIMBS 3
        #define TOTAL_SIZE_BYTES (NUM_LIMBS*LIMB_BYTE_SIZE)

        #define EVEN_INDEX 0
        #define ODD_INDEX  1
        #define SUM_INDEX  2

        /* INITIAL ITERATION */

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        #undef SHIFT
        #define SHIFT 0

        sum_even  .req q7 // alloc q7
        vldrh.u16 sum_even,  [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE)]

        mov carry, #0

        odd_even  .req q6 // alloc q6, q7
        vldrh.u16 odd_even,  [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE)]
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q5, q6, q7

        #if SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE != 0
        #error Unexepected offset
        #endif

        vldrh.u16 even_even, [src], #(TOTAL_SIZE_BYTES) //[src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even

        #undef SHIFT
        #define SHIFT (-TOTAL_SIZE_BYTES)

        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        #undef  SHIFT
        #define SHIFT (16 - TOTAL_SIZE_BYTES)

        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5, q6, q7
        .unreq even_even  // alloc q6, q7

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vmov.u16 carry_correct, f_even_even[0]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even already preloaded
        // odd_even already preloaded
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q5, q6, q7
        vldrh.u16 even_even, [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even
        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        #undef SHIFT
        #define SHIFT 0

        // Preload for next iteration
        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        // Preload for next iteration
        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5, q6, q7
        .unreq even_even  // alloc q6, q7

        // Correction of initial coefficient after we know the wraparound
        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        sub carry_correct, carry_correct, carry
        strh carry_correct, [dst, #(-64)]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        mov carry, #0
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        /* LOOP */

        loop_cnt .req r14
        mov loop_cnt, #(KARATSUBA_INV_ITERATIONS-2)

        wls loop_cnt, loop_cnt, karatsuba_inv_dual_32_loop_end

karatsuba_inv_dual_32_loop_start:

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even and odd_even preloaded
        vsub.u16 sum_even, sum_even, odd_even

        #if SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE != 0
        #error Unexepected offset
        #endif

        even_even .req q5 // alloc q7, q5, q6
        vldrh.u16 even_even, [src], #TOTAL_SIZE_BYTES // [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even

        #undef SHIFT
        #define SHIFT (-TOTAL_SIZE_BYTES)

        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        #undef SHIFT
        #define SHIFT (16-TOTAL_SIZE_BYTES)

        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5, q6, q7
        .unreq even_even  // alloc q6, q7

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vmov.u16 carry_correct, f_even_even[0]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even already preloaded
        // odd_even already preloaded
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q5, q6, q7
        vldrh.u16 even_even, [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even
        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        // Preload for next iteration
        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        // Preload for next iteration
        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5
        .unreq even_even  // alloc --

        // Correction of initial coefficient after we know the wraparound
        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        sub carry_correct, carry_correct, carry
        strh carry_correct, [dst, #(-64)]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        mov carry, #0
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        le loop_cnt, karatsuba_inv_dual_32_loop_start

karatsuba_inv_dual_32_loop_end:

        /* LAST ITERATION */

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even and odd_even preloaded
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q4, q5, q6
        vldrh.u16 even_even, [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even

        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        #undef SHIFT
        #define SHIFT 16

        odd_even  .req q6 // alloc q4, q5, q6
        vldrh.u16 odd_even,  [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE)]

        vshlc odd_odd, carry, #16

        sum_even  .req q7 // alloc q4, q5, q6, q7
        vldrh.u16 sum_even,  [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE)]

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5, q6, q7
        .unreq even_even  // alloc q6, q7

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vmov.u16 carry_correct, f_even_even[0]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        f_even_even .req q0
        f_sum_even  .req q1
        f_even_odd  .req q2
        f_sum_odd   .req q3

        // sum_even already preloaded
        // odd_even already preloaded
        vsub.u16 sum_even, sum_even, odd_even

        even_even .req q5 // alloc q5, q6, q7
        vldrh.u16 even_even, [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE)]
        vsub.u16 f_sum_even, sum_even, even_even
        .unreq sum_even // alloc q5, q6

        even_odd  .req q4 // alloc q4, q5, q6
        vldrh.u16 even_odd,  [src,  #(SHIFT + EVEN_INDEX * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vadd.u16 f_even_odd, even_odd, odd_even
        .unreq odd_even // alloc q4, q5

        sum_odd   .req q6 // alloc q4, q5, q6
        vldrh.u16 sum_odd,   [src,  #(SHIFT + SUM_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]
        vsub.u16 sum_odd,  sum_odd,  even_odd
        .unreq even_odd // alloc q5, q6

        odd_odd   .req q4 // alloc q4, q5, q6
        vldrh.u16 odd_odd,   [src,  #(SHIFT + ODD_INDEX  * LIMB_BYTE_SIZE + LIMB_BYTE_SIZE_HALF)]

        vsub.u16 f_sum_odd,  sum_odd,  odd_odd
        .unreq sum_odd // alloc q4, q5

        vshlc odd_odd, carry, #16

        vadd.u16 f_even_even, even_even, odd_odd
        .unreq odd_odd    // alloc q5
        .unreq even_even  // alloc --

        vst40.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        sub carry_correct, carry_correct, carry
        strh carry_correct, [dst, #(-64)]
        vst41.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst42.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]
        vst43.s16 {f_even_even, f_sum_even, f_even_odd, f_sum_odd}, [dst]!
        .unreq f_even_even
        .unreq f_even_odd
        .unreq f_sum_even
        .unreq f_sum_odd

        .unreq src
        .unreq dst
        .unreq carry

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr
