///
/// Copyright (c) 2022 Arm Limited
/// SPDX-License-Identifier: MIT
///
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
///
/// The above copyright notice and this permission notice shall be included in all
/// copies or substantial portions of the Software.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
/// SOFTWARE.
///

        #include "ct_const.h"

        .syntax unified

.macro cmp_set_0_1 dst, idx, imm
        cmp   \idx, \imm
        cset  \dst, EQ
.endm

.global ct_table_lookup
.type ct_table_lookup, %function
ct_table_lookup:

        dst .req r0 // Destination
        tbl .req r1 // Table
        idx .req r2 // Secret table index

        mask      .req r3  // idx == cur_idx
        base      .req r4
        loop_init .req r12
        loop_cnt  .req r14

        dst0  .req q0
        dst1  .req q1
        dst2  .req q2
        dst3  .req q3
        dst4  .req q4
        dst5  .req q5
        dst6  .req q6
        cur   .req q7

        push {r4,lr}
        sub.w sp, sp, #(4*16)
        vstrw.32 q7, [sp, #(0*16)]
        add tbl, tbl, #(CT_SZ_TABLE)
        vstrw.32 q6, [sp, #(1*16)]
        movs.n base, tbl
        adds.n idx, idx, #1
        vstrw.32 q5, [sp, #(2*16)]
        mov loop_init, #(CT_NUM_ENTRY-1)
        vstrw.32 q4, [sp, #(3*16)]
        cmp_set_0_1 mask, idx, #(CT_NUM_ENTRY)

        // Establish output in chunks of 7*128-bit first
        #define CT_SZ_ENTRY_WORDS            (CT_SZ_ENTRY/4)
        #define CT_SZ_ENTRY_CHUNKS           (CT_SZ_ENTRY_WORDS/4)

        #define CT_SZ_ENTRY_CHUNKS_7         (CT_SZ_ENTRY_CHUNKS/7)
        #define CT_SZ_ENTRY_CHUNKS_7_REM     (CT_SZ_ENTRY_CHUNKS - 7*CT_SZ_ENTRY_CHUNKS_7)

        #define CT_SZ_ENTRY_CHUNKS_4         (CT_SZ_ENTRY_CHUNKS_7_REM / 4)
        #define CT_SZ_ENTRY_CHUNKS_4_REM     (CT_SZ_ENTRY_CHUNKS_7_REM - 4*CT_SZ_ENTRY_CHUNKS_4)

        #define CT_SZ_ENTRY_CHUNKS_2         (CT_SZ_ENTRY_CHUNKS_4_REM / 2)
        #define CT_SZ_ENTRY_CHUNKS_2_REM     (CT_SZ_ENTRY_CHUNKS_4_REM - 2*CT_SZ_ENTRY_CHUNKS_2)

        #if CT_SZ_ENTRY_CHUNKS_2_REM != 0
        #error "Invalid configuration"
        #endif

#if CT_SZ_ENTRY_CHUNKS_7 > 0
        .rept CT_SZ_ENTRY_CHUNKS_7

            vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 6*16)]!
            vmul.s32  dst6, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst5, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst4, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst3, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst2, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst1, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst0, cur, mask

            dls loop_cnt, loop_init
1:
                cmp_set_0_1 mask, idx, loop_cnt
                vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 6*16)]!
                vmla.s32  dst6, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst5, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst4, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst3, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst2, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst1, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst0, cur, mask
                le loop_cnt, 1b

            vstrw.32 dst0, [dst], #+16
            vstrw.32 dst1, [dst], #+16
            vstrw.32 dst2, [dst], #+16
            cmp   idx, #(CT_NUM_ENTRY)
            vstrw.32 dst3, [dst], #+16
            cset  mask, EQ
            vstrw.32 dst4, [dst], #+16
            add tbl, tbl, #(7*16)
            vstrw.32 dst5, [dst], #+16
            mov base, tbl
            vstrw.32 dst6, [dst], #+16

        .endr

#endif

#if CT_SZ_ENTRY_CHUNKS_4 > 0
        .rept CT_SZ_ENTRY_CHUNKS_4

            vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 3*16)]!
            vmul.s32  dst3, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst2, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst1, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst0, cur, mask

            dls loop_cnt, loop_init
1:
                cmp_set_0_1 mask, idx, loop_cnt
                vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 3*16)]!
                vmla.s32  dst3, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst2, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst1, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst0, cur, mask
                le loop_cnt, 1b

            vstrw.32 dst0, [dst], #+16
            cmp   idx, #(CT_NUM_ENTRY)
            vstrw.32 dst1, [dst], #+16
            cset  mask, EQ
            vstrw.32 dst2, [dst], #+16
            add tbl, tbl, #(4*16)
            vstrw.32 dst3, [dst], #+16
            mov base, tbl
        .endr

#endif

#if CT_SZ_ENTRY_CHUNKS_2 > 0
.rept CT_SZ_ENTRY_CHUNKS_2

            vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 1*16)]!
            vmul.s32  dst1, cur, mask
            vldrw.u32 cur, [base, #-16]!
            vmul.s32  dst0, cur, mask

            dls loop_cnt, loop_init
1:
                cmp_set_0_1 mask, idx, loop_cnt
                vldrw.u32 cur, [base, #(-CT_SZ_ENTRY + 1*16)]!
                vmla.s32  dst1, cur, mask
                vldrw.u32 cur, [base, #-16]!
                vmla.s32  dst0, cur, mask
                le loop_cnt, 1b

            vstrw.32 dst0, [dst], #+16
            add tbl, tbl, #(2*16)
            vstrw.32 dst1, [dst], #+16
            cmp_set_0_1 mask, idx, #(CT_NUM_ENTRY)
            mov base, tbl

        .endr

#endif

        vpop {d8-d15}
        pop {r4,pc}

        .unreq dst
        .unreq tbl
        .unreq idx
