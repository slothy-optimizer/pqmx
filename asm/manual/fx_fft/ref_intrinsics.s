        .syntax unified
        .type   fixedpoint_radix4_fft_intrinsics, %function
        .global fixedpoint_radix4_fft_intrinsics


        inA .req r0
        pW0 .req r1 // Use the same twiddle data for TESTING ONLY
        sz  .req r2

        inB .req r3
        inC .req r4
        inD .req r5

        pW1 .req r6
        pW2 .req r7
        pW3 .req r8

        // NOTE:
        // We deliberately leave some aliases undefined
        // SLOTHY will fill them in as part of a 'dry-run'
        // merely concretizing symbolic registers, but not
        // yet reordering.

        .text
        .align 4
fixedpoint_radix4_fft_intrinsics:
        push {r4-r12,lr}
        vpush {d0-d15}

        add inB, inA, sz
        add inC, inB, sz
        add inD, inC, sz

        add pW1, pw0, sz
        add pW2, pW1, sz
        add pW3, pW2, sz

        lsr lr, sz, #4
        wls lr, lr, end

.p2align 2
fixedpoint_radix4_fft_loop_start:
  vldrw.u32     q0, [inC]         //-
  vldrw.u32     q1, [inA]         //-
  vhadd.s32     q3, q1, q0
  vldrw.u32     q2, [inB]
  vhsub.s32     q0, q1, q0
  vldrw.u32     q4, [inD]
  vhadd.s32     q5, q2, q4
  vhadd.s32     q6, q3, q5       //-
  vstrb.8       q6, [inA], #16
  vhsub.s32     q3, q3, q5
  vldrw.u32     q5, [pW1], #16    //?
  vqdmlsdh.s32  q6, q5, q3
  vhsub.s32     q1, q2, q4
  vqdmladhx.s32 q6, q5, q3
  vstrb.8       q6, [inB], #16
  vhcadd.s32    q2, q0, q1, #270
  vldrw.u32     q3, [pW2], #16    //?
  vqdmlsdh.s32  q4, q3, q2
  vqdmladhx.s32 q4, q3, q2       //-
  vstrb.8       q4, [inC], #16
  vhcadd.s32    q2, q0, q1, #90
  vldrw.u32     q0, [pW3], #16   //?
  vqdmlsdh.s32  q1, q0, q2
  vqdmladhx.s32 q1, q0, q2       //-
  vstrb.8       q1, [inD], #16
  le lr, fixedpoint_radix4_fft_loop_start
end:
        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr
