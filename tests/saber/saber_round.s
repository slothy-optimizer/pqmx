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

#include "SABER_params.h"
#include "test_config.h"

.syntax unified

#define SABER_CONST_ROUND_P_Q (1 << (SABER_EQ - SABER_EP - 1))
#define SABER_SHIFT_ROUND_P_Q (SABER_EQ - SABER_EP)

#define SABER_SHIFT_ROUND_T_P (SABER_EP - SABER_ET)
#define SABER_CONST_SHIFT_T_P (-(1 << (SABER_EP - 1)))

#define SABER_CONST_ROUND_T_P_2 ((1 << (SABER_EP - 2)) - (1 << (SABER_EP - SABER_ET - 1)) + (1 << (SABER_EQ - SABER_EP - 1)))
#define SABER_CONST_SHIFT_T_P_2 (-(1 << (SABER_EP - SABER_ET)))
#define SABER_SHIFT_ROUND_T_P_2 (SABER_EP - 1)

.type saber_round_p_q, %function
.global saber_round_p_q
.align 4
saber_round_p_q:
        push {lr}
        vpush {d0-d3}

        cur       .req q0
        old       .req q1

        src         .req  r0
        round_const .req  r1

        cnt .req r14

        mov r1, #(SABER_CONST_ROUND_P_Q)

        vldrw.u32 cur, [r0]
        vadd.u32  cur, cur, round_const
        mov cnt, #((SABER_L*SABER_N)/4 - 2)
        vshr.u32  old, cur, #(SABER_SHIFT_ROUND_P_Q)

        wls cnt, cnt, saber_round_p_q_loop_end
saber_round_p_q_loop_start:
        vldrw.u32 cur, [r0, #+16]
        vadd.u32 cur, cur, round_const
        vstrw.u32 old, [r0], #+16
        vshr.u32 old, cur, #(SABER_SHIFT_ROUND_P_Q)
        le cnt, saber_round_p_q_loop_start
saber_round_p_q_loop_end:
        vldrw.u32 cur, [r0, #+16]
        vadd.u32 cur, cur, round_const
        vstrw.u32 old, [r0], #+16
        vshr.u32 old, cur, #(SABER_SHIFT_ROUND_P_Q)
        vstrw.u32 old, [r0]

        vpop {d0-d3}
        pop {pc}

        .unreq cur
        .unreq old
        .unreq src
        .unreq round_const
        .unreq cnt


.type saber_round_t_p, %function
.global saber_round_t_p
        .align 4
const_shift_t_p:
        .word  SABER_CONST_SHIFT_T_P
saber_round_t_p:
        push {r4,lr}
        vpush {d0-d7}

        msg         .req q0
        mask        .req q1
        const_1_vec .req q2
        old         .req q3

        msg_gpr         .req r0
        mask_gpr        .req r1
        round_const     .req r2
        const_1         .req r3
        shift_const     .req r4

        cnt .req r14

        mov round_const, #(SABER_CONST_ROUND_P_Q)
        ldr shift_const, const_shift_t_p
        mov const_1, #1

        vdup.s32 const_1_vec, const_1
        vldrw.u32 msg, [msg_gpr], #+16
        mov cnt, #((SABER_N)/4 - 2)
        vldrw.u32 mask, [mask_gpr]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P)

        wls cnt, cnt, saber_round_t_p_loop_end
saber_round_t_p_loop_start:

        vldrw.u32 mask, [mask_gpr, #+16]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vstrw.u32 old, [mask_gpr], #+16
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P)

        le cnt, saber_round_t_p_loop_start
saber_round_t_p_loop_end:

        vldrw.u32 mask, [mask_gpr, #+16]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vstrw.u32 old, [mask_gpr], #+16
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P)
        vstrw.u32 old, [mask_gpr]

        vpop {d0-d7}
        pop {r4, pc}


.type saber_round_t_p_2, %function
.global saber_round_t_p_2
        .align 4
const_shift_t_p_2:
        .word  SABER_CONST_SHIFT_T_P_2
saber_round_t_p_2:
        push {r4,lr}
        vpush {d0-d7}

        msg         .req q0
        mask        .req q1
        const_1_vec .req q2
        old         .req q3

        msg_gpr         .req r0
        mask_gpr        .req r1
        round_const     .req r2
        const_1         .req r3
        shift_const     .req r4

        cnt .req r14

        mov round_const, #(SABER_CONST_ROUND_T_P_2)
        ldr shift_const, const_shift_t_p_2
        mov const_1, #1

        vdup.s32 const_1_vec, const_1
        vldrw.u32 msg, [msg_gpr], #+16
        mov cnt, #((SABER_N)/4 - 2)
        vldrw.u32 mask, [mask_gpr]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P_2)

        wls cnt, cnt, saber_round_t_p_2_loop_end
saber_round_t_p_2_loop_start:

        vldrw.u32 mask, [mask_gpr, #+16]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vstrw.u32 old, [mask_gpr], #+16
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P_2)

        le cnt, saber_round_t_p_2_loop_start
saber_round_t_p_2_loop_end:

        vldrw.u32 mask, [mask_gpr, #+16]
        vmla.s32 mask, msg, shift_const
        vldrw.u32 msg, [msg_gpr], #+16
        vmla.s32 mask, const_1_vec, round_const
        vstrw.u32 old, [mask_gpr], #+16
        vshr.u32 old, mask, #(SABER_SHIFT_ROUND_T_P_2)
        vstrw.u32 old, [mask_gpr]

        vpop {d0-d7}
        pop {r4, pc}
