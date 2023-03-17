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

#include "chunk_const.h"

.syntax unified

/*========================  Basic M4 version ============================ */

.type radix11_reduce_x4_asm_m4, %function
.global radix11_reduce_x4_asm_m4

        src   .req r0
        cur   .req r1
        carry .req r2
        mask  .req r3
        inner .req r4
        outer .req r5

/*--------------------------  Code ---------------------------------------*/

radix11_reduce_x4_asm_m4:
        push {r4,r5,lr}
        mov  outer, #4
        mov  mask, #0x7FF
radix11_reduce_x4_asm_m4__outer_loop_start:
        mov  carry,  #0
        mov  inner, #(SIZE/4)

radix11_reduce_x4_asm_m4__inner_loop_start:
        ldr  cur, [src]
        add  carry, cur, carry, LSR #11
        and  cur, carry, mask
        str  cur, [src], #+4
        subs inner, inner, #1
        bne  radix11_reduce_x4_asm_m4__inner_loop_start

        add  src, src, #4
        subs outer, outer, #1
        bne  radix11_reduce_x4_asm_m4__outer_loop_start
        pop  {r4,r5,pc}

/* ------------------------------------------------------------------------*/

        .unreq src
        .unreq carry
        .unreq cur
        .unreq mask
        .unreq inner
        .unreq outer

/*========================  Basic M4_V2 version ============================ */

.type radix11_reduce_x4_asm_m4_v2, %function
.global radix11_reduce_x4_asm_m4_v2

        src   .req r0
        cur   .req r1
        carry .req r2
        mask  .req r3
        inner .req r4
        outer .req r5

/*--------------------------  Code ---------------------------------------*/

radix11_reduce_x4_asm_m4_v2:
        push {r4,r5,lr}
        mov  outer, #4
        mov  mask, #0x7FF
radix11_reduce_x4_asm_m4_v2__outer_loop_start:
        mov  carry,  #0
        mov  inner, #(SIZE/4/4)

radix11_reduce_x4_asm_m4_v2__inner_loop_start:
        ldr  cur, [src]
        add  carry, cur, carry, LSR #11
        and  cur, carry, mask
        str  cur, [src], #+4

        ldr  cur, [src]
        add  carry, cur, carry, LSR #11
        and  cur, carry, mask
        str  cur, [src], #+4

        ldr  cur, [src]
        add  carry, cur, carry, LSR #11
        and  cur, carry, mask
        str  cur, [src], #+4

        ldr  cur, [src]
        add  carry, cur, carry, LSR #11
        and  cur, carry, mask
        str  cur, [src], #+4

        subs inner, inner, #1
        bne  radix11_reduce_x4_asm_m4_v2__inner_loop_start

        add  src, src, #4
        subs outer, outer, #1
        bne  radix11_reduce_x4_asm_m4_v2__outer_loop_start
        pop  {r4,r5,pc}

/* ------------------------------------------------------------------------*/

        .unreq src
        .unreq carry
        .unreq cur
        .unreq mask
        .unreq inner
        .unreq outer

/*========================  Basic M4_V3 version ============================ */

.type radix11_reduce_x4_asm_m4_v3, %function
.global radix11_reduce_x4_asm_m4_v3

        src   .req r0
        curA  .req r1
        carry .req r2
        mask  .req r3
        inner .req r4
        outer .req r5

        curB  .req r6
        curC  .req r7
        curD  .req r8

/*--------------------------  Code ---------------------------------------*/

radix11_reduce_x4_asm_m4_v3:
        push {r4-r8, lr}
        mov  outer, #4
        mov  mask, #0x7FF
radix11_reduce_x4_asm_m4_v3__outer_loop_start:
        mov  carry,  #0
        mov  inner, #(SIZE/4/4)

radix11_reduce_x4_asm_m4_v3__inner_loop_start:

        ldr curA, [src, #0*4]
        ldr curB, [src, #1*4]
        ldr curC, [src, #2*4]
        ldr curD, [src, #3*4]

        add carry, curA, carry, LSR #11
        and curA, carry, mask
        add carry, curB, carry, LSR #11
        and curB, carry, mask
        add carry, curC, carry, LSR #11
        and curC, carry, mask
        add carry, curD, carry, LSR #11
        and curD, carry, mask

        str curB, [src, #1*4]
        str curC, [src, #2*4]
        str curD, [src, #3*4]
        str curA, [src], #+16

        subs inner, inner, #1
        bne  radix11_reduce_x4_asm_m4_v3__inner_loop_start

        add  src, src, #4
        subs outer, outer, #1
        bne  radix11_reduce_x4_asm_m4_v3__outer_loop_start
        pop  {r4-r8,pc}

/* ------------------------------------------------------------------------*/

        .unreq src
        .unreq carry
        .unreq curA
        .unreq curB
        .unreq curC
        .unreq curD
        .unreq mask
        .unreq inner
        .unreq outer

/*====================== Using low overhead loops======================== */

.type radix11_reduce_x4_asm_lob, %function
.global radix11_reduce_x4_asm_lob

        src   .req r0
        cur   .req r1
        carry .req r2
        mask  .req r3
        outer .req r4
        inner .req r14

/* -------------------------- Code ----------------------------------------*/

radix11_reduce_x4_asm_lob:
        push {r4,lr}
        mov mask, #0x7FF
        mov outer, #4
radix11_reduce_x4_asm_lob__outer_loop_start:
        mov inner, #(SIZE/4)
        mov carry, #0
        wls inner, inner, radix11_reduce_x4_asm_lob__inner_loop_end

        .align 2
radix11_reduce_x4_asm_lob__inner_loop_start:
        ldr cur, [src]
        add carry, cur, carry, LSR #11
        and cur, carry, mask
        str cur, [src], #+4
        le inner, radix11_reduce_x4_asm_lob__inner_loop_start

radix11_reduce_x4_asm_lob__inner_loop_end:
        add  src, src, #4
        subs outer, outer, #1
        bne radix11_reduce_x4_asm_lob__outer_loop_start
        pop {r4,pc}

/* ------------------------------------------------------------------------*/

        .unreq src
        .unreq carry
        .unreq cur
        .unreq mask
        .unreq inner
        .unreq outer

/* ================== Leveraging 64-bit data path ======================- */

.type radix11_reduce_x4_asm_lob_64bit, %function
.global radix11_reduce_x4_asm_lob_64bit

        src   .req r0
        curA  .req r1
        curB  .req r2
        carry .req r3
        mask  .req r4
        outer .req r5
        inner .req r14

/* ------------------------- Code -----------------------------------------*/

radix11_reduce_x4_asm_lob_64bit:
        push {r4,r5,lr}
        mov mask, #0x7FF
        mov outer, #4
radix11_reduce_x4_asm_lob_64bit__outer_loop_start:
        mov inner, #(SIZE/8)
        mov carry, #0
        wls inner, inner, radix11_reduce_x4_lob_64bit__inner_loop_end

        .align 2
radix11_reduce_x4_lob_64bit__inner_loop_start:
        ldm src, {curA, curB}
        add carry, curA, carry, LSR #11
        and curA, carry, mask
        add carry, curB, carry, LSR #11
        and curB, carry, mask
        stm src!,  {curA, curB}
        le  inner, radix11_reduce_x4_lob_64bit__inner_loop_start

radix11_reduce_x4_lob_64bit__inner_loop_end:
        add  src, src, #4
        subs outer, outer, #1
        bne radix11_reduce_x4_asm_lob_64bit__outer_loop_start
        pop {r4,r5,pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq carry
        .unreq curA
        .unreq curB
        .unreq mask
        .unreq inner
        .unreq outer

/* ====================== Basic MVE version ============================- */

.type radix11_reduce_x4_asm_mve_basic, %function
.global radix11_reduce_x4_asm_mve_basic

        .align 4
radix11_reduce_x4_asm_mve_basic_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src      .req r0
        mask     .req r1
        addr     .req r2
        inner    .req r14

        offsets  .req Q0
        cur      .req Q1
        carry    .req Q2
        qmask    .req Q3

/* ------------------------- Code ---------------------------------------- */

radix11_reduce_x4_asm_mve_basic:
        push {lr}
        vpush {d0-d7}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_basic_offsets
        mov mask, #0x7FF
        vldrh.u32 offsets, [addr]
        vdup.u32  qmask, mask

        /* Initialize loop */
        vmov.u32 carry, #0
        mov inner, #(SIZE/4)
        wls inner, inner, radix11_reduce_x4_asm_mve_basic__loop_end

        .align 2
radix11_reduce_x4_asm_mve_basic__loop_start:
        vldrw.u32 cur, [src, offsets]
        vshr.u32  carry, carry, #11
        vadd.u32  carry, cur, carry
        vand      cur, carry, qmask
        vstrw.32  cur, [src, offsets]

        add src, src, #4
        le inner, radix11_reduce_x4_asm_mve_basic__loop_start
radix11_reduce_x4_asm_mve_basic__loop_end:

        vpop {d0-d7}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq mask
        .unreq addr
        .unreq inner

        .unreq offsets
        .unreq qmask
        .unreq cur
        .unreq carry

/* ====================== Trading VADD for VMLA ============================ */

.type radix11_reduce_x4_asm_mve_vmla, %function
.global radix11_reduce_x4_asm_mve_vmla

        .align 4
radix11_reduce_x4_asm_mve_vmla_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src      .req r0
        mask     .req r1
        addr     .req r2
        const1   .req r3
        inner    .req r14

        offsets  .req Q0
        cur      .req Q1
        carry    .req Q2
        qmask    .req Q3

/* ------------------------- Code ------------------------------------------- */

radix11_reduce_x4_asm_mve_vmla:
        push {lr}
        vpush {d0-d7}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vmla_offsets
        mov mask, #0x7FF
        mov const1, #1
        vldrh.u32 offsets, [addr]
        vdup.u32  qmask, mask

        /* Initialize loop */
        vmov.u32 carry, #0
        mov inner, #(SIZE/4)
        wls inner, inner, radix11_reduce_x4_asm_mve_vmla__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vmla__loop_start:
        vldrw.u32 cur, [src, offsets]
        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vand      cur, carry, qmask
        vstrw.32  cur, [src, offsets]

        add src, src, #4
        le inner, radix11_reduce_x4_asm_mve_vmla__loop_start
radix11_reduce_x4_asm_mve_vmla__loop_end:

        vpop {d0-d7}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq mask
        .unreq const1
        .unreq addr
        .unreq inner

        .unreq offsets
        .unreq qmask
        .unreq cur
        .unreq carry

/* ====================== Trading VADD for VMLA, version 2 ================= */

.type radix11_reduce_x4_asm_mve_vmla_v2, %function
.global radix11_reduce_x4_asm_mve_vmla_v2

        .align 4
radix11_reduce_x4_asm_mve_vmla_v2_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        mask      .req r1
        addr      .req r2
        const1    .req r3
        const4    .req r4
        inner     .req r14

        qsrc     .req Q0
        cur      .req Q1
        carry    .req Q2
        qmask    .req Q3
        store    .req Q4

/* ------------------------- Code ------------------------------------------- */

radix11_reduce_x4_asm_mve_vmla_v2:
        push {r4,lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vmla_v2_offsets
        mov mask, #0x7FF
        mov const1, #1
        mov const4, #4
        vldrh.u32 qsrc, [addr]
        vadd.u32 qsrc, qsrc, src
        vdup.u32  qmask, mask

        /* Initialize loop */
        vmov.u32 carry, #0
        mov inner, #(SIZE/4)
        wls inner, inner, radix11_reduce_x4_asm_mve_vmla_v2__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vmla_v2__loop_start:
        vldrw.u32 cur,   [qsrc]
        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vand      cur,   carry, qmask
        vstrw.32  cur,   [qsrc]

        vadd.u32 qsrc, qsrc, const4

        le inner, radix11_reduce_x4_asm_mve_vmla_v2__loop_start
radix11_reduce_x4_asm_mve_vmla_v2__loop_end:

        vpop {d0-d9}
        pop {r4,pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq mask
        .unreq const1
        .unreq const4
        .unreq addr
        .unreq inner

        .unreq qsrc
        .unreq qmask
        .unreq cur
        .unreq store
        .unreq carry

/* ====================== Trading VADD for VMLA, version 3 ================= */

.type radix11_reduce_x4_asm_mve_vmla_v3, %function
.global radix11_reduce_x4_asm_mve_vmla_v3

        .align 4
radix11_reduce_x4_asm_mve_vmla_v3_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        mask      .req r1
        addr      .req r2
        const1    .req r3
        const8    .req r4
        inner     .req r14

        qsrc     .req Q0
        cur      .req Q1
        carry    .req Q2
        qmask    .req Q3
        store    .req Q4

/* ------------------------- Code ------------------------------------------- */

radix11_reduce_x4_asm_mve_vmla_v3:
        push {r4-r5,lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vmla_v3_offsets
        mov mask, #0x7FF
        mov const1, #1
        mov const8, #8
        vldrh.u32 qsrc, [addr]
        vadd.u32 qsrc, qsrc, src
        vdup.u32  qmask, mask

        /* Initialize loop */
        mov inner, #(SIZE/8)
        vmov.u32 carry, #0
        vldrw.u32 cur,   [qsrc]

        wls inner, inner, radix11_reduce_x4_asm_mve_vmla_v3__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vmla_v3__loop_start:
        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vldrw.u32 cur,   [qsrc, #4]
        vand      store, carry, qmask
        vstrw.32  store, [qsrc]

        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vldrw.u32 cur,   [qsrc, #8]
        vand      store, carry, qmask
        vstrw.32  store, [qsrc, #4]

        vadd.u32 qsrc, qsrc, const8

        le inner, radix11_reduce_x4_asm_mve_vmla_v3__loop_start
radix11_reduce_x4_asm_mve_vmla_v3__loop_end:

        vpop {d0-d9}
        pop {r4-r5,pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq mask
        .unreq const1
        .unreq const8
        .unreq addr
        .unreq inner

        .unreq qsrc
        .unreq qmask
        .unreq cur
        .unreq store
        .unreq carry

/* ====================== Trading VADD for VMLA, version 4 ================= */

.type radix11_reduce_x4_asm_mve_vmla_v4, %function
.global radix11_reduce_x4_asm_mve_vmla_v4

        .align 4
radix11_reduce_x4_asm_mve_vmla_v4_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        mask      .req r1
        addr      .req r2
        const1    .req r3
        const8    .req r4
        const4    .req r5
        inner     .req r14

        qsrc     .req Q0
        cur      .req Q1
        carry    .req Q2
        qmask    .req Q3
        store    .req Q4

/* ------------------------- Code ------------------------------------------- */

radix11_reduce_x4_asm_mve_vmla_v4:
        push {r4-r5,lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vmla_v4_offsets
        mov mask, #0x7FF
        mov const1, #1
        mov const4, #4
        mov const8, #8
        vldrh.u32 qsrc, [addr]
        vadd.u32 qsrc, qsrc, src
        vdup.u32  qmask, mask

        /* Initialize loop */
        mov inner, #(SIZE/8)
        vmov.u32 carry, #0
        vldrw.u32 cur,   [qsrc]

        wls inner, inner, radix11_reduce_x4_asm_mve_vmla_v4__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vmla_v4__loop_start:
        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vldrw.u32 cur,   [const4, qsrc]
        vand      store, carry, qmask
        vstrw.32  store, [qsrc]

        vshr.u32  carry, carry, #11
        vmla.s32  carry, cur, const1
        vldrw.u32 cur,   [const8, qsrc]
        vand      store, carry, qmask
        vstrw.32  store, [const4, qsrc]

        vadd.u32 qsrc, qsrc, const8

        le inner, radix11_reduce_x4_asm_mve_vmla_v4__loop_start
radix11_reduce_x4_asm_mve_vmla_v4__loop_end:

        vpop {d0-d9}
        pop {r4-r5,pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq mask
        .unreq const1
        .unreq const8
        .unreq addr
        .unreq inner

        .unreq qsrc
        .unreq qmask
        .unreq cur
        .unreq store
        .unreq carry

/* ================== Using VQDMLAH for shift+accumulate, v1 ==================== */

.type radix11_reduce_x4_asm_mve_vqdmlah, %function
.global radix11_reduce_x4_asm_mve_vqdmlah

        .align 4
radix11_reduce_x4_asm_mve_vqdmlah_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        fpconst   .req r1
        mask      .req r2
        addr      .req r3
        inner     .req r14

        offsets  .req Q0
        curA     .req Q1
        curB     .req Q2
        store    .req Q3
        qmask    .req Q4

/* ----------------------------- Code --------------------------------------*/

radix11_reduce_x4_asm_mve_vqdmlah:
        push {lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vqdmlah_offsets
        mov fpconst, #(1 << (31 - 11))
        mov mask, #0x7FF
        vldrh.u32 offsets, [addr]
        vdup.u32  qmask, mask

        /* Iniitalize loop */
        vmov.u32  curB, #0
        mov inner, #(SIZE/8)
        wls inner, inner, radix11_reduce_x4_asm_mve_vqdmlah__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah__loop_start:
        /* Need to unroll for carry handling */
        vldrw.u32 curA, [src, offsets]
        vqdmlah.s32 curA, curB, fpconst
        vand store, curA, qmask
        vstrw.32 store, [src, offsets]
        add src, src, #4

        vldrw.u32 curB, [src, offsets]
        vqdmlah.s32 curB, curA, fpconst
        vand store, curB, qmask
        vstrw.32 store, [src, offsets]
        add src, src, #4

        le inner, radix11_reduce_x4_asm_mve_vqdmlah__loop_start
radix11_reduce_x4_asm_mve_vqdmlah__loop_end:

        vpop {d0-d9}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq fpconst
        .unreq mask
        .unreq addr
        .unreq inner

        .unreq offsets
        .unreq curB
        .unreq curA
        .unreq store
        .unreq qmask


/* ================== Using VQDMLAH for shift+accumulate, v3 ================= */

.type radix11_reduce_x4_asm_mve_vqdmlah_v3, %function
.global radix11_reduce_x4_asm_mve_vqdmlah_v3

        .align 4
radix11_reduce_x4_asm_mve_vqdmlah_v3_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4
        .short 0*4*(SIZE/4)       + 4
        .short 1*4*(SIZE/4) + 1*4 + 4
        .short 2*4*(SIZE/4) + 2*4 + 4
        .short 3*4*(SIZE/4) + 3*4 + 4

        src       .req r0
        fpconst   .req r1
        mask      .req r2
        addr      .req r3
        inner     .req r14

        offsetsA .req Q0
        offsetsB .req Q1
        curA     .req Q2
        curB     .req Q3
        store    .req Q4
        qmask    .req Q5

/* ----------------------------- Code --------------------------------------*/

radix11_reduce_x4_asm_mve_vqdmlah_v3:
        push {lr}
        vpush {d0-d11}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vqdmlah_v3_offsets
        mov fpconst, #(1 << (31 - 11))
        mov mask, #0x7FF
        vldrh.u32 offsetsA, [addr]
        vldrh.u32 offsetsB, [addr, #8]
        vdup.u32  qmask, mask

        /* Iniitalize loop */
        vmov.u32  curB, #0
        mov inner, #(SIZE/8)
        wls inner, inner, radix11_reduce_x4_asm_mve_vqdmlah_v3__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v3__loop_start:
        /* Need to unroll for carry handling */
        vldrw.u32 curA, [src, offsetsA]
        vqdmlah.s32 curA, curB, fpconst
        vldrw.u32 curB, [src, offsetsB]
        vand store, curA, qmask
        vqdmlah.s32 curB, curA, fpconst
        vstrw.32 store, [src, offsetsA]
        vand store, curB, qmask
        vstrw.32 store, [src, offsetsB]
        add.w src, src, #8

        le inner, radix11_reduce_x4_asm_mve_vqdmlah_v3__loop_start
radix11_reduce_x4_asm_mve_vqdmlah_v3__loop_end:

        vpop {d0-d11}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq fpconst
        .unreq mask
        .unreq addr
        .unreq inner

        .unreq offsetsA
        .unreq offsetsB
        .unreq curB
        .unreq curA
        .unreq store
        .unreq qmask

/* ================== Using VQDMLAH for shift+accumulate, v4 ================= */

.type radix11_reduce_x4_asm_mve_vqdmlah_v4, %function
.global radix11_reduce_x4_asm_mve_vqdmlah_v4

        .align 4
radix11_reduce_x4_asm_mve_vqdmlah_v4_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        fpconst   .req r1
        mask      .req r2
        addr      .req r3
        inner     .req r14

        offsets  .req Q0
        curA     .req Q1
        curB     .req Q2
        store    .req Q3
        qmask    .req Q4

/* ----------------------------- Code --------------------------------------*/

radix11_reduce_x4_asm_mve_vqdmlah_v4:
        push {lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vqdmlah_v4_offsets
        mov fpconst, #(1 << (31 - 11))
        mov mask, #0x7FF
        vdup.u32  qmask, mask
        vldrh.u32 offsets, [addr]
        sub src, src, #8
        vadd.u32 offsets, offsets, src

        /* Iniitalize loop */
        vmov.u32  curB, #0
        mov inner, #(SIZE/8)
        wls inner, inner, radix11_reduce_x4_asm_mve_vqdmlah_v4__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v4__loop_start:
        vldrw.u32 curA, [offsets, #8]!
        vqdmlah.s32 curA, curB, fpconst
        vldrw.u32 curB, [offsets, #4]
        vand store, curA, qmask
        vqdmlah.s32 curB, curA, fpconst
        vstrw.32 store, [offsets]
        vand store, curB, qmask
        vstrw.32 store, [offsets, #4]

        le inner, radix11_reduce_x4_asm_mve_vqdmlah_v4__loop_start
radix11_reduce_x4_asm_mve_vqdmlah_v4__loop_end:

        vpop {d0-d9}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq fpconst
        .unreq mask
        .unreq addr
        .unreq const4
        .unreq inner

        .unreq offsets
        .unreq store
        .unreq curB
        .unreq curA
        .unreq qmask

/* ================== Using VQDMLAH for shift+accumulate, v5 ================= */

.type radix11_reduce_x4_asm_mve_vqdmlah_v5, %function
.global radix11_reduce_x4_asm_mve_vqdmlah_v5

        .align 4
radix11_reduce_x4_asm_mve_vqdmlah_v5_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        fpconst   .req r1
        mask      .req r2
        addr      .req r3
        inner     .req r14

        offsets  .req Q0
        curA     .req Q1
        curB     .req Q2
        storeA   .req Q3
        storeB   .req Q4
        qmask    .req Q5

/* ----------------------------- Code --------------------------------------*/

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v5:
        push {lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vqdmlah_v5_offsets
        vldrh.u32 offsets, [addr]
        vadd.u32  offsets, offsets, src

        mov mask, #0x7FF
        vdup.u32  qmask, mask
        mov fpconst, #(1 << (31 - 11))

        /* Pull out first iteration */
        vldrw.u32   curA, [offsets]
        vand        storeA, curA, qmask
        vldrw.u32   curB, [offsets, #4]
        vqdmlah.s32 curB, curA, fpconst
        vstrw.32    storeA, [offsets]
        vand        storeB, curB, qmask

        mov inner, #((SIZE/8)-1)
        wls inner, inner, radix11_reduce_x4_asm_mve_vqdmlah_v5__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v5__loop_start:
        vldrw.u32   curA,   [offsets, #8]!
        vqdmlah.s32 curA,   curB, fpconst
        vldrw.u32   curB,   [offsets, #4]
        vand        storeA, curA, qmask
        vstrw.32    storeA, [offsets]
        vqdmlah.s32 curB,   curA, fpconst
        vstrw.32    storeB, [offsets, #-4]
        vand        storeB, curB, qmask

        le inner, radix11_reduce_x4_asm_mve_vqdmlah_v5__loop_start
radix11_reduce_x4_asm_mve_vqdmlah_v5__loop_end:

        vstrw.32 storeB, [offsets, #4]

        vpop {d0-d9}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq fpconst
        .unreq mask
        .unreq addr
        .unreq inner

        .unreq offsets
        .unreq storeA
        .unreq storeB
        .unreq curB
        .unreq curA
        .unreq qmask

/* ================== Using VQDMLAH for shift+accumulate, v6 ================= */

.type radix11_reduce_x4_asm_mve_vqdmlah_v6, %function
.global radix11_reduce_x4_asm_mve_vqdmlah_v6

        .align 4
radix11_reduce_x4_asm_mve_vqdmlah_v6_offsets:
        .short 0*4*(SIZE/4)
        .short 1*4*(SIZE/4) + 1*4
        .short 2*4*(SIZE/4) + 2*4
        .short 3*4*(SIZE/4) + 3*4

        src       .req r0
        fpconst   .req r1
        mask      .req r2
        addr      .req r3
        inner     .req r14

        offsets  .req Q0
        curA     .req Q1
        curB     .req Q2
        storeA   .req Q3
        storeB   .req Q4
        qmask    .req Q5

/* ----------------------------- Code --------------------------------------*/

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v6:
        push {lr}
        vpush {d0-d9}

        /* Load constants */
        adr addr, radix11_reduce_x4_asm_mve_vqdmlah_v6_offsets
        vldrh.u32 offsets, [addr]
        vadd.u32  offsets, offsets, src

        mov mask, #0x7FF
        vdup.u32  qmask, mask
        mov fpconst, #(1 << (31 - 11))

        /* Pull out first iteration */
        vldrw.u32   curA, [offsets]
        vand        storeA, curA, qmask
        vldrw.u32   curB, [offsets, #4]
        vqdmlah.s32 curB, curA, fpconst
        vstrw.32    storeA, [offsets]
        vand        storeB, curB, qmask

        vldrw.u32   curA,   [offsets, #8]
        vqdmlah.s32 curA,   curB, fpconst
        vldrw.u32   curB,   [offsets, #12]
        vand        storeA, curA, qmask
        vstrw.32    storeA, [offsets,#8]
        vqdmlah.s32 curB,   curA, fpconst
        vstrw.32    storeB, [offsets, #4]
        vand        storeB, curB, qmask

        mov inner, #((SIZE/16)-1)
        wls inner, inner, radix11_reduce_x4_asm_mve_vqdmlah_v6__loop_end

        .align 2
radix11_reduce_x4_asm_mve_vqdmlah_v6__loop_start:
        vldrw.u32   curA,   [offsets, #16]!
        vqdmlah.s32 curA,   curB, fpconst
        vldrw.u32   curB,   [offsets, #4]
        vand        storeA, curA, qmask
        vstrw.32    storeA, [offsets]
        vqdmlah.s32 curB,   curA, fpconst
        vstrw.32    storeB, [offsets, #-4]
        vand        storeB, curB, qmask

        vldrw.u32   curA,   [offsets, #8]
        vqdmlah.s32 curA,   curB, fpconst
        vldrw.u32   curB,   [offsets, #12]
        vand        storeA, curA, qmask
        vstrw.32    storeA, [offsets, #8]
        vqdmlah.s32 curB,   curA, fpconst
        vstrw.32    storeB, [offsets, #4]
        vand        storeB, curB, qmask

        le inner, radix11_reduce_x4_asm_mve_vqdmlah_v6__loop_start
radix11_reduce_x4_asm_mve_vqdmlah_v6__loop_end:

        vldrw.u32   curA,   [offsets, #16]!
        vqdmlah.s32 curA,   curB, fpconst
        vldrw.u32   curB,   [offsets, #4]
        vand        storeA, curA, qmask
        vstrw.32    storeA, [offsets]
        vqdmlah.s32 curB,   curA, fpconst
        vstrw.32    storeB, [offsets, #-4]
        vand        storeB, curB, qmask

        vstrw.32 storeB, [offsets, #4]

        vpop {d0-d9}
        pop {pc}

/* ---------------------------------------------------------------------- */

        .unreq src
        .unreq fpconst
        .unreq mask
        .unreq addr
        .unreq inner

        .unreq offsets
        .unreq storeA
        .unreq storeB
        .unreq curB
        .unreq curA
        .unreq qmask

/* ====================================================================== */
