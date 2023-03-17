        .syntax unified
        .type   fixedpoint_radix4_fft_handwritten, %function
        .global fixedpoint_radix4_fft_handwritten


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
fixedpoint_radix4_fft_handwritten:
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

        vldrw.32      q1, [inA]
        vldrw.32      q6, [inC]

.p2align 2
fixedpoint_radix4_fft_loop_start:
  vhadd.s32     q0, q1, q6
  vldrw.32      q4, [inB]        //?
  vhsub.s32     q2, q1, q6
  vldrw.32      q5, [inD]
  vhadd.s32     q1, q4, q5
  vhsub.s32     q3, q4, q5       //-
  vldrw.32      q7, [pw1], #16
  vhadd.s32     q4, q0, q1
  vstrw.32      q4, [inA], #16
  vhsub.s32     q4, q0, q1
  vldrw.32      q5, [pw0], #16    //?
  vqdmlsdh.s32  q0, q4, q5
  vhcadd.s32    q6, q2, q3, #270
  vqdmladhx.s32 q0, q4, q5
  vstrw.32      q0, [inB], #16
  vqdmlsdh.s32  q0, q6, q7
  vldrw.32      q1, [inA]        //?
  vqdmladhx.s32 q0, q6, q7
  vstrw.32      q0, [inC], #16
  vhcadd.s32    q4, q2, q3, #90
  vldrw.32      q5, [pw2], #16
  vqdmlsdh.s32  q0, q4, q5
  vldrw.32      q6, [inC]
  vqdmladhx.s32 q0, q4, q5
  vstrw.32      q0, [inD], #16
  le lr, fixedpoint_radix4_fft_loop_start
end:
        vpop {d0-d15}
        pop {r4-r12,lr}
        bx lr
