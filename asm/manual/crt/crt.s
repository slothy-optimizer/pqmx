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

#include "crt_const.h"

        .syntax unified

.type crt_s32_dechunk_chunk_add_optim, %function
.global crt_s32_dechunk_chunk_add_optim
        .data
        .align 4
crt_s32_dechunk_chunk_add_optim_data:
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
        .text
        .align 4
crt_s32_dechunk_chunk_add_optim_data_ptr:
        .word crt_s32_dechunk_chunk_add_optim_data
crt_s32_dechunk_chunk_add_optim:

        loop_cnt       .req r14
        init_tmp       .req r10 // Temporary prior to main loop
        init_tmp2      .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA0          .req r4
        curB0          .req r5
        mask           .req r6
        rcarry         .req r7
        curA1          .req r9
        curB1          .req r10

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q6
        tmp            .req q5

        in0p           .req q7

        const_rshift22 .req r8
        cur0 .req q0
        cur1 .req q1
        masked0 .req q2
        masked1 .req q4

        push {r4-r11,lr}
        vpush {d8-d15}

        ldr addr, crt_s32_dechunk_chunk_add_optim_data_ptr
        mov loop_cnt, size, LSR #3
        subs loop_cnt, #1

        ldrd init_tmp, init_tmp2, [addr], #+8
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp, init_tmp2}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+(9+4)*4)]

        vldrw.u32   in0p, [src0], #+16
        vldrw.u32   tmp, [src0p], #+16
        vadd.i32    in0p, in0p, tmp
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vrshr.s32   in0, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmp, [src1p], #+16
        vmla.s32    in0p, in0, mod_p_neg
        vadd.s32    in1, in1, tmp
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vldrw.u32   tmpp, [src0p], #+16
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   in0p, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    in0, in0p, mod_p_neg
        vldrw.u32   in0p, [src0], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vadd.i32    quot_low, quot_low, tmpp
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmpp, [src0p], #+16
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0p, in0p, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vrshr.s32   in0, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    in0p, in0, mod_p_neg
        vldrw.u32   in0, [src0], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vadd.i32    quot_low, quot_low, tmpp
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmpp, [src0p], #+16
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   in0p, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vldrw.u32   tmp, [src1p], #+16
        vmla.s32    in0, in0p, mod_p_neg
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        /* At this point, we have non-canonical limbs of 32-bit.
        * Iterate over them in scalar for reduction to canonical form. */
        /* Restore mask and original destination pointer */
        pop {dst, size, mask, const_rshift22}
        mov rcarry, #0
        mov loop_cnt, size, LSR #3
        sub loop_cnt, loop_cnt, #1

        ldrd curA0, curB0, [dst]
        add rcarry, curA0, rcarry, ASR #22
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        add rcarry, curA0, rcarry, ASR #22
        strd curA1, curB1, [dst], #+8
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #+8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        le loop_cnt, 1b
2:
        strd curA1, curB1, [dst], #+8

        mov loop_cnt, size, LSR #4
        sub loop_cnt, loop_cnt, #1

        vldrw.u32 cur0, [dst]
        vand.u32 masked0, cur0, qmask
        vshlc cur0, rcarry, #32
        vqdmlah.s32 masked0, cur0, const_rshift22
        vldrw.u32 cur1, [dst, #+16]
        vand.u32 masked1, cur1, qmask
        vstrw.u32 masked0, [dst], #+16
        vshlc cur1, rcarry, #32
        vqdmlah.s32 masked1, cur1, const_rshift22

        wls loop_cnt, loop_cnt, 2
        .align 2
 1:
        vldrw.u32 cur0, [dst, #+16]
        vand.u32 masked0, cur0, qmask
        vstrw.u32 masked1, [dst], #+16
        vshlc cur0, rcarry, #32
        vqdmlah.s32 masked0, cur0, const_rshift22
        vldrw.u32 cur1, [dst, #+16]
        vand.u32 masked1, cur1, qmask
        vstrw.u32 masked0, [dst], #+16
        vshlc cur1, rcarry, #32
        vqdmlah.s32 masked1, cur1, const_rshift22
        le loop_cnt, 1b
 2:
        vstrw.u32 masked1, [dst], #+16

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA0
        .unreq curB0
        .unreq curA1
        .unreq curB1
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq const_rshift22
        .unreq in0
        .unreq in0p
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect
        .unreq tmp
        .unreq tmpp

.type crt_s32_dechunk_chunk_optim, %function
        .global crt_s32_dechunk_chunk_optim
        .data
        .align 4
crt_s32_dechunk_chunk_optim_data:
        .word (1<<(31-(CRT_32_P_REFINED_BARRETT_SHIFT+1)))
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(9))
        .word -CRT_32_P_TWISTED
        .text
        .align 4
crt_s32_dechunk_chunk_optim_data_ptr:
        .word crt_s32_dechunk_chunk_optim_data
crt_s32_dechunk_chunk_optim:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_tw       .req r4
        mod_q_neg      .req r5
        const_prshift  .req r6
        const_shift9   .req r7
        const_rshift22 .req r10
        p_inv_mod_q    .req r9
        p_inv_mod_q_tw .req r8
        rcarry         .req r11
        rcarry_red     .req r12

        in0p           .req q7 // q0
        in0            .req q0 // q6
        in1            .req q5 // q2
        diff           .req in1
        quot_low       .req q2 // q5
        qmask          .req q1 // q3
        tmpp           .req q4 // q7
        tmp            .req q6 // q1
        red_tmp        .req q3 // q4

        push {r4-r11,lr}
        sub.w sp, sp, #(4*16)

        vstrw.32 q7, [sp, #(0*16)]
        mov loop_cnt, size, LSR #3
        vstrw.32 q6, [sp, #(1*16)]
        sub loop_cnt, loop_cnt, #1
        vstrw.32 q5, [sp, #(2*16)]

        ldr  addr, crt_s32_dechunk_chunk_optim_data_ptr
        ldr  const_prshift,                [addr], #+4
        ldrd init_tmp, const_rshift22,     [addr], #+8
        ldrd mod_p,        mod_q_neg,      [addr], #+8
        ldrd p_inv_mod_q,  p_inv_mod_q_tw, [addr], #+8

        vldrw.u32   in0p, [src0], #+16
        vqdmulh.s32 diff, in0p, mod_p_tw
        ldrd const_shift9, mod_p_tw,       [addr], #+8
        .unreq addr

        vqrdmulh.s32 tmp, diff, const_prshift
        vdup.u32 qmask, init_tmp
        vmla.s32    in0p, tmp, mod_p
        vldrw.u32   in1, [src1], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vstrw.32 q4, [sp, #(3*16)]
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
          vldrw.u32   in0, [src0], #+16
        vmla.s32    diff, tmp, mod_q_neg
        movs.w rcarry,     #0
        vmul.u32    quot_low,  diff, mod_p
        movs.w rcarry_red, #0
        vqdmulh.s32 tmp, diff, mod_p
        vshr.u32    tmpp, quot_low,  #22
        vmul.u32    tmp, tmp, const_shift9
        vand.u32    quot_low,  quot_low, qmask

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vqdmulh.s32 diff, in0, mod_p_tw
          vorr.u32    tmpp, tmpp, tmp
        vqrdmulh.s32 tmp, diff, const_prshift
          vshlc       tmpp, rcarry, #32
        vmla.s32    in0, tmp, mod_p
          vadd.i32    in0p, in0p, tmpp
        vldrw.u32   in1, [src1], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
          vadd.u32    tmpp, quot_low, in0p
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
          vldrw.u32   in0p, [src0], #+16
        vmla.s32    diff, tmp, mod_q_neg
          vand.u32 red_tmp, tmpp, qmask
        vmul.u32    quot_low,  diff, mod_p
          vshlc tmpp, rcarry_red, #32
          vqdmlah.s32 red_tmp, tmpp, const_rshift22
          vstrw.32    red_tmp, [dst], #+16
        vqdmulh.s32 tmp, diff, mod_p
        vshr.u32    tmpp, quot_low,  #22
        vmul.u32    tmp, tmp, const_shift9
        vand.u32    quot_low,  quot_low, qmask

        vqdmulh.s32 diff, in0p, mod_p_tw
          vorr.u32    tmpp, tmpp, tmp
        vqrdmulh.s32 tmp, diff, const_prshift
          vshlc       tmpp, rcarry, #32
        vmla.s32    in0p, tmp, mod_p
          vadd.s32    in0, in0, tmpp
        vldrw.u32   in1, [src1], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
          vadd.s32    tmpp, quot_low, in0
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
          vldrw.u32   in0, [src0], #+16
        vmla.s32    diff, tmp, mod_q_neg
          vand.u32 red_tmp, tmpp, qmask
        vmul.u32    quot_low,  diff, mod_p
          vshlc tmpp, rcarry_red, #32
          vqdmlah.s32 red_tmp, tmpp, const_rshift22
          vstrw.32    red_tmp, [dst], #+16
        vqdmulh.s32 tmp, diff, mod_p
        vshr.u32    tmpp, quot_low,  #22
        vmul.u32    tmp, tmp, const_shift9
        vand.u32    quot_low,  quot_low, qmask

        le loop_cnt, 1b
2:

        vqdmulh.s32 diff, in0, mod_p_tw
          vorr.u32    tmpp, tmpp, tmp
        vqrdmulh.s32 tmp, diff, const_prshift
          vshlc       tmpp, rcarry, #32
        vmla.s32    in0, tmp, mod_p
          vadd.i32    in0p, in0p, tmpp
        vldrw.u32   in1, [src1], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
          vadd.u32    tmpp, quot_low, in0p
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
          vand.u32 red_tmp, tmpp, qmask
        vmul.u32    quot_low,  diff, mod_p
          vshlc tmpp, rcarry_red, #32
          vqdmlah.s32 red_tmp, tmpp, const_rshift22
          vstrw.32    red_tmp, [dst], #+16
        vqdmulh.s32 tmp, diff, mod_p
        vshr.u32    tmpp, quot_low,  #22
        vmul.u32    tmp, tmp, const_shift9
        vand.u32    quot_low,  quot_low, qmask

        vldrw.u32 q7, [sp, #(0*16)]
        vorr.u32    tmpp, tmpp, tmp
        vldrw.u32 q6, [sp, #(1*16)]
        vshlc       tmpp, rcarry, #32
        vldrw.u32 q5, [sp, #(2*16)]
        vadd.s32    in0, tmpp, in0
        vldrw.u32 q4, [sp, #(3*16)]
        vadd.s32    quot_low, quot_low, in0
        ldrd r4, r5, [sp, #(4*16)]
        vand.u32    red_tmp, quot_low, qmask
        ldrd r6, r7, [sp, #(4*16 + 1*8)]
        vshlc       quot_low, rcarry_red, #32
        ldrd r8, r9, [sp, #(4*16 + 2*8)]
        vqdmlah.s32 red_tmp, quot_low, const_rshift22
        ldrd r10, r11, [sp, #(4*16 + 3*8)]
        vstrw.32    red_tmp, [dst], #+16
        adds.w sp, sp, #(4*16+4*8)
        pop {pc}

        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const_prshift
        .unreq const_shift9
        .unreq const_rshift22
        .unreq in0
        .unreq in0p
        .unreq in1
        .unreq tmp
        .unreq tmpp
        .unreq diff
        .unreq quot_low
        .unreq qmask

.type crt_s32_dechunk_chunk_add, %function
.global crt_s32_dechunk_chunk_add
        .align 4
        .data
crt_s32_dechunk_chunk_add_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED

        .text
        .align 4
crt_s32_dechunk_chunk_add_data_ptr:
        .word crt_s32_dechunk_chunk_add_data
crt_s32_dechunk_chunk_add:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA0          .req r3
        curB0          .req r4
        mask           .req r5
        rcarry         .req r7
        curA1          .req r9
        curB1          .req r10

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q6
        tmp            .req q5

        in0p           .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #3
        subs loop_cnt, #1

        ldr addr, crt_s32_dechunk_chunk_add_data_ptr
        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+12*4)]

        vldrw.u32   in0p, [src0], #+16
        vldrw.u32   tmp, [src0p], #+16
        vadd.i32    in0p, in0p, tmp
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vldrw.u32   tmpp, [src0p], #+16
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0p, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0p, in0p, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        /* At this point, we have non-canonical limbs of 32-bit.
        * Iterate over them in scalar for reduction to canonical form. */
        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #2
        sub loop_cnt, loop_cnt, #1

        ldrd curA0, curB0, [dst]
        add rcarry, curA0, rcarry, ASR #22
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        add rcarry, curA0, rcarry, ASR #22
        strd curA1, curB1, [dst], #+8
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #+8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        le loop_cnt, 1b
2:
        strd curA1, curB1, [dst], #+8

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA0
        .unreq curB0
        .unreq curA1
        .unreq curB1
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in0p
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect
        .unreq tmp
        .unreq tmpp

.type crt_s32_dechunk_chunk, %function
.global crt_s32_dechunk_chunk
        .data
        .align 4
crt_s32_dechunk_chunk_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
        .text
        .align 4
crt_s32_dechunk_chunk_data_ptr:
        .word crt_s32_dechunk_chunk_data
crt_s32_dechunk_chunk:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA0          .req r3
        curB0          .req r4
        mask           .req r5
        rcarry         .req r7
        curA1          .req r9
        curB1          .req r10

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q5
        tmp            .req q6

        push {r4-r11,lr}
        vpush {d8-d15}

        ldr addr, crt_s32_dechunk_chunk_data_ptr
        mov loop_cnt, size, LSR #2

        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vldrw.u32   in0, [src0], #+16
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1], #+16
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vadd.s32    in0, tmpp, in0
        vmla.s32    quot_low, in0, const1
        vstrw.32    quot_low, [dst], #+16
        le loop_cnt, 1b
2:

        /* At this point, we have non-canonical limbs of 32-bit.
         * Iterate over them in scalar for reduction to canonical form. */

        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #2
        sub loop_cnt, loop_cnt, #1

        ldrd curA0, curB0, [dst]
        add rcarry, curA0, rcarry, ASR #22
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        add rcarry, curA0, rcarry, ASR #22
        strd curA1, curB1, [dst], #+8
        and curA0, rcarry, mask
        add rcarry, curB0, rcarry, ASR #22
        ldrd curA1, curB1, [dst, #8]
        and curB0, rcarry, mask

        add rcarry, curA1, rcarry, ASR #22
        strd curA0, curB0, [dst], #+8
        and curA1, rcarry, mask
        add rcarry, curB1, rcarry, ASR #22
        ldrd curA0, curB0, [dst, #8]
        and curB1, rcarry, mask

        le loop_cnt, 1b
2:
        strd curA1, curB1, [dst], #+8

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA0
        .unreq curB0
        .unreq curA1
        .unreq curB1
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq tmp
        .unreq tmpp
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect


.type crt_s32_pure_reduce, %function
.global crt_s32_pure_reduce
        .align 4
crt_s32_pure_reduce_data:
        .word CRT_32_P
        .word CRT_32_P_TWISTED
        .word CRT_32_Q
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
crt_s32_pure_reduce:

        loop_cnt .req r14
        dst      .req r0
        src0     .req r1
        src1     .req r2
        size     .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_q          .req r4
        mod_q_neg      .req r5
        p_inv_mod_q    .req r6
        p_inv_mod_q_tw .req r7
        mask           .req r8
        const1         .req r9
        const0         .req r10
        mod_p_tw       .req r11

        in0         .req q0
        in1         .req q1
        diff        .req in1
        quot_low    .req q3
        quot_high   .req q4
        quot        .req q5
        mod_p_vect  .req q6
        tmp         .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        addr .req r12
        adr addr, crt_s32_pure_reduce_data
        ldrd mod_p, mod_p_tw, [addr], #+8
        ldrd mod_q, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        neg mod_p_neg, mod_p
        .unreq addr

        mov const1, #1
        mov const0, #0

        wls loop_cnt, loop_cnt, 2
1:
        // PRELIMINARY ASSUMPTION:
        // x and y are already scaled and reduced

        vldrw.s32 in0, [src0], #+16
        vqdmulh.s32 tmp, in0, mod_p_tw
        vrshr.s32 tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32  in0, tmp, mod_p_neg
        vldrw.s32 in1, [src1], #+16

        /* CRT interpolation of (x mod p) and (y mod q)
         *
         * x + ((y-x)*(p mod q)^{-1} mod q)*p
         */
        vsub.s32 diff, in1, in0

        /* Signed refined Barrett multiplication */
        vqdmulh.s32 quot, diff, p_inv_mod_q_tw
        vrshr.s32   quot, quot, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmul.u32    diff, diff, p_inv_mod_q
        vmla.s32    diff, quot, mod_q_neg

        /* Compute high and low products separately */
        vmul.i32  quot_low,  diff, mod_p_vect
        vmulh.s32 quot_high, diff, mod_p_vect

        /* Need to do a 64-bit addition to quot_high and quot_low   */
        /* Add as u32, and manually add the carry to the upperlanes */
        vadd.u32 quot_low, quot_low, in0
        vpt.u32  HI, in0, quot_low
        vaddt.i32 quot_high, quot_high, const1
        /* Need to add the sign bit of in0 */
        vqdmlah.s32 quot_high, in0, const1

        vst20.32 {quot_low, quot_high}, [dst]
        vst21.32 {quot_low, quot_high}, [dst]!

         le loop_cnt, 1b
 2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1

        .unreq mod_p
        .unreq mod_p_neg
        .unreq mod_q
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq mask
        .unreq const1
        .unreq mod_p_tw

        .unreq in0
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq quot_high
        .unreq quot
        .unreq mod_p_vect
        .unreq tmp

.type crt_s32_chunk_dechunk, %function
.global crt_s32_chunk_dechunk
        .align 4
crt_s32_chunk_dechunk_data:
        // Scatter/Gather offsets
        .word 4*0
        .word 4*1
        .word 4*2
        .word 4*3
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word (1<<(10))
crt_s32_chunk_dechunk:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift22  .req r7
        const_shift10  .req r8
        const1         .req r6

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_high      .req in1
        quot_low       .req q2
        carry          .req q3
        qmask          .req q4    //
        mod_p_vect     .req q5    //
        q_off          .req q6
        tmp            .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_data
        vldrw.u32 q_off, [addr], #+16
        vmul.i32 q_off, q_off, loop_cnt
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd init_tmp, const_shift22, [addr], #+8
        ldr const_shift10, [addr], #+4
        vdup.u32 qmask, init_tmp
        .unreq addr

        veor carry, carry, carry

        movs.n const1, #1

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vldrw.u32   in0, [src0, q_off]
        vldrw.u32   in1, [src1, q_off]
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      src0, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32    tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vand.u32    tmp, quot_low, qmask
        vqdmlah.s32 carry, quot_low, const_shift22
        vstrw.32    tmp, [dst, q_off]
        adds.n      dst, #4

        le loop_cnt, 1b
2:

        /* Use dummy loop for the sake of tail predication */
        mov loop_cnt, #3
        dlstp.32 loop_cnt, loop_cnt
1:
        vldrw.32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vshr.s32  carry, in0, #22
        vand      in0, in0, qmask
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        vldrw.u32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        letp loop_cnt, 1b

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift22
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq carry
        .unreq quot_low
        .unreq quot_high
        .unreq qmask
        .unreq mod_p_vect
        .unreq q_off

.type crt_s32_chunk_dechunk_reduce, %function
.global crt_s32_chunk_dechunk_reduce
        .align 4
crt_s32_chunk_dechunk_reduce_data:
        // Scatter/Gather offsets
        .word 4*0
        .word 4*1
        .word 4*2
        .word 4*3
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_reduce:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift22  .req r7
        const_shift10  .req r8
        const1         .req r6

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_high      .req in1
        quot_low       .req q2
        carry          .req q3
        qmask          .req q4    //
        mod_p_vect     .req q5    //
        q_off          .req q6
        tmp            .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_reduce_data
        vldrw.u32 q_off, [addr], #+16
        vmul.i32 q_off, q_off, loop_cnt
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        neg mod_p_neg, mod_p
        ldrd init_tmp, const_shift22, [addr], #+8
        ldrd const_shift10, mod_p_tw, [addr], #+8
        vdup.u32 qmask, init_tmp
        .unreq addr

        veor carry, carry, carry

        movs.n const1, #1
        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vldrw.u32   in0, [src0, q_off]
        vqdmulh.s32 tmp, in0, mod_p_tw
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   in1, [src1, q_off]
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      src0, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32  tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vand.u32    tmp, quot_low, qmask
        vqdmlah.s32 carry, quot_low, const_shift22
        vstrw.32    tmp, [dst, q_off]
        adds.n      dst, #4

        le loop_cnt, 1b
2:

        /* Use dummy loop for the sake of tail predication */
        mov loop_cnt, #3
        dlstp.32 loop_cnt, loop_cnt
1:
        vldrw.32  in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vshr.s32  carry, in0, #22
        vand      in0, in0, qmask
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        vldrw.u32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        letp loop_cnt, 1b

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift22
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq carry
        .unreq quot_low
        .unreq quot_high
        .unreq qmask
        .unreq mod_p_vect
        .unreq q_off

.type crt_s32_chunk_dechunk_reduce_v2, %function
.global crt_s32_chunk_dechunk_reduce_v2
        .align 4
crt_s32_chunk_dechunk_reduce_v2_data:
        // Scatter/Gather offsets
        .word 4*0
        .word 4*1
        .word 4*2
        .word 4*3
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_reduce_v2:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift22  .req r7
        const_shift10  .req r8
        const1         .req r6

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_high      .req in1
        quot_low       .req q2
        carry          .req q3
        qmask          .req q4    //
        mod_p_vect     .req q5    //
        q_off          .req q6
        tmp            .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_reduce_v2_data
        vldrw.u32 q_off, [addr], #+16
        vmul.i32 q_off, q_off, loop_cnt
        sub loop_cnt, loop_cnt, #1
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        neg mod_p_neg, mod_p
        ldrd init_tmp, const_shift22, [addr], #+8
        ldrd const_shift10, mod_p_tw, [addr], #+8
        vdup.u32 qmask, init_tmp
        .unreq addr

        veor carry, carry, carry

        movs.n const1, #1
        subs.n dst, #4

        vldrw.u32   in0, [src0, q_off]

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        adds.n      src0, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vldrw.u32   in0, [src0, q_off]
        vand.u32    tmp, quot_low, qmask
        vqdmlah.s32 carry, quot_low, const_shift22
        vstrw.32    tmp, [dst, q_off]

        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        adds.n      src0, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.u32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vand.u32    tmp, quot_low, qmask
        vqdmlah.s32 carry, quot_low, const_shift22
        vstrw.32    tmp, [dst, q_off]

        /* Use dummy loop for the sake of tail predication */
        adds.n dst,    #4
        movs.n const1, #3
        dlstp.32 loop_cnt, const1
1:
        vldrw.32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vshr.s32  carry, in0, #22
        vand      in0, in0, qmask
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        vldrw.u32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vstrw.32 in0, [dst, q_off]
        adds.n dst, #4
        letp loop_cnt, 1b

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift22
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq carry
        .unreq quot_low
        .unreq quot_high
        .unreq qmask
        .unreq mod_p_vect
        .unreq q_off

.type crt_s32_chunk_dechunk_reduce_canonical, %function
.global crt_s32_chunk_dechunk_reduce_canonical
        .align 4
crt_s32_chunk_dechunk_reduce_canonical_data:
        // Scatter/Gather offsets
        .word 4*0
        .word 4*1
        .word 4*2
        .word 4*3
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_reduce_canonical:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift22  .req r7
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r6

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_high      .req in1
        quot_low       .req q2
        carry          .req q3
        qmask          .req q4    //
        mod_p_vect     .req q5    //
        q_off          .req q6
        tmp            .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_reduce_canonical_data
        vldrw.u32 q_off, [addr], #+16
        vmul.i32 q_off, q_off, loop_cnt
        sub loop_cnt, loop_cnt, #1
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        neg mod_p_neg, mod_p
        ldrd init_tmp, const_shift22, [addr], #+8
        ldrd const_shift10, mod_p_tw, [addr], #+8
        vdup.u32 qmask, init_tmp
        /* Save original destination pointer and mask for later */
        push {dst, init_tmp}
        .unreq addr

        veor carry, carry, carry

        movs.n const1, #1
        subs.n dst, #4

        vldrw.u32   in0, [src0, q_off]

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        adds.n      src0, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vldrw.u32   in0, [src0, q_off]
        vstrw.32    quot_low, [dst, q_off]
        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        adds.n      src0, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vstrw.32    quot_low, [dst, q_off]

        /* Use dummy loop for the sake of tail predication */
        adds.n dst,    #4
        movs.n const1, #3
        dlstp.32 loop_cnt, const1
1:
        vldrw.32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vstrw.32 in0, [dst, q_off]
        letp loop_cnt, 1b

        /* At this point, we have non-canonical limbs of 32-bit.
         * Iterate over them in scalar for reduction to canonical form. */

        /* Restore mask and original destination pointer */
        pop {dst, mask}
        mov rcarry, #0
        mov loop_cnt, #(CRT_32_SIZE/2)
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift22
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq carry
        .unreq quot_low
        .unreq quot_high
        .unreq qmask
        .unreq mod_p_vect
        .unreq q_off
        .unreq tmp

.type crt_s32_chunk_dechunk_reduce_canonical_v2, %function
.global crt_s32_chunk_dechunk_reduce_canonical_v2
        .align 4
crt_s32_chunk_dechunk_reduce_canonical_v2_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_reduce_canonical_v2:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r7

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q5
        tmp            .req q6

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_reduce_canonical_v2_data
        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vldrw.u32   in0, [src0], #+16
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1], #+16
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vadd.s32    in0, tmpp, in0
        vmla.s32    quot_low, in0, const1
        vstrw.32    quot_low, [dst], #+16
        le loop_cnt, 1b
2:

        /* At this point, we have non-canonical limbs of 32-bit.
         * Iterate over them in scalar for reduction to canonical form. */

        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #1
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq tmp
        .unreq tmpp
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect

.type crt_s32_chunk_dechunk_sub_reduce_canonical_v2, %function
.global crt_s32_chunk_dechunk_sub_reduce_canonical_v2
        .align 4
crt_s32_chunk_dechunk_sub_reduce_canonical_v2_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_sub_reduce_canonical_v2:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r7

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q6
        tmp            .req q5

        in0p           .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2
        subs loop_cnt, #1

        adr addr, crt_s32_chunk_dechunk_reduce_canonical_v2_data
        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+12*4)]

        vldrw.u32   in0, [src0], #+16
        vldrw.u32   in0p, [src0p], #+16

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        vsub.s32    in0, in0, in0p
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1], #+16
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vldrw.u32   in0p, [src0p], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vldrw.u32   in0, [src0], #+16
        vand.u32    quot_low, quot_low, qmask
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        le loop_cnt, 1b
2:

        vsub.s32    in0, in0, in0p
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1], #+16
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vand.u32    quot_low, quot_low, qmask
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        /* At this point, we have non-canonical limbs of 32-bit.
         * Iterate over them in scalar for reduction to canonical form. */

        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #1
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect
        .unreq tmp
        .unreq tmpp

.type crt_s32_chunk_dechunk_sub_reduce_canonical_v3, %function
.global crt_s32_chunk_dechunk_sub_reduce_canonical_v3
        .align 4
crt_s32_chunk_dechunk_sub_reduce_canonical_v3_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_sub_reduce_canonical_v3:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r7

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q6
        tmp            .req q5

        in0p           .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #3
        subs loop_cnt, #1

        adr addr, crt_s32_chunk_dechunk_reduce_canonical_v2_data
        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+12*4)]

        vldrw.u32   in0p, [src0], #+16
        vldrw.u32   tmp, [src0p], #+16
        vsub.i32    in0p, in0p, tmp
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0p, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vsub.s32    in0p, in0p, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vsub.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vsub.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        /* At this point, we have non-canonical limbs of 32-bit.
        * Iterate over them in scalar for reduction to canonical form. */
        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #1
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect
        .unreq tmp
        .unreq tmpp




.type crt_s32_chunk_dechunk_add_reduce_canonical, %function
.global crt_s32_chunk_dechunk_add_reduce_canonical
        .align 4
crt_s32_chunk_dechunk_add_reduce_canonical_data:
        .word (1<<22) - 1
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_add_reduce_canonical:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r7

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_low       .req q2
        qmask          .req q3
        mod_p_vect     .req q4
        tmpp           .req q6
        tmp            .req q5

        in0p           .req q7

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #3
        subs loop_cnt, #1

        adr addr, crt_s32_chunk_dechunk_add_reduce_canonical_data
        ldr init_tmp, [addr], #+4
        vdup.u32 qmask, init_tmp
        /* Save size, original destination pointer and mask for later */
        push {dst, size, init_tmp}
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        ldrd const_shift10, mod_p_tw, [addr], #+8

        .unreq addr

        movs.n const1, #1
        movs.n rcarry, #0
        neg mod_p_neg, mod_p

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+12*4)]

        vldrw.u32   in0p, [src0], #+16
        vldrw.u32   tmp, [src0p], #+16
        vadd.i32    in0p, in0p, tmp
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vmul.u32    quot_low,  diff, mod_p_vect
        vldrw.u32   tmpp, [src0p], #+16
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        wls loop_cnt, loop_cnt, 2
        .align 2
1:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0p, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0p, in0p, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        vqdmulh.s32 tmp, in0p, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0p, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vldrw.u32   tmpp, [src0p], #+16
        vsub.s32    diff, in1, in0p
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vldrw.u32   in0, [src0], #+16
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.s32    in0, in0, tmpp
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vldrw.u32   in1, [src1], #+16

        le loop_cnt, 1b
2:

        vqdmulh.s32 tmp, in0, mod_p_tw
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0p, const1
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p], #+16
        vadd.s32    in1, in1, tmp
        vmla.s32    quot_low, tmpp, const1
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        vstrw.32    quot_low, [dst], #+16
        vmul.u32    quot_low,  diff, mod_p_vect
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    tmpp, quot_low,  #22
        vmla.s32    tmpp, tmp, const_shift10
        vand.u32    quot_low, quot_low, qmask
        vshlc       tmpp, rcarry, #32
        vmla.s32    tmpp, in0, const1
        vmla.s32    quot_low, tmpp, const1
        vstrw.32    quot_low, [dst], #+16

        /* At this point, we have non-canonical limbs of 32-bit.
        * Iterate over them in scalar for reduction to canonical form. */
        /* Restore mask and original destination pointer */
        pop {dst, size, mask}
        mov rcarry, #0
        mov loop_cnt, size, LSR #1
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq qmask
        .unreq mod_p_vect
        .unreq tmp
        .unreq tmpp






.type crt_s32_chunk_dechunk_sub_reduce_canonical, %function
.global crt_s32_chunk_dechunk_sub_reduce_canonical
        .align 4
crt_s32_chunk_dechunk_sub_reduce_canonical_data:
        // Scatter/Gather offsets
        .word 4*0
        .word 4*1
        .word 4*2
        .word 4*3
        .word CRT_32_P
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
        .word (1<<22) - 1
        .word (1<<(31-22))
        .word (1<<(10))
        .word CRT_32_P_TWISTED
crt_s32_chunk_dechunk_sub_reduce_canonical:

        loop_cnt       .req r14
        init_tmp       .req r11 // Temporary prior to main loop
        addr           .req r12

        dst            .req r0
        src0           .req r1
        src1           .req r2
        size           .req r3

        src0p          .req r11
        src1p          .req r12

        mod_p          .req r3
        mod_p_neg      .req mod_p
        mod_p_tw       .req r9
        mod_q_neg      .req r4
        p_inv_mod_q    .req r5
        p_inv_mod_q_tw .req r10
        const_shift22  .req r7
        const_shift10  .req r8
        const1         .req r6

        curA           .req r3
        curB           .req r4
        mask           .req r5
        rcarry         .req r6

        in0            .req q0
        in1            .req q1
        diff           .req in1
        quot_high      .req in1
        quot_low       .req q2
        carry          .req q3
        qmask          .req q4    //
        mod_p_vect     .req q5    //
        q_off          .req q6
        tmp            .req q7

        push {r4-r12,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        adr addr, crt_s32_chunk_dechunk_reduce_canonical_data
        vldrw.u32 q_off, [addr], #+16
        vmul.i32 q_off, q_off, loop_cnt
        sub loop_cnt, loop_cnt, #1
        ldrd mod_p, mod_q_neg, [addr], #+8
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        neg mod_p_neg, mod_p
        ldrd init_tmp, const_shift22, [addr], #+8
        ldrd const_shift10, mod_p_tw, [addr], #+8
        vdup.u32 qmask, init_tmp

        /* Save original destination pointer and mask for later */
        push {dst, init_tmp}
        .unreq addr

        /* Load address of additional inputs from stack */
        ldrd src0p, src1p, [sp, #(4*16+12*4)]

        veor carry, carry, carry

        movs.n const1, #1
        subs.n dst, #4

        vldrw.u32   in0, [src0, q_off]

        wls loop_cnt, loop_cnt, 2
        .align 2
1:
        vldrw.u32   tmp, [src0p, q_off]
        vsub.s32    in0, in0, tmp
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p, q_off]
        vsub.s32    in1, in1, tmp
        adds.n      src0, #4
        adds        src0p, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        adds        src1p, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vldrw.u32   in0, [src0, q_off]
        vstrw.32    quot_low, [dst, q_off]
        le loop_cnt, 1b
2:
        vldrw.u32   tmp, [src0p, q_off]
        vsub.s32    in0, in0, tmp
        vqdmulh.s32 tmp, in0, mod_p_tw
        vldrw.u32   in1, [src1, q_off]
        vrshr.s32   tmp, tmp, #(CRT_32_P_REFINED_BARRETT_SHIFT+1)
        vmla.s32    in0, tmp, mod_p_neg
        vldrw.u32   tmp, [src1p, q_off]
        vsub.s32    in1, in1, tmp
        adds.n      src0, #4
        adds        src0p, #4
        vsub.s32    diff, in1, in0
        vqdmulh.s32 tmp, diff, p_inv_mod_q_tw
        adds.n      dst, #4
        vmul.u32    diff, diff, p_inv_mod_q
        vrshr.s32   tmp, tmp, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmla.s32    diff, tmp, mod_q_neg
        adds.n      src1, #4
        adds        src1p, #4
        vmul.u32    quot_low,  diff, mod_p_vect
        vadd.u32    in0, in0, carry
        vmulh.s32   tmp, diff, mod_p_vect
        vshr.u32    carry, quot_low,  #22
        vmla.s32    carry, tmp, const_shift10
        vand.u32    quot_low,  quot_low, qmask
        vmla.s32    quot_low, in0, const1
        vstrw.32    quot_low, [dst, q_off]

        /* Use dummy loop for the sake of tail predication */
        adds.n dst,    #4
        movs.n const1, #3
        dlstp.32 loop_cnt, const1
1:
        vldrw.32 in0, [dst, q_off]
        vadd.u32  in0, in0, carry
        vstrw.32 in0, [dst, q_off]
        letp loop_cnt, 1b

        /* At this point, we have non-canonical limbs of 32-bit.
         * Iterate over them in scalar for reduction to canonical form. */

        /* Restore mask and original destination pointer */
        pop {dst, mask}
        mov rcarry, #0
        mov loop_cnt, #(CRT_32_SIZE/2)
        wls loop_cnt, loop_cnt, 2
1:
        ldm dst, {curA, curB}
        add rcarry, curA, rcarry, ASR #22
        and curA, rcarry, mask
        add rcarry, curB, rcarry, ASR #22
        and curB, rcarry, mask
        stm dst!,  {curA, curB}
        le loop_cnt, 1b
2:

        vpop {d8-d15}
        pop {r4-r12,lr}
        bx lr

        .unreq curA
        .unreq curB
        .unreq mask
        .unreq rcarry
        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1
        .unreq mod_p
        .unreq mod_p_tw
        .unreq mod_p_neg
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq init_tmp
        .unreq const1
        .unreq const_shift22
        .unreq const_shift10
        .unreq in0
        .unreq in1
        .unreq diff
        .unreq carry
        .unreq quot_low
        .unreq quot_high
        .unreq qmask
        .unreq mod_p_vect
        .unreq q_off


.type crt_s32_pure, %function
.global crt_s32_pure
        .align 4
crt_s32_pure_data:
        .word CRT_32_P
        .word CRT_32_Q
        .word -CRT_32_Q
        .word CRT_32_P_INV_MOD_Q
        .word CRT_32_P_INV_MOD_Q_TWISTED
crt_s32_pure:

        loop_cnt .req r14
        dst      .req r0
        src0     .req r1
        src1     .req r2
        size     .req r3

        mod_p          .req r3
        mod_q          .req r4
        mod_q_neg      .req r5
        p_inv_mod_q    .req r6
        p_inv_mod_q_tw .req r7
        mask           .req r8
        const1         .req r9
        const0         .req r10

        in0         .req q0
        in1         .req q1
        diff        .req in1
        quot_low    .req q3
        quot_high   .req q4
        quot        .req q5
        mod_p_vect  .req q6

        push {r4-r11,lr}
        vpush {d8-d15}

        mov loop_cnt, size, LSR #2

        addr .req r11
        adr addr, crt_s32_pure_data
        ldrd mod_p, mod_q, [addr], #+8
        ldr  mod_q_neg, [addr], #+4
        ldrd p_inv_mod_q, p_inv_mod_q_tw, [addr], #+8
        vdup.u32 mod_p_vect, mod_p
        .unreq addr

        mov const1, #1
        mov const0, #0

        wls loop_cnt, loop_cnt, 2
1:
        // PRELIMINARY ASSUMPTION:
        // x and y are already scaled and reduced

        vldrw.u32 in0, [src0], #+16
        vldrw.u32 in1, [src1], #+16

        /* CRT interpolation of (x mod p) and (y mod q)
         *
         * x + ((y-x)*(p mod q)^{-1} mod q)*p
         */
        vsub.s32 diff, in1, in0

        /* Unsigned (!) refined Barrett multiplication */
        vqdmulh.s32 quot, diff, p_inv_mod_q_tw
        vrshr.s32   quot, quot, #(CRT_32_P_Q_REFINED_BARRETT_SHIFT+1)
        vmul.u32    diff, diff, p_inv_mod_q
        vmla.s32    diff, quot, mod_q_neg

        /* Compute high and low products separately */
        vmul.u32  quot_low,  diff, mod_p_vect
        vmulh.s32 quot_high, diff, mod_p_vect

        /* Need to do a 64-bit addition to quot_high and quot_low   */
        /* Add as u32, and manually add the carry to the upperlanes */
        vadd.u32 quot_low, quot_low, in0
        vpt.u32  HI, in0, quot_low
        vaddt.i32 quot_high, quot_high, const1
        /* Need to add the sign bit of in0 */
        vqdmlah.s32 quot_high, in0, const1

        vst20.32 {quot_low, quot_high}, [dst]
        vst21.32 {quot_low, quot_high}, [dst]!

         le loop_cnt, 1b
 2:

        vpop {d8-d15}
        pop {r4-r11,lr}
        bx lr

        .unreq loop_cnt
        .unreq dst
        .unreq src0
        .unreq src1

        .unreq mod_p
        .unreq mod_q
        .unreq mod_q_neg
        .unreq p_inv_mod_q
        .unreq p_inv_mod_q_tw
        .unreq mask
        .unreq const1

        .unreq in0
        .unreq in1
        .unreq diff
        .unreq quot_low
        .unreq quot_high
        .unreq quot
        .unreq mod_p_vect
