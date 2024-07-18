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

#include "montgomery_const.h"

        .syntax unified

.type twisted_cyclic_mul_acc_deg4_u32_mve_alt, %function
.global twisted_cyclic_mul_acc_deg4_u32_mve_alt
.align 4
twisted_cyclic_mul_acc_deg4_u32_mve_alt_mod_addr:
        .word const_mod_q32
twisted_cyclic_mul_acc_deg4_u32_mve_alt:
        push {r4-r12,lr}
        vpush {d0-d15}

        /* Preparation -- amortizes when looping */

        mod_q      .req r11
        mod_q_inv  .req r12
        mod_q_vect .req q7  /* vmulh requires vector operand */

        l_a  .req q0
        l_b3 .req q1
        l_b2 .req q2
        l_b1 .req q3
        l_b0 .req q4

        res_lo .req q5
        res_hi .req q6

        dst_vect .req q5 // Overlapping with res_lo

        in_A .req r0
        in_B .req r1
        dst  .req r2

        loop_cnt .req r14
        mov loop_cnt, #((VECTOR_LENGTH/4)-2)

        res3_lo .req r4
        res3_hi .req r5
        res1_lo .req r8
        res1_hi .req r9
        res2_lo .req r6
        res2_hi .req r7
        res0_lo .req r10
        res0_hi .req r11

        /* First iteration */

        /*
         * Instructions used in each iteration:
         *
         * 6x VLDR/VSTR (1x VLDR for a, 4x VLDR for b, 1x VSTR for result)
         * 4x VMLALDAV workhorse
         * 4x double-lane VMOV from result GPRs into result vector
         * 3x VMULxxx for Montgomery of result vector
         * 1x VSUB for Montgomery of result vector
         * => 18 instructions
         *
         * That gives at the very best 1152 cycles for a deg-4 point multiplication.
         *
         * Cost of performing twisting in here:
         * - 3x VMULxxx
         * - 2x VSTR
         *
         * So that would lead to 23 instruction, which is 1472 cycles for
         * deg-4 point multiplication at best.
        */

        mod_q_addr .req r8
        ldr mod_q_addr, twisted_cyclic_mul_acc_deg4_u32_mve_alt_mod_addr
        ldrd mod_q, mod_q_inv, [mod_q_addr]
        .unreq mod_q_addr

        vdup.s32 mod_q_vect, mod_q
        .unreq mod_q

        /* Input A */
        vldrw.u32 l_a, [in_A], #+16

        /* (a0,a1,a2,a3) * (b3,b2,b1,b0) = c3 */
        vldrw.u32 l_b3, [in_B], #+32
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* (a0,a1,a2,a3) * (b1,b0,zeta*b3,zeta*b2) */
        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vldrw.u32 l_b2, [in_B,#(-16-12)]
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo

        vldrw.u32 l_b3, [in_B], #+32

        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vldrw.u32 l_b0, [in_B,#(-32-16-4)]
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Preload A for next iteration */
        vldrw.u32 l_a, [in_A], #+16
        /* Precompute (a0,a1,a2,a3) * (b3,b2,b1,b0) = c3 */
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        vldrw.u32 l_b2, [in_B,#(-16-12)]

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        vldrw.u32 l_b0, [in_B,#(-16-4)]

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        wls loop_cnt, loop_cnt, twisted_cyclic_mul_acc_deg4_u32_mve_alt_loop_end
twisted_cyclic_mul_acc_deg4_u32_mve_alt_loop_start:

        /*
         * Instructions used in each iteration:
         *
         * 6x VLDR/VSTR (1x VLDR for a, 4x VLDR for b, 1x VSTR for result)
         * 4x VMLALDAV workhorse
         * 4x double-lane VMOV from result GPRs into result vector
         * 3x VMULxxx for Montgomery of result vector
         * 1x VSUB for Montgomery of result vector
         * => 18 instructions
         *
         * That gives at the very best 1152 cycles for a deg-4 point multiplication.
         *
         * Cost of performing twisting in here:
         * - 3x VMULxxx
         * - 2x VSTR
         *
         * So that would lead to 23 instruction, which is 1472 cycles for
         * deg-4 point multiplication at best.
        */

        /* Store results */
        vldrw.s32 dst_vect, [dst]
        vadd.s32 res_hi, res_hi, dst_vect
        vstrw.s32 res_hi, [dst], #+16

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo

        /* Load b3 for next iteration, is already free here */
        /* Preload B3 for next iteration */
        vldrw.u32 l_b3, [in_B], #+32

        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Compute first product for next iteration? */
        /* Preload A for next iteration */
        vldrw.u32 l_a, [in_A], #+16
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        vldrw.u32 l_b2, [in_B,#(-16-12)]

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        vldrw.u32 l_b0, [in_B,#(-16-4)]

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        le loop_cnt, twisted_cyclic_mul_acc_deg4_u32_mve_alt_loop_start

twisted_cyclic_mul_acc_deg4_u32_mve_alt_loop_end:

        /* Last iteration
         *
         * This one is rather pipeline inefficient because we
         * can not pull forward instructions from the next loop
         * to introduce the gap between high-latency instructions
         * and the instructions relying on their results.
         */

        /* Defer storing of last result */
        res_hi_old .req q6
        .unreq res_hi
        .unreq l_b1
        res_hi .req q3

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo
        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vldrw.u32 l_b0, [in_B,#(-16-4)]
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        /* Store old result */
        vldrw.s32 l_b0, [dst]
        vadd.s32 res_hi_old, res_hi_old, l_b0
        vstrw.s32 res_hi_old, [dst], #+16

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        /* Store results */
        vldrw.s32 l_b0, [dst]
        vadd.s32 res_hi, res_hi, l_b0
        vstrw.s32 res_hi, [dst], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b3
        .unreq l_b2
        .unreq l_b0

        .unreq res_lo
        .unreq res_hi

        .unreq dst_vect

        .unreq in_A
        .unreq in_B
        .unreq dst

        .unreq loop_cnt

        .unreq res3_lo
        .unreq res3_hi
        .unreq res1_lo
        .unreq res1_hi
        .unreq res2_lo
        .unreq res2_hi
        .unreq res0_lo
        .unreq res0_hi

.type twisted_cyclic_mul_deg4_u32_mve_alt, %function
.global twisted_cyclic_mul_deg4_u32_mve_alt
.align 4
twisted_cyclic_mul_deg4_u32_mve_alt_mod_addr:
        .word const_mod_q32
twisted_cyclic_mul_deg4_u32_mve_alt:
        push {r4-r12,lr}
        vpush {d0-d15}

        /* Preparation -- amortizes when looping */

        mod_q      .req r11
        mod_q_inv  .req r12
        mod_q_vect .req q7  /* vmulh requires vector operand */

        l_a  .req q0
        l_b3 .req q1
        l_b2 .req q2
        l_b1 .req q3
        l_b0 .req q4

        res_lo .req q5
        res_hi .req q6

        in_A .req r0
        in_B .req r1
        dst  .req r2

        loop_cnt .req r14
        mov loop_cnt, #((VECTOR_LENGTH/4)-2)

        res3_lo .req r4
        res3_hi .req r5
        res1_lo .req r8
        res1_hi .req r9
        res2_lo .req r6
        res2_hi .req r7
        res0_lo .req r10
        res0_hi .req r11

        /* First iteration */

        /*
         * Instructions used in each iteration:
         *
         * 6x VLDR/VSTR (1x VLDR for a, 4x VLDR for b, 1x VSTR for result)
         * 4x VMLALDAV workhorse
         * 4x double-lane VMOV from result GPRs into result vector
         * 3x VMULxxx for Montgomery of result vector
         * 1x VSUB for Montgomery of result vector
         * => 18 instructions
         *
         * That gives at the very best 1152 cycles for a deg-4 point multiplication.
         *
         * Cost of performing twisting in here:
         * - 3x VMULxxx
         * - 2x VSTR
         *
         * So that would lead to 23 instruction, which is 1472 cycles for
         * deg-4 point multiplication at best.
        */

        mod_q_addr .req r8
        ldr mod_q_addr, twisted_cyclic_mul_deg4_u32_mve_alt_mod_addr
        ldrd mod_q, mod_q_inv, [mod_q_addr]
        .unreq mod_q_addr

        vdup.s32 mod_q_vect, mod_q
        .unreq mod_q

        /* Input A */
        vldrw.u32 l_a, [in_A], #+16

        /* (a0,a1,a2,a3) * (b3,b2,b1,b0) = c3 */
        vldrw.u32 l_b3, [in_B], #+32
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* (a0,a1,a2,a3) * (b1,b0,zeta*b3,zeta*b2) */
        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vldrw.u32 l_b2, [in_B,#(-16-12)]
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo

        vldrw.u32 l_b3, [in_B], #+32

        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vldrw.u32 l_b0, [in_B,#(-32-16-4)]
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Preload A for next iteration */
        vldrw.u32 l_a, [in_A], #+16
        /* Precompute (a0,a1,a2,a3) * (b3,b2,b1,b0) = c3 */
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        vldrw.u32 l_b2, [in_B,#(-16-12)]

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        vldrw.u32 l_b0, [in_B,#(-16-4)]

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        wls loop_cnt, loop_cnt, twisted_cyclic_mul_deg4_u32_mve_alt_loop_end
twisted_cyclic_mul_deg4_u32_mve_alt_loop_start:

        /*
         * Instructions used in each iteration:
         *
         * 6x VLDR/VSTR (1x VLDR for a, 4x VLDR for b, 1x VSTR for result)
         * 4x VMLALDAV workhorse
         * 4x double-lane VMOV from result GPRs into result vector
         * 3x VMULxxx for Montgomery of result vector
         * 1x VSUB for Montgomery of result vector
         * => 18 instructions
         *
         * That gives at the very best 1152 cycles for a deg-4 point multiplication.
         *
         * Cost of performing twisting in here:
         * - 3x VMULxxx
         * - 2x VSTR
         *
         * So that would lead to 23 instruction, which is 1472 cycles for
         * deg-4 point multiplication at best.
        */

        /* Store results */
        vstrw.s32 res_hi, [dst], #+16

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo

        /* Load b3 for next iteration, is already free here */
        /* Preload B3 for next iteration */
        vldrw.u32 l_b3, [in_B], #+32

        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Compute first product for next iteration? */
        /* Preload A for next iteration */
        vldrw.u32 l_a, [in_A], #+16
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b3

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        vldrw.u32 l_b1, [in_B,#(-16-8)]
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b1

        vldrw.u32 l_b2, [in_B,#(-16-12)]

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        vldrw.u32 l_b0, [in_B,#(-16-4)]

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        le loop_cnt, twisted_cyclic_mul_deg4_u32_mve_alt_loop_start

twisted_cyclic_mul_deg4_u32_mve_alt_loop_end:

        /* Last iteration
         *
         * This one is rather pipeline inefficient because we
         * can not pull forward instructions from the next loop
         * to introduce the gap between high-latency instructions
         * and the instructions relying on their results.
         */

        /* Defer storing of last result */
        res_hi_old .req q6
        .unreq res_hi
        .unreq l_b1
        res_hi .req q3

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b2

        /* Move low results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo
        /* Move high results into result vector */
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vldrw.u32 l_b0, [in_B,#(-16-4)]
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b0

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res0_lo, res2_lo

        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res0_hi, res2_hi

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv

        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect

        /* Store old result */
        vstrw.s32 res_hi_old, [dst], #+16

        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        /* Store results */
        vstrw.s32 res_hi, [dst], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b3
        .unreq l_b2
        .unreq l_b0

        .unreq in_A
        .unreq in_B
        .unreq dst

        .unreq res_lo
        .unreq res_hi

        .unreq res3_lo
        .unreq res3_hi
        .unreq res1_lo
        .unreq res1_hi
        .unreq res2_lo
        .unreq res2_hi
        .unreq res0_lo
        .unreq res0_hi

        .unreq mod_q_inv
        .unreq mod_q_vect


.type twisted_cyclic_mul_deg4_u32_mve, %function
.global twisted_cyclic_mul_deg4_u32_mve
twisted_cyclic_mul_deg4_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        /* Preparation -- amortizes when looping */

        mod_q      .req r12
        mod_q_inv  .req r14
        mod_q_vect .req q4  /* vmulh requires vector operand */

        ldrd mod_q, mod_q_inv, [r2]
        vdup.s32 mod_q_vect, mod_q
        .unreq mod_q

        tw1 .req r10
        tw2 .req r11
        tw3 .req r12

        l_a .req q0
        l_b .req q1

        res_lo .req q2
        res_hi .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        /* Input A */
        vldrw.u32 l_b, [in_B], #+16
        vmov tw1, tw3, l_b[3], l_b[1]
        vldrw.u32 l_a, [in_A], #+16

        /* Assume b-input is already reversed */

        /* Extract second half of twisted b into GPRs */

        vmov.s32 tw2, l_b[2]

        res3_lo .req r4
        res3_hi .req r5
        res2_lo .req r6
        res2_hi .req r7

        /* TODO:
         * For twisted multiplication, add Montgomery multiplication here.
         * Adds 3 instructions. */

        /* (a0,a1,a2,a3) * (b3,b2,b1,b0) = c3 */
        vmlaldav.s32 res3_lo, res3_hi, l_a, l_b

        /* Shift zeta*b3 into b vector, giving (b2,b1,b0,zeta*b3) */
        vshlc l_b, tw3, #32
        .unreq tw3

        /* (a0,a1,a2,a3) * (b2,b1,b0,zeta*b3) = c2 */
        vmlaldav.s32 res2_lo, res2_hi, l_a, l_b

        /* Shift zeta*b2 into b vector, giving (b1,b0,zeta*b3, zeta*b2) */
        vshlc l_b, tw2, #32
        .unreq tw2

        res1_lo .req r8
        res1_hi .req r9

        /* (a0,a1,a2,a3) * (b1,b0,zeta*b3,zeta*b2) */
        vmlaldav.s32 res1_lo, res1_hi, l_a, l_b

        /* Move low and high results into result vector */
        vmov res_lo[3], res_lo[1], res1_lo, res3_lo
        vmov res_hi[3], res_hi[1], res1_hi, res3_hi

        .unreq res3_lo
        .unreq res3_hi
        .unreq res1_lo
        .unreq res1_hi

        res0_lo .req r8
        res0_hi .req r9

        /* Shift zeta*b1 into b vector, giving (b0,zeta*b3,zeta*b2,zeta*b1) */
        vshlc l_b, tw1, #32
        .unreq tw1

        /* (a0,a1,a2,a3) * (b0,zeta*b3,zeta*b2,zeta*b1) = c0 */
        vmlaldav.s32 res0_lo, res0_hi, l_a, l_b

        /* PRELOAD FOR NEXT ITERATION? */

        /* Move low results into result vector */
        vmov res_lo[2], res_lo[0], res2_lo, res0_lo

        /* Montgomery 1 */
        vmul.u32  res_lo, res_lo, mod_q_inv
        /* Move high results into result vector */
        vmov res_hi[2], res_hi[0], res2_hi, res0_hi
        /* Montgomery 2 */
        vmulh.s32 res_lo, res_lo, mod_q_vect
        /* Montgomery 3 */
        vsub.s32  res_hi, res_hi, res_lo

        /* Store results */
        vstrw.s32 res_hi, [dst], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b

        .unreq in_A
        .unreq in_B
        .unreq dst

        .unreq mod_q_inv
        .unreq mod_q_vect

.type cyclic_mul_deg4_u32_mve, %function
.global cyclic_mul_deg4_u32_mve
cyclic_mul_deg4_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mov r10, #0x0F0F
        vmsr p0, r10

        mod_q     .req r10
        mod_q_inv .req r9

        ldr mod_q,     [r2,#0] /* Modulus */
        ldr mod_q_inv, [r2,#4]

        l_a0 .req q1
        l_a1 .req q2
        l_b0 .req q3
        l_b1 .req q4

        r_a0 .req q0
        r_a1 .req q1
        r_b0 .req q2
        r_b1 .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        /* q1 = ((a0,a2),(a4,a6)), q2=((a1,a3),(a5,a7)) */
        vld20.u32 {l_a0,l_a1}, [in_A]
        vld21.u32 {l_a0,l_a1}, [in_A]!

        /* q3 = ((b0,b2),(b4,b6)), q4=((b1,b3),(b5,b7)) */
        vld20.u32 {l_b0,l_b1}, [in_B]
        vld21.u32 {l_b0,l_b1}, [in_B]!

        /* Compute product in two vectors q4, q5 */

        /* Can use q6, q7 for temporary data; need at least
        * one temporary vector per subproduct. */

        /*
         * Ballpark estimates:
         * - 4  = 2x2 VLD2x to load current polynomials
         * - 2  = 2x  VST2x to store result
         * - 4  = 4x  VCADD to get q0-q3 into (+1,-1)-evaluated form
         * - 16 = 4x4 Vector Multiplications, 4 per subproduct
         * - 4  = 4x1 VHSUB for hi-part correction in Montgomery reduction
         *            In fact, use VSUB for first time each target vector is
         *            used, and VHSUB for the second time.
         * - 2  = 2x  VCADD for interpolation of result --
         *            Note that we don't need to do this in every
         *            subproduct.
         *
         * Total: 32 instructions
         *
         * Pretty promising... if it pipelines well and we have enough
         * vector registers.
         */

        /* Transform input into evaluated form */
        vcadd.i32 r_a0, l_a0, l_a0, #90
        .unreq l_a0

        vcadd.i32 r_a1, l_a1, l_a1, #90
        .unreq l_a1

        vcadd.i32 r_b0, l_b0, l_b0, #90
        .unreq l_b0

        vcadd.i32 r_b1, l_b1, l_b1, #90
        .unreq l_b1

        /* Subproduct 1: a0*b1 */

        /*
         * Vector register allocation state:
         * - Initially: a0, a1, b0, b1
         * - Temporary allocations: 1
         * - Final allocations: a0, a1, b0, b1, dst1
         */

        /*
         * OPTIMIZATION:
         *
         * - We have two free vectors at this point --
         *   could use this for a late store of the results
         *   of a previous iteration, residing in {q6, q7}.
         *
         * - Perform a late evaluation of r_a0, r_b1 here.
         *
         */

        dst1 .req q5
        tmp  .req q4

        vmul.u32    tmp, r_a0, mod_q_inv /* Twist one factor using temporary tmp */
        vqdmulh.s32 dst1, r_a0, r_b1     /* Initialize dst1 with high part       */
        vmul.u32    tmp, tmp, r_b1       /* Twisted low product                  */
        vqdmulh.s32 tmp, tmp, mod_q      /* High product                         */
        vsub.s32    dst1, tmp, dst1      /* Correct high product                 */
                                         /* Defer halving for later              */
                                         /* Actually store _negative_ of result  */

        .unreq tmp

        /* Subproduct 2: a1*b0 */

        /*
         * Vector register allocation state:
         * - Initially: a0, a1, b0, b1, dst1
         * - Temporary allocations: 2
         * - Final allocations: a0, a1, b0, b1, dst1
         */

        tmp0 .req q6
        tmp1 .req q4

        vqdmulh.s32 tmp1, r_a1, r_b0    /* Write high-product into temporary    */
        vmul.u32    tmp0, q1, mod_q_inv /* Twist one factor using temporary tmp */
        vmul.u32    tmp0, tmp0, r_b0    /* Twisted low product                  */
        vqdmlah.s32 dst1, tmp0, mod_q   /* High product, accumulate onto dst1,
                                         * which stores the _negative_ of the
                                         * subproduct 1.                        */
        vhsub.s32   dst1, tmp1, dst1    /* Correct high product                 */
                                        /* Late halving, encompassing also the
                                         * first subproduct.                    */
                                        /* Note that, so far, dst1 contained
                                         * -pre + high_correct.
                                         * After this step, it's
                                         * high - ( -pre + high_correct )
                                         * = pre + high - high_correct,
                                         * which is what we want.               */

        .unreq tmp0
        .unreq tmp1

        /* Finalize dst1 */

        dst1_final .req q7
        vcadd.s32 dst1_final, dst1, dst1, #270
        .unreq dst1

        /* Subproduct 3: a1*b1 */

        /*
         * Vector register allocation state:
         * - Initially: a0, a1, b0, b1, dst1_final
         * - Temporary allocations: 0
         * - Final allocations: a0, b0, dst1_final, dst0
         */

        dst0 .req q4

        vqdmulh.s32 dst0, r_a1, r_b1      /* Initialize dst0 with high part    */
        vmul.u32    r_a1, r_a1, mod_q_inv /* Can overwrite a1 now              */
        vmul.u32    r_a1, r_a1, r_b1      /* Twisted low product               */

        .unreq r_b1

        vqdmulh.s32 r_a1, r_a1, mod_q   /* High product                        */
        vsub.s32    dst0, r_a1, dst0    /* Correct high product                */
                                        /* Defer halving for later             */
                                        /* Actually store _negative_ of result */

        .unreq r_a1

        vpst
        vnegt.s32 dst0, dst0

        /* Subproduct 4: a0*b0 */

        /*
         * Vector register allocation state:
         * - Initially: a0, b0, dst1_final, dst0
         * - Temporary allocations: 1
         * - Final allocations: dst1_final, dst0
         */

        tmp .req q5

        vqdmulh.s32 tmp, r_a0, r_b0    /* Write high-product into temporary   */
        vmul.u32    r_a0, r_a0, r_b0   /* Twisted low product                 */

        .unreq r_b0

        vmul.u32    r_a0, r_a0, mod_q_inv /* Can overwrite a0 now                */
        vqdmlah.s32 dst0, r_a0, mod_q     /* High product, accumulate onto tmp,
                                           * which stores the _negative_ of the
                                           * subproduct 1.                       */
        vhsub.s32   dst0, tmp, dst0       /* Correct high product                */
                                          /* Late halving, encompassing also the
                                           * first subproduct.                   */
                                          /* Note that, so far, tmp contained
                                           * -pre + high_correct.
                                           * After this step, it's
                                           * high - ( -pre + high_correct )
                                           * = pre + high - high_correct,
                                           * which is what we want.              */

        .unreq tmp

        /* Finalize dst0 */
        dst0_final .req q6
        vcadd.s32 dst0_final, dst0, dst0, #270
        .unreq dst0

        /* Store results */
        vst20.s32 {dst0_final, dst1_final}, [dst]
        vst21.s32 {dst0_final, dst1_final}, [dst]!
        .unreq dst0_final
        .unreq dst1_final

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq r_a0

.type cyclic_mul_deg4_u32_alt_mve, %function
.global cyclic_mul_deg4_u32_alt_mve
cyclic_mul_deg4_u32_alt_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        l_a0 .req q0
        l_a1 .req q1
        l_b0 .req q2
        l_b1 .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

	cnt .req r4

        dst0_last_final .req q6
        dst1_last_final .req q7

        mod_q       .req r10
        mod_q_inv   .req r9
	pred_helper .req r8

        vld20.u32 {l_a0,l_a1}, [in_A]
        mov pred_helper, #0x0F0F
        vld21.u32 {l_a0,l_a1}, [in_A]!
        vmsr p0, pred_helper

        vld20.u32 {l_b0,l_b1}, [in_B]
        ldr mod_q_inv, [r2,#4]
        vld21.u32 {l_b0,l_b1}, [in_B]!

        /* Subproduct 1: a1*b1
         *
         * I: r_a1 (q5), r_b1 (q4), l_a0 (q0), l_b0 (q2)
         * T: tmp (q1)
         * F: r_a1 (q5), r_b1 (q4), l_a0 (q0), l_b0 (q2),
         *    dst0 (q3)
         */

        r_a1 .req q5
        vcadd.i32 r_a1, l_a1, l_a1, #90
        .unreq l_a1 // q1

        ldr mod_q, [r2,#0]

        tmp  .req q1
        vmul.u32 tmp, r_a1, mod_q_inv

        r_b1 .req q4
        vcadd.i32 r_b1, l_b1, l_b1, #90
        .unreq l_b1 // q3

	tmp1 .req q3

        vmul.u32    tmp1,  tmp,  r_b1    /* Montgomery twist              */
	mov cnt, #((VECTOR_LENGTH)/8-1)  /* Interleave initialization of
                                          * loop counter                  */
        vqdmulh.s32 tmp1,  tmp1,  mod_q  /* Montgomery high product fix   */

        dst0 .req q6
        vqdmulh.s32 dst0, r_a1, r_b1     /* Initial high product           */

        r_b0 .req q7
        vcadd.i32 r_b0, l_b0, l_b0, #90
        .unreq l_b0 // q2

        /* Subproduct 2: a1*b0
         *
         * I: r_a1 (q5), r_b1 (q4), l_a0 (q0), r_b0 (q7), dst0 (q3)
         * T: 1 (q5)
         * F: r_b1 (q4), l_a0 (q0), r_b0 (q7), dst0 (q6), dst1 (q2)
         */

        dst1 .req q2
        vqdmulh.s32 dst1, r_a1, r_b0      /* Initial high product          */
        .unreq r_a1 // q5

	dst0_old .req q6
	.unreq dst0
	dst0 .req q6

        vsub.s32    dst0, tmp1, dst0_old  /* Fix high product             */
                                          /* Defer halving for later      */
                                          /* Store _negative_ of result   */
	.unreq tmp1
	.unreq dst0_old // q6

        vmul.u32    tmp, tmp, r_b0        /* Montgomery low product twist */

        vpst
        vnegt.s32 dst0, dst0

        vqdmulh.s32 tmp, tmp, mod_q       /* Montgomery high product fix  */

        r_a0 .req q3
        vcadd.i32 r_a0, l_a0, l_a0, #90
        .unreq l_a0 // q0

        tmp0 .req q5
        vmul.u32    tmp0, r_a0, mod_q_inv /* Montgomery twist             */

        /* Subproduct 3: a0*b1 */

        vsub.s32    dst1, tmp, dst1      /* Correct high product                */
                                         /* Defer halving for later              */
                                         /* Actually store _negative_ of result  */
        .unreq tmp  // q1

        /*
         * Vector register allocation state:
         * - Initial allocations: r_b1 (q4), r_a0 (q3), r_b0 (q7),
         *                        dst0 (q6), dst1 (q2)
         * - Temporary allocations: 1 (q5)
         * - Final allocations: r_a0 (q3), r_b0 (q7),
         *                      dst0 (q6), dst1 (q2)
         *                      preloaded l_a0 (q0), l_a1 (q1)
         */

        vmul.u32    tmp0, tmp0, r_b1

          l_a0 .req q0
          l_a1 .req q1
 	  /* Preload for next iteration */
	  vld20.u32 {l_a0,l_a1}, [in_A]

        vqdmlah.s32 dst1, tmp0, mod_q   /* High product, accumulate onto dst1,
                                         * which stores the _negative_ of the
                                         * subproduct 1.                        */
        .unreq tmp0 // q5

    	  /* Preload for next iteration */
          vld21.u32 {l_a0,l_a1}, [in_A]!

        vqdmulh.s32 r_b1, r_a0, r_b1    /* Can overwrite r_b1 here              */

        vhsub.s32   dst1, r_b1, dst1    /* Correct high product                 */
                                        /* Late halving, encompassing also the
                                         * first subproduct.                    */
                                        /* Note that, so far, dst1 contained
                                         * -pre + high_correct.
                                         * After this step, it's
                                         * high - ( -pre + high_correct )
                                         * = pre + high - high_correct,
                                         * which is what we want.               */

        .unreq r_b1 // q4

        /* Finalize dst1
         *
         * - Initial allocations: r_a0 (q3), r_b0 (q7),
         *                        dst0 (q6), dst1 (q2)
         *                        preloaded l_a0 (q0), l_a1 (q1)
         * - Final allocations: r_a0 (q5), r_b0 (q7),
         *                      dst0 (q3), dst1_final (q7)
         *                      preloaded l_a0 (q0), l_a1 (q1)
         */

        /* Subproduct 4: a0*b0 */

        /*
         * Vector register allocation state:
         * - Initial allocations: r_a0 (q3), r_b0 (q7),
         *                        dst0 (q6), dst1_final (q7)
         *                        preloaded l_a0 (q0), l_a1 (q1)
         * - Temporary allocations: 1 (q4)
         * - Final allocations: dst1_final (q7) , dst0 (q4)
         *                      preloaded l_a0 (q0), l_a1 (q1)
         */

        tmp .req q4
        vqdmulh.s32 tmp, r_a0, r_b0    /* Write high-product into temporary   */

	/* LOAD r_a1 into q5 here...,
        * freeing up q1 as a temporary */

          r_a1 .req q5
          vcadd.i32 r_a1, l_a1, l_a1, #90
          .unreq l_a1 // q1

	tmp0 .req q1
	/* Use q1 for the result here, freeing both r_a0 and r_b0=q7 */
        vmul.u32    tmp0, r_a0, r_b0      /* Twisted low product                 */
                                          /* Can overwrite rb0 now               */
        .unreq r_a0 // q3
	.unreq r_b0 // q7

        dst1_final .req q7
        vcadd.s32 dst1_final, dst1, dst1, #270
        .unreq dst1 // q2


	vmul.u32    tmp0, tmp0, mod_q_inv

	  l_b0 .req q2
          l_b1 .req q3
  	  /* Preload for next iteration */
          vld20.u32 {l_b0,l_b1}, [in_B]

        vqdmlah.s32 dst0, tmp0, mod_q     /* High product, accumulate onto tmp,
                                           * which stores the _negative_ of the
                                           * subproduct 1.                       */
	.unreq tmp0 // q1

	dst0_old .req q6
	.unreq dst0
	dst0 .req q1
        vhsub.s32   dst0, tmp, dst0_old   /* Correct high product                */
                                          /* Late halving, encompassing also the
                                           * first subproduct.                   */
                                          /* Note that, so far, tmp contained
                                           * -pre + high_correct.
                                           * After this step, it's
                                           * high - ( -pre + high_correct )
                                           * = pre + high - high_correct,
                                           * which is what we want.              */

        .unreq tmp // q4
	.unreq dst0_old

          vld21.u32 {l_b0,l_b1}, [in_B]!

        /* Finalize dst0
         *
         * - Initial allocations: dst1_final (q7) , dst0 (q5)
         * - Final   allocations: dst0_final (q6), dst1_final (q7)
         */
        dst0_final .req q6
        vcadd.s32 dst0_final, dst0, dst0, #270
        .unreq dst0 // q1

	nop
        wls lr, cnt, cyclic_mul_deg4_u32_alt_mve_loop_end

cyclic_mul_deg4_u32_alt_mve_loop_start:

        nop

        /* Subproduct 1: a1*b1
         *
         * I: r_a1 (q5), r_b1 (q4), l_a0 (q0), l_b0 (q2)
         * T: tmp (q1)
         * F: r_a1 (q5), r_b1 (q4), l_a0 (q0), l_b0 (q2), dst0 (q3)
         */

        tmp  .req q1
        vmul.u32    tmp, r_a1, mod_q_inv

        r_b1 .req q4
        vcadd.i32 r_b1, l_b1, l_b1, #90
        .unreq l_b1 // q3

	tmp1 .req q3

        vmul.u32    tmp1,  tmp,  r_b1      /* Twisted low product                 */

          vst20.s32 {dst0_last_final,dst1_last_final}, [dst]

        vqdmulh.s32 tmp1,  tmp1,  mod_q     /* High product                        */

          vst21.s32 {dst0_last_final,dst1_last_final}, [dst]!
          .unreq dst0_last_final // q6
          .unreq dst1_last_final // q7

        dst0 .req q6
        vqdmulh.s32 dst0, r_a1, r_b1      /* Initialize dst0 with high part      */

        r_b0 .req q7
        vcadd.i32 r_b0, l_b0, l_b0, #90
        .unreq l_b0 // q2

        /* Subproduct 2: a1*b0
         *
         * I: r_a1 (q5), r_b1 (q4), l_a0 (q0), r_b0 (q7), dst0 (q3)
         * T: 1 (q5)
         * F: r_b1 (q4), l_a0 (q0), r_b0 (q7), dst0 (q6), dst1 (q2)
        */

        dst1 .req q2
        vqdmulh.s32 dst1, r_a1, r_b0      /* Initialize dst1 with high part     */
        .unreq r_a1 // q5

	dst0_old .req q6
	.unreq dst0
	dst0 .req q6

        vsub.s32    dst0, tmp1, dst0_old  /* Correct high product                */
                                          /* Defer halving for later             */
                                          /* Actually store _negative_ of result */
	.unreq tmp1
	.unreq dst0_old // q6

        vmul.u32    tmp, tmp, r_b0      /* Twisted low product                */

        vpst
        vnegt.s32 dst0, dst0

        vqdmulh.s32 tmp, tmp, mod_q     /* High product                       */

        r_a0 .req q3
        vcadd.i32 r_a0, l_a0, l_a0, #90
        .unreq l_a0 // q0

        tmp0 .req q5
        vmul.u32    tmp0, r_a0, mod_q_inv /* Twist one factor using temporary tmp */

        vsub.s32    dst1, tmp, dst1      /* Correct high product                */
                                         /* Defer halving for later              */
                                         /* Actually store _negative_ of result  */
        .unreq tmp  // q1

        /* Subproduct 3: a0*b1
         *
         * I: r_b1 (q4), r_a0 (q3), r_b0 (q7), dst0 (q6), dst1 (q2)
         * T: 1 (q5)
         * F: r_a0 (q3), r_b0 (q7), dst0 (q6), dst1 (q2) pre_l_a0 (q0), pre_l_a1 (q1)
        */

	tmp1 .req q0
        vmul.u32    tmp1, tmp0, r_b1


        vqdmlah.s32 dst1, tmp1, mod_q   /* High product, accumulate onto dst1,
                                         * which stores the _negative_ of the
                                         * subproduct 1.                        */
        .unreq tmp1 // q0

          l_a0 .req q0
          l_a1 .req q1
 	  /* Preload for next iteration */
	  vld20.u32 {l_a0,l_a1}, [in_A]

        vqdmulh.s32 r_b1, r_a0, r_b1    /* Can overwrite r_b1 here              */

    	  /* Preload for next iteration */
          vld21.u32 {l_a0,l_a1}, [in_A]!

        vhsub.s32   dst1, r_b1, dst1    /* Correct high product                 */
                                        /* Late halving, encompassing also the
                                         * first subproduct.                    */
                                        /* Note that, so far, dst1 contained
                                         * -pre + high_correct.
                                         * After this step, it's
                                         * high - ( -pre + high_correct )
                                         * = pre + high - high_correct,
                                         * which is what we want.               */

        .unreq r_b1 // q4

        /* Finalize dst1
         *
         * - Initial allocations: r_a0 (q3), r_b0 (q7),
         *                        dst0 (q6), dst1 (q2)
         *                        preloaded l_a0 (q0), l_a1 (q1)
         * - Final allocations: r_a0 (q5), r_b0 (q7),
         *                      dst0 (q3), dst1_final (q7)
         *                      preloaded l_a0 (q0), l_a1 (q1)
         */

        /* Subproduct 4: a0*b0 */

        /*
         * Vector register allocation state:
         * - Initial allocations: r_a0 (q3), r_b0 (q7),
         *                        dst0 (q6), dst1_final (q7)
         *                        preloaded l_a0 (q0), l_a1 (q1)
         * - Temporary allocations: 1 (q4)
         * - Final allocations: dst1_final (q7) , dst0 (q4)
         *                      preloaded l_a0 (q0), l_a1 (q1)
         */

        tmp .req q4
        vmul.u32    tmp, tmp0, r_b0      /* Twisted low product                 */
	.unreq tmp0

          r_a1 .req q5
          vcadd.i32 r_a1, l_a1, l_a1, #90
          .unreq l_a1 // q1

	tmp0 .req q1
        vqdmulh.s32 tmp0, r_a0, r_b0    /* Write high-product into temporary   */
        .unreq r_a0 // q3
	.unreq r_b0 // q7

        dst1_final .req q7
        vcadd.s32 dst1_final, dst1, dst1, #270
        .unreq dst1 // q2

        vqdmlah.s32 dst0, tmp, mod_q     /* High product, accumulate onto tmp,
                                           * which stores the _negative_ of the
                                           * subproduct 1.                       */
	.unreq tmp // q4

  	  /* Preload for next iteration */
	  l_b0 .req q2
          l_b1 .req q3
          vld20.u32 {l_b0,l_b1}, [in_B]

	dst0_old .req q6
	.unreq dst0
	dst0 .req q1
        vhsub.s32   dst0, tmp0, dst0_old   /* Correct high product                */
                                          /* Late halving, encompassing also the
                                           * first subproduct.                   */
                                          /* Note that, so far, tmp contained
                                           * -pre + high_correct.
                                           * After this step, it's
                                           * high - ( -pre + high_correct )
                                           * = pre + high - high_correct,
                                           * which is what we want.              */

        .unreq tmp0 // q1
	.unreq dst0_old

  	  /* Preload for next iteration */
          vld21.u32 {l_b0,l_b1}, [in_B]!

        /* Finalize dst0
         *
         * - Initial allocations: dst1_final (q7) , dst0 (q5)
         * - Final   allocations: dst0_final (q6), dst1_final (q7)
         */
        dst0_final .req q6
        vcadd.s32 dst0_final, dst0, dst0, #270
        .unreq dst0 // q1

	le lr, cyclic_mul_deg4_u32_alt_mve_loop_start

cyclic_mul_deg4_u32_alt_mve_loop_end:

        /* Store results */
        vst20.s32 {dst0_final, dst1_final}, [dst]
        vst21.s32 {dst0_final, dst1_final}, [dst]!

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

	.unreq l_a0
	.unreq l_b0
	.unreq l_b1
	.unreq r_a1

        .unreq cnt

.type montgomery_pt_u32_odd_mve, %function
.global montgomery_pt_u32_odd_mve
montgomery_pt_u32_odd_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mod_q     .req r10
        mod_q_inv .req r9

        l_a .req q1
        l_b .req q2
        l_d .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        tmp0 .req q4
        tmp1 .req q5

        l_at .req q6

        cnt .req r8
        mov cnt, #(VECTOR_LENGTH / 4)

        ldr mod_q,     [in_B], #+4 /* Modulus */
        ldr mod_q_inv, [in_B], #+4 /* Inverse */

        wls lr, cnt, montgomery_pt_u32_odd_mve_loop_end

montgomery_pt_u32_odd_mve_loop_start:

        vldrw.s32 l_a, [in_A], #+16
        vmul.u32 l_at, l_a, mod_q_inv
        vldrw.s32 l_b, [in_B], #+16
        vqrdmulh.s32 tmp0, l_a, l_b
        vmul.u32 tmp1, l_at, l_b
        vqrdmlah.s32 tmp0, tmp1, mod_q
        vstrw.s32 tmp0, [dst], #+16

        le lr, montgomery_pt_u32_odd_mve_loop_start

montgomery_pt_u32_odd_mve_loop_end:

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr


.data
.align 4
const_mod_q32:
        .word MODULUS_Q32
        .word MODULUS_Q32_INV_U32
        .word MODULUS_Q32_INV_U32_NEG
.text
.type montgomery_pt_u32_mve, %function
.global montgomery_pt_u32_mve
.align 4
mod_addr:
        .word const_mod_q32
.align 4
montgomery_pt_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mod_q     .req r10
        mod_q_inv .req r9

        l_a .req q1
        l_b .req q2
        l_d .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        tmp0 .req q4
        tmp1 .req q5
        res  .req q7

        l_at .req q6

        mod_q_addr .req r8
        ldr mod_q_addr, mod_addr
        ldrd mod_q, mod_q_inv, [mod_q_addr]
        .unreq mod_q_addr

        cnt .req r8
        mov cnt, #((VECTOR_LENGTH / 4) - 2)

        /*
         * First iteration
        */

        vldrw.s32 l_a, [in_A], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Preload b */
        vldrw.s32 l_b, [in_B], #+16

        /* Correction term */
        vqdmulh.s32 tmp1, tmp1, mod_q

        wls lr, cnt, montgomery_pt_u32_mve_loop_end

montgomery_pt_u32_mve_loop_start:

        /* Twisted low multiply */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction term from last iteration */
        vhsub.s32 res, tmp0, tmp1

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Preload l_a for the next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Preload b */
        vldrw.s32 l_b, [in_B], #+16

        /* Compute correction */
        vqdmulh.s32 tmp1, tmp1, mod_q

        /* Late store from last iteration */
        vstrw.s32 res, [dst], #+16

        le lr, montgomery_pt_u32_mve_loop_start

montgomery_pt_u32_mve_loop_end:

        /*
         * Last iteration
        */

        /* Twisted low multiply */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction term from last iteration */
        vhsub.s32 res, tmp0, tmp1

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Late store from last iteration */
        vstrw.s32 res, [dst], #+16

        /* Can't do anything about the following sequence
         * which doesn't pipeline well - but it's only one iteration. */

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        vqdmulh.s32 tmp1, tmp1, mod_q
        vhsub.s32 res, tmp0, tmp1
        vstrw.s32 res, [dst], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

.text
.type montgomery_pt_acc_u32_mve, %function
.global montgomery_pt_acc_u32_mve
.align 4
montgomery_pt_acc_u32_mve_mod_addr:
        .word const_mod_q32
.align 4
montgomery_pt_acc_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mod_q     .req r10
        mod_q_inv .req r9

        l_a .req q1
        l_b .req q2
        old .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        tmp0 .req q4
        tmp1 .req q5
        res  .req q7

        l_at .req q6

        mod_q_addr .req r8
        ldr mod_q_addr, montgomery_pt_acc_u32_mve_mod_addr
        ldrd mod_q, mod_q_inv, [mod_q_addr]
        .unreq mod_q_addr

        cnt .req r8
        mov cnt, #((VECTOR_LENGTH / 4) - 2)

        /*
         * First iteration
        */

        vldrw.s32 l_a, [in_A], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Preload b */
        vldrw.s32 l_b, [in_B], #+16

        /* Correction term */
        vqdmulh.s32 tmp1, tmp1, mod_q

        wls lr, cnt, montgomery_pt_acc_u32_mve_loop_end

montgomery_pt_acc_u32_mve_loop_start:

        /* Twisted low multiply */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction term from last iteration */
        vhsub.s32 res, tmp0, tmp1

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Preload l_a for the next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Preload b */
        vldrw.s32 l_b, [in_B], #+16

        /* Compute correction */
        vqdmulh.s32 tmp1, tmp1, mod_q

        /* Late store-accumulate from last iteration */
        vldrw.s32 old, [dst]
        vadd.s32 res, res, old
        vstrw.s32 res, [dst], #+16

        le lr, montgomery_pt_acc_u32_mve_loop_start

montgomery_pt_acc_u32_mve_loop_end:

        /*
         * Last iteration
        */

        /* Twisted low multiply */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction term from last iteration */
        vhsub.s32 res, tmp0, tmp1

        /* High multiply */
        vqdmulh.s32 tmp0, l_a, l_b

        /* Late store from last iteration */
        vldrw.s32 old, [dst]
        vadd.s32 res, res, old
        vstrw.s32 res, [dst], #+16

        /* Can't do anything about the following sequence
         * which doesn't pipeline well - but it's only one iteration. */

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        vqdmulh.s32 tmp1, tmp1, mod_q
        vhsub.s32 res, tmp0, tmp1
        vldrw.s32 old, [dst]
        vadd.s32 res, res, old
        vstrw.s32 res, [dst], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

.text
.type montgomery_pt_round_acc_u32_mve, %function
.global montgomery_pt_round_acc_u32_mve
.align 4
montgomery_pt_round_acc_u32_mve_mod_addr:
        .word const_mod_q32
.align 4
montgomery_pt_round_acc_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mod_q     .req r10
        mod_q_inv .req r9

        l_a .req q1
        l_b .req q2
        oldA .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        tmp0 .req q4
        tmp1 .req q5
        oldB  .req q7

        l_at .req q6

        mod_q_addr .req r8
        ldr mod_q_addr, montgomery_pt_round_acc_u32_mve_mod_addr
        ldr mod_q, [mod_q_addr]
        ldr mod_q_inv, [mod_q_addr,#+8]
        .unreq mod_q_addr

        cnt .req r8
        mov cnt, #((VECTOR_LENGTH / 8) - 2)

        /*
         * First iteration
        */

        /* Load a-input */
        vldrw.s32 l_a, [in_A], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst, #+16]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst], #+16

        wls lr, cnt, montgomery_pt_round_acc_u32_mve_loop_end

montgomery_pt_round_acc_u32_mve_loop_start:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst, #+16]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldB, [dst], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst, #+16]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst], #+16

        le lr, montgomery_pt_round_acc_u32_mve_loop_start

montgomery_pt_round_acc_u32_mve_loop_end:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst, #+16]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldB, [dst], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst, #+16]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst], #+16

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        vstrw.s32 oldB, [dst]

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b
        .unreq oldA
        .unreq in_A
        .unreq in_B
        .unreq dst
        .unreq tmp0
        .unreq tmp1
        .unreq oldB
        .unreq l_at
        .unreq cnt

.text
.type montgomery_pt_round_acc_u32_x2_mve, %function
.global montgomery_pt_round_acc_u32_x2_mve
.align 4
montgomery_pt_round_acc_u32_x2_mve_mod_addr:
        .word const_mod_q32
.align 4
montgomery_pt_round_acc_u32_x2_mve:
        push {r4-r12,lr}   // Amount of data: 40 Bytes
        vpush {d0-d15}     // Amount of data: 128 bytes
                           // Total: 168 Bytes

        mod_q     .req r10
        mod_q_inv .req r9

        /* q0 still unused */
        l_a  .req q1
        l_b  .req q2
        tmp0 .req q3
        tmp1 .req q4
        l_at .req q5
        oldA .req q6
        oldB .req q7

        in_A0 .req r0
        in_A1 .req r1
        dst0  .req r2
        dst1  .req r3

        in_B  .req r4
        ldr in_b, [sp, #(10*4 + 8*16)]

        mod_q_addr .req r8
        ldr mod_q_addr, montgomery_pt_round_acc_u32_x2_mve_mod_addr
        ldr mod_q, [mod_q_addr]
        ldr mod_q_inv, [mod_q_addr,#+8]
        .unreq mod_q_addr

        cnt .req r14
        mov cnt, #((VECTOR_LENGTH / 4) - 2)

        /*
         * First iteration
        */

        /* Load a-input */
        vldrw.s32 l_a, [in_A0], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16

        wls cnt, cnt, montgomery_pt_round_acc_u32_x2_mve_loop_end

montgomery_pt_round_acc_u32_x2_mve_loop_start:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16

        le cnt, montgomery_pt_round_acc_u32_x2_mve_loop_start

montgomery_pt_round_acc_u32_x2_mve_loop_end:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]

        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16

        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv

        /* Correction */
        vadd.s32 oldA, tmp0, oldA

        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b

        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16

        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b

        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]

        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q

        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16

        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB

        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b
        .unreq oldA
        .unreq in_A0
        .unreq in_A1
        .unreq in_B
        .unreq dst0
        .unreq dst1
        .unreq tmp0
        .unreq tmp1
        .unreq oldB
        .unreq l_at
        .unreq cnt

.text
.type montgomery_pt_round_acc_u32_x4_mve, %function
.global montgomery_pt_round_acc_u32_x4_mve
.align 4
montgomery_pt_round_acc_u32_x4_mve_mod_addr:
        .word const_mod_q32
.align 4
montgomery_pt_round_acc_u32_x4_mve:
        push {r4-r12,lr}   // Amount of data: 40 Bytes
        vpush {d0-d15}     // Amount of data: 128 bytes
                           // Total: 168 Bytes

        mod_q     .req r10
        mod_q_inv .req r9

        /* q0 still unused */
        l_a  .req q1
        l_b  .req q2
        tmp0 .req q3
        tmp1 .req q4
        l_at .req q5
        oldA .req q6
        oldB .req q7

        in_A0 .req r0
        in_A1 .req r1
        in_A2 .req r2
        in_A3 .req r3
        dst0  .req r4
        dst1  .req r5
        dst2  .req r6
        dst3  .req r7

        in_B  .req r12

        /* Load arguments from stack */
        ldrd dst0, dst1, [sp, #(10*4+8*16+0 )]
        ldrd dst2, dst3, [sp, #(10*4+8*16+8 )]
        ldr  in_b,       [sp, #(10*4+8*16+16)]

        mod_q_addr .req r8
        ldr mod_q_addr, montgomery_pt_round_acc_u32_x4_mve_mod_addr
        ldr mod_q, [mod_q_addr]
        ldr mod_q_inv, [mod_q_addr,#+8]
        .unreq mod_q_addr

        cnt .req r14
        mov cnt, #((VECTOR_LENGTH / 4) - 2)

        /*
         * First iteration
        */

        /* Load a-input */
        vldrw.s32 l_a, [in_A0], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A2], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16
        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A3], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst2]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst3]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst2], #+16

        wls cnt, cnt, montgomery_pt_round_acc_u32_x4_mve_loop_end

montgomery_pt_round_acc_u32_x4_mve_loop_start:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldB, [dst3], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A2], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16
        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A3], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst2]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst3]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst2], #+16

        le cnt, montgomery_pt_round_acc_u32_x4_mve_loop_start

montgomery_pt_round_acc_u32_x4_mve_loop_end:

        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* Load b-input */
        vldrw.s32 l_b, [in_B], #+16
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A1], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst0]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldB, [dst3], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A2], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst1]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst0], #+16
        /* Twist a (already loaded)*/
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A3], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldA, [dst2]
        /* Correction term */
        vqrdmlah.s32 oldA, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldB, [dst1], #+16
        /* Twist a */
        vmul.u32 l_at, l_a, mod_q_inv
        /* Correction */
        vadd.s32 oldA, tmp0, oldA
        /* High multiply */
        vqrdmulh.s32 tmp0, l_a, l_b
        /* Preload a for next iteration */
        vldrw.s32 l_a, [in_A0], #+16
        /* Twisted low multiply */
        vmul.u32 tmp1, l_at, l_b
        /* Load old value to accumulate onto */
        vldrw.s32 oldB, [dst3]
        /* Correction term */
        vqrdmlah.s32 oldB, tmp1, mod_q
        /* Store old result */
        vstrw.s32 oldA, [dst2], #+16
        /* Correction from last iteration */
        vadd.s32 oldB, tmp0, oldB
        /* Store old result */
        vstrw.s32 oldB, [dst3], #+16

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

        .unreq l_a
        .unreq l_b
        .unreq oldA
        .unreq in_A0
        .unreq in_A1
        .unreq in_A2
        .unreq in_A3
        .unreq in_B
        .unreq dst0
        .unreq dst1
        .unreq dst2
        .unreq dst3
        .unreq tmp0
        .unreq tmp1
        .unreq oldB
        .unreq l_at
        .unreq cnt


.type montgomery_pt_u16_odd_mve, %function
.global montgomery_pt_u16_odd_mve
montgomery_pt_u16_odd_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mod_q     .req r10
        mod_q_inv .req r9

        l_a .req q1
        l_b .req q2
        l_d .req q3

        in_A .req r0
        in_B .req r1
        dst  .req r2

        tmp0 .req q4
        tmp1 .req q5

        l_at .req q6

        cnt .req r8
        mov cnt, #(VECTOR_LENGTH / 8)

        ldrh mod_q,     [in_B], #+2 /* Modulus */
        ldrh mod_q_inv, [in_B], #+2 /* Inverse */

        wls lr, cnt, montgomery_pt_u16_odd_mve_loop_end

montgomery_pt_u16_odd_mve_loop_start:

        vldrh.s16 l_a, [in_A], #+16
        vmul.u16 l_at, l_a, mod_q_inv
        vldrh.s16 l_b, [in_B], #+16
        vqrdmulh.s16 tmp0, l_a, l_b
        vmul.u16 tmp1, l_at, l_b
        vqrdmlah.s16 tmp0, tmp1, mod_q
        vstrh.s16 tmp0, [dst], #+16

        le lr, montgomery_pt_u16_odd_mve_loop_start

montgomery_pt_u16_odd_mve_loop_end:

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr


.type montgomery_u16_core_mve, %function
.global montgomery_u16_core_mve
montgomery_u16_core_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mov r10, #(-MODULUS_Q16) /* Modulus */

        /* Vector of uint16 values to be multiplied */
        vldrh.s16 q0, [r0]
        /* Half of the even scalar to multiply with */
        ldrh r4, [r1,#0]
        /* Precomputed product of scalar and Montgomery constant */
        ldrh r5, [r1,#2]

        /* High product */
        vqdmulh.s16 q1, q0, r4
        /* Adjusted low product */
        vmul.u16 q0, q0, r5

        /* Double-Multiply with modulus */
        vqdmulh.s16 q0, q0, r10
        vsub.s16    q1, q1, q0

        /* Store result */
        vstrh.s16 q1, [r2]

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr

.type montgomery_u16_round_mve, %function
.global montgomery_u16_round_mve
montgomery_u16_round_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mov r10, #(MODULUS_Q16)
        movw r9, #:lower16:MODULUS_Q16_INV_U16
        mov r10, #(-3329) /* Modulus */
        mov r8, #8        /* Iterations */

        /* Half of the even scalar to multiply with */
        ldrh r4, [r1,#0]
        /* Precomputed product of scalar and Montgomery constant */
        ldrh r5, [r1,#2]

        wls lr, r8, montgomery_u16_round_mve_loop_end
montgomery_u16_round_mve_loop_start:

        /* Vector of uint16 values to be multiplied */
        vldrh.s16 q0, [r0], #16

        /* High product */
        vqrdmulh.s16 q1, q0, r4
        /* Adjusted low product */
        vmul.u16 q0, q0, r5

        /* Double-Multiply with modulus */
        vqrdmlah.s16 q1, q0, r10

        /* Store result */
        vstrh.s16 q1, [r2], #16

        le lr, montgomery_u16_round_mve_loop_start
montgomery_u16_round_mve_loop_end:

        vpop {d0-d15}
        pop {r4-r12,lr}

        bx lr


.type cyclic_mul_u16_core_mve, %function
.global cyclic_mul_u16_core_mve
cyclic_mul_u16_core_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        mov r10, #(MODULUS_Q16)
        movw r9, #:lower16:MODULUS_Q16_INV_U16

        /* Load polynomials to multiply
         *
         * Lanes come in pairs representing real and imaginary parts.
         */
        vldrh.s16 q0, [r0]
        vldrh.s16 q1, [r1]

        /* Step 1:
         *
         * Apply evaluation at -1, +1:
         * k[X]/(X^2 - 1) -> k[X]/(X+1) x k[X]/(X-1)
         *
         * Concretely:
         *  (a,b) |-> (a-b, a+b)
         *
         * This can be implemented as a rotate-and-add
         * operation, treating (a,b) as a complex number
         * a+bi, and noticing that a rotation by 90
         * gives i(a+bi) = -b + ai, so
         * a+bi + i(a+bi) = (a-b) + (a+b)i
         *
         * This rotate-90-and-add can is a single
         * instruction in MVE.
         */
        vcadd.i16 q0, q0, q0, #90
        vmul.u16 q2, q0, r9
        vcadd.i16 q1, q1, q1, #90

        /* Montgomery multiplications
         *
         * 1x mul-high
         * 1x mul-low
         * 1x mul-high
         * 1x subtract
         *
         * Needs 1x free temporary vector register
         */
        vqdmulh.s16 q0, q0, q1
        vmul.u16 q1, q2, q1
        /*vmul.u16 q0, q0, r9*/
        vqdmulh.s16 q1, q1, r10
        /* Now we've actually computed twice the desired result,
         * but we can compensate by using vhsub */
        vhsub.s16 q0, q0, q1

        /*
         * Finally, interpolation step:
         * (eval(-1)=x,eval(+1)=y) |-> 1/2 (y-x) + 1/2 (x+y)
         *
         * This can be done as a single VCHADD, with
         * rotate by 270: -i(a+bi) = b - ai
         *
         * We can't naively use vhcadd here because the
         * multiplication by 1/2 is modulo q.
         */
        vcadd.s16 q0, q0, q0, #270

        vstrh.s16 q0, [r2]

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr

.type cyclic_mul_u16_mve, %function
.global cyclic_mul_u16_mve
cyclic_mul_u16_mve:
        push {r4-r12, lr}
        vpush {d0-d15}

        mov r10, #(MODULUS_Q16)
        movw r9, #:lower16:MODULUS_Q16_INV_U16

        /* Number of inner iterations */
        mov r4, #(VECTOR_LENGTH/16 - 1)

        vldrh.s16 q0, [r0], #16
        vcadd.i16 q0, q0, q0, #90
        vldrh.s16 q1, [r1], #16
        vmul.u16 q2, q0, r9
        vcadd.i16 q1, q1, q1, #90
        vqdmulh.s16 q0, q0, q1
          vstrh.s16 q4, [r2]
        vmul.u16 q1, q2, q1
          vldrh.s16 q3, [r0], #16
        vqdmulh.s16 q1, q1, r10
          vcadd.i16 q3, q3, q3, #90
          vldrh.s16 q4, [r1], #16
        vhsub.s16 q0, q0, q1
          vmul.u16 q5, q3, r9
        vcadd.s16 q1, q0, q0, #270
        vstrh.s16 q1, [r2], #16

        wls lr, r4, cyclic_mul_u16_loop_end
cyclic_mul_u16_loop_start:
        vcadd.i16 q4, q4, q4, #90
        vqdmulh.s16 q3, q3, q4
          vldrh.s16 q0, [r0], #16
        vmul.u16 q4, q5, q4
          vcadd.i16 q0, q0, q0, #90
        vqdmulh.s16 q4, q4, r10
          vldrh.s16 q1, [r1], #16
        vhsub.s16 q3, q3, q4
          vmul.u16 q2, q0, r9
        vcadd.s16 q4, q3, q3, #270
        vstrh.s16 q4, [r2], #16

        vcadd.i16 q1, q1, q1, #90
        vqdmulh.s16 q0, q0, q1
          vldrh.s16 q3, [r0], #16
        vmul.u16 q1, q2, q1
          vcadd.i16 q3, q3, q3, #90
        vqdmulh.s16 q1, q1, r10
          vldrh.s16 q4, [r1], #16
        vhsub.s16 q0, q0, q1
          vmul.u16 q5, q3, r9
        vcadd.s16 q1, q0, q0, #270
        vstrh.s16 q1, [r2], #16
        le lr, cyclic_mul_u16_loop_start
cyclic_mul_u16_loop_end:

        vcadd.i16 q4, q4, q4, #90
        vqdmulh.s16 q3, q3, q4
          vldrh.s16 q0, [r0], #16
        vmul.u16 q4, q5, q4
          vcadd.i16 q0, q0, q0, #90
        vqdmulh.s16 q4, q4, r10
          vldrh.s16 q1, [r1], #16
        vhsub.s16 q3, q3, q4
          vmul.u16 q2, q0, r9
        vcadd.s16 q4, q3, q3, #270
        vstrh.s16 q4, [r2], #16

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr


.type cyclic_mul_u16_multi_naive_mve, %function
.global cyclic_mul_u16_multi_naive_mve
cyclic_mul_u16_multi_naive_mve:
        push {r4-r12, lr}
        vpush {d0-d15}

        mov r10, #(MODULUS_Q16)
        movw r9, #:lower16:MODULUS_Q16_INV_U16

        vldrh.s16 q0, [r0], #16
        vldrh.s16 q1, [r1], #16
        vcadd.i16 q2, q0, q0, #90
        vmul.u16  q3, q2, r9
        vcadd.i16 q4, q1, q1, #90
        vqdmulh.s16 q0, q2, q4
        vmul.u16    q1, q3, q4
        vqdmulh.s16 q1, q1, r10
        vhsub.s16 q0, q0, q1
        vcadd.s16 q1, q0, q0, #270
        vstrh.s16 q1, [r2], #16

        vldrh.s16 q0, [r0], #16
        vldrh.s16 q1, [r1], #16
        vcadd.i16 q2, q0, q0, #90
        vmul.u16  q3, q2, r9
        vcadd.i16 q4, q1, q1, #90
        vqdmulh.s16 q0, q2, q4
        vmul.u16    q1, q3, q4
        vqdmulh.s16 q1, q1, r10
        vhsub.s16 q0, q0, q1
        vcadd.s16 q1, q0, q0, #270
        vstrh.s16 q1, [r2], #16

        vldrh.s16 q0, [r0], #16
        vldrh.s16 q1, [r1], #16
        vcadd.i16 q2, q0, q0, #90
        vmul.u16  q3, q2, r9
        vcadd.i16 q4, q1, q1, #90
        vqdmulh.s16 q0, q2, q4
        vmul.u16    q1, q3, q4
        vqdmulh.s16 q1, q1, r10
        vhsub.s16 q0, q0, q1
        vcadd.s16 q1, q0, q0, #270
        vstrh.s16 q1, [r2], #16

        vpop {d0-d15}
        pop {r4-r12, lr}
        bx lr

.type cyclic_mul_u32_mve, %function
.global cyclic_mul_u32_mve
cyclic_mul_u32_mve:
        push {r4-r12,lr}
        vpush {d0-d15}

        movw r10, #:lower16:MODULUS_Q32
        movt r10, #:upper16:MODULUS_Q32

        ldr r9, [r2]
        mov r3, #(VECTOR_LENGTH / 4) /* Number of iterations */
        wls lr, r3, cyclic_mul_u32_loop_end
cyclic_mul_u32_loop_start:
        vldrw.s32 q1, [r0], #16
        vcadd.i32 q0, q1, q1, #90
        vldrw.s32 q2, [r1], #16
        vcadd.i32 q1, q2, q2, #90
        vqdmulh.s32 q2, q0, q1
        vmul.u32    q0, q0, r9
        vmul.u32    q1, q0, q1
        vqdmulh.s32 q1, q1, r10
        vhsub.s32 q2, q2, q1
        vcadd.s32 q1, q2, q2, #270
        vstrw.s32 q1, [r2], #16
        le lr, cyclic_mul_u32_loop_start
cyclic_mul_u32_loop_end:

        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr
