        .syntax unified
        .type   fixedpoint_radix4_fft_opt_M85, %function
        .global fixedpoint_radix4_fft_opt_M85


        inA .req r0
        pW0 .req r1 // Use the same twiddle data for TESTING ONLY
        sz  .req r2

        inB .req r3
        inC .req r4
        inD .req r5

        pW1 .req r6
        pW2 .req r7
        pW3 .req r8

.macro load_data
        vldrw.s32   qA, [inA]
        vldrw.s32   qB, [inB]
        vldrw.s32   qC, [inC]
        vldrw.s32   qD, [inD]
.endm

.macro load_twiddles
        vldrw.s32  qTw1, [pW1], #16
        vldrw.s32  qTw2, [pW2], #16
        vldrw.s32  qTw3, [pW3], #16
.endm

.macro store_data
        vstrw.32   qA, [inA], #16
        vstrw.32   qB, [inB], #16
        vstrw.32   qC, [inC], #16
        vstrw.32   qD, [inD], #16
.endm

.macro cmul_fx out, in0, in1
        vqdmlsdh.s32 \out, \in0, \in1
        vqdmladhx.s32  \out, \in0, \in1
.endm

        .text
        .align 4
fixedpoint_radix4_fft_opt_M85:
        push    {r4-r12,lr}
        vpush   {d0-d15}

        add     inB, inA, sz
        add     inC, inB, sz
        add     inD, inC, sz

        add     pW1, pW0, sz
        add     pW2, pW1, sz
        add     pW3, pW2, sz

        lsr     lr, sz, #4
        wls     lr, lr, end

        vldrw.s32 q2, [r4]          // *
        
        // original source code
        // vldrw.s32 q2, [r4]      // * 
        
        sub lr, lr, #1
.p2align 2
fixedpoint_radix4_fft_loop_start:
        vldrw.s32 q4, [r0]                  // *........................
        vhadd.s32 q6, q4, q2                // .......*.................
        vldrw.s32 q3, [r3]                  // .*.......................
        vhsub.s32 q4, q4, q2                // .........*...............
        vldrw.s32 q1, [r5]                  // ...*.....................
        vhadd.s32 q5, q3, q1                // ........*................
        vldrw.s32 q2, [r6] , #16            // ....*....................
        vhsub.s32 q0, q6, q5                // ............*............
        vqdmlsdh.s32 q7, q2, q0             // ...............*.........
        vhadd.s32 q6, q6, q5                // ...........*.............
        vqdmladhx.s32 q7, q2, q0            // ................*........
        vhsub.s32 q3, q3, q1                // ..........*..............
        vstrw.u32 q6, [r0] , #16            // .....................*...
        vhcadd.s32 q6, q4, q3, #270         // .............*...........
        vstrw.u32 q7, [r3] , #16            // ......................*..
        vhcadd.s32 q1, q4, q3, #90          // ..............*..........
        vldrw.s32 q4, [r7] , #16            // .....*...................
        vqdmlsdh.s32 q3, q4, q6             // .................*.......
        vldrw.s32 q5, [r8] , #16            // ......*..................
        vqdmladhx.s32 q3, q4, q6            // ..................*......
        vstrw.u32 q3, [r4] , #16            // .......................*.
        vqdmlsdh.s32 q4, q5, q1             // ...................*.....
        vldrw.s32 q2, [r4]                  // ..e......................
        vqdmladhx.s32 q4, q5, q1            // ....................*....
        vstrw.u32 q4, [r5] , #16            // ........................*
        
        // original source code
        // vldrw.s32   qA, [r0]                   // ...*........................ 
        // vldrw.s32   qB, [r3]                   // ...|.*...................... 
        // vldrw.s32   qC, [r4]                   // e..|.....................e.. 
        // vldrw.s32   qD, [r5]                   // ...|...*.................... 
        // vldrw.s32  qTw1, [r6], #16             // ...|.....*.................. 
        // vldrw.s32  qTw2, [r7], #16             // ...|...............*........ 
        // vldrw.s32  qTw3, [r8], #16             // ...|.................*...... 
        // vhadd.s32  qSm0, qA,   qC              // ...|*....................... 
        // vhadd.s32  qSm1, qB,   qD              // ...|....*................... 
        // vhsub.s32  qDf0, qA,   qC              // ...|..*..................... 
        // vhsub.s32  qDf1, qB,   qD              // ...|..........*............. 
        // vhadd.s32  qA,   qSm0, qSm1            // ...|........*............... 
        // vhsub.s32  qBp,  qSm0, qSm1            // ...|......*................. 
        // vhcadd.s32 qCp,  qDf0, qDf1, #270      // ...|............*........... 
        // vhcadd.s32 qDp,  qDf0, qDf1, #90       // ...|..............*......... 
        // vqdmlsdh.s32 qB, qTw1, qBp             // ...|.......*................ 
        // vqdmladhx.s32  qB, qTw1, qBp           // ...|.........*.............. 
        // vqdmlsdh.s32 qC, qTw2, qCp             // ...|................*....... 
        // vqdmladhx.s32  qC, qTw2, qCp           // ...|..................*..... 
        // vqdmlsdh.s32 qD, qTw3, qDp             // ...|....................*... 
        // vqdmladhx.s32  qD, qTw3, qDp           // .*.|......................*. 
        // vstrw.32   qA, [r0], #16               // ...|...........*............ 
        // vstrw.32   qB, [r3], #16               // ...|.............*.......... 
        // vstrw.32   qC, [r4], #16               // ...|...................*.... 
        // vstrw.32   qD, [r5], #16               // ..*|.......................* 
        
        le lr, fixedpoint_radix4_fft_loop_start
        vldrw.s32 q4, [r0]                  // *.......................
        vhadd.s32 q6, q4, q2                // .*......................
        vldrw.s32 q3, [r3]                  // ..*.....................
        vhsub.s32 q4, q4, q2                // ...*....................
        vldrw.s32 q1, [r5]                  // ....*...................
        vhadd.s32 q5, q3, q1                // .....*..................
        vldrw.s32 q2, [r6] , #16            // ......*.................
        vhsub.s32 q0, q6, q5                // .......*................
        vqdmlsdh.s32 q7, q2, q0             // ........*...............
        vhadd.s32 q6, q6, q5                // .........*..............
        vqdmladhx.s32 q7, q2, q0            // ..........*.............
        vhsub.s32 q3, q3, q1                // ...........*............
        vstrw.u32 q6, [r0] , #16            // ............*...........
        vhcadd.s32 q6, q4, q3, #270         // .............*..........
        vldrw.s32 q1, [r7] , #16            // ................*.......
        vhcadd.s32 q5, q4, q3, #90          // ...............*........
        vqdmlsdh.s32 q4, q1, q6             // .................*......
        vstrw.u32 q7, [r3] , #16            // ..............*.........
        vqdmladhx.s32 q4, q1, q6            // ...................*....
        vldrw.s32 q6, [r8] , #16            // ..................*.....
        vqdmlsdh.s32 q3, q6, q5             // .....................*..
        vstrw.u32 q4, [r4] , #16            // ....................*...
        vqdmladhx.s32 q3, q6, q5            // ......................*.
        vstrw.u32 q3, [r5] , #16            // .......................*
        
        // original source code
        // vldrw.s32 q4, [r0]               // *....................... 
        // vhadd.s32 q6, q4, q2             // .*...................... 
        // vldrw.s32 q3, [r3]               // ..*..................... 
        // vhsub.s32 q4, q4, q2             // ...*.................... 
        // vldrw.s32 q1, [r5]               // ....*................... 
        // vhadd.s32 q5, q3, q1             // .....*.................. 
        // vldrw.s32 q2, [r6] , #16         // ......*................. 
        // vhsub.s32 q0, q6, q5             // .......*................ 
        // vqdmlsdh.s32 q7, q2, q0          // ........*............... 
        // vhadd.s32 q6, q6, q5             // .........*.............. 
        // vqdmladhx.s32 q7, q2, q0         // ..........*............. 
        // vhsub.s32 q3, q3, q1             // ...........*............ 
        // vstrw.u32 q6, [r0] , #16         // ............*........... 
        // vhcadd.s32 q6, q4, q3, #270      // .............*.......... 
        // vstrw.u32 q7, [r3] , #16         // .................*...... 
        // vhcadd.s32 q1, q4, q3, #90       // ...............*........ 
        // vldrw.s32 q4, [r7] , #16         // ..............*......... 
        // vqdmlsdh.s32 q3, q4, q6          // ................*....... 
        // vldrw.s32 q5, [r8] , #16         // ...................*.... 
        // vqdmladhx.s32 q3, q4, q6         // ..................*..... 
        // vstrw.u32 q3, [r4] , #16         // .....................*.. 
        // vqdmlsdh.s32 q4, q5, q1          // ....................*... 
        // vqdmladhx.s32 q4, q5, q1         // ......................*. 
        // vstrw.u32 q4, [r5] , #16         // .......................* 
        

end:
        vpop    {d0-d15}
        pop     {r4-r12,lr}
        bx      lr