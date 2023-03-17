.syntax unified
.type poly_u16_toom4_fwd_karatsuba_x2_oop_256_mve, %function
.global poly_u16_toom4_fwd_karatsuba_x2_oop_256_mve
poly_u16_toom4_fwd_karatsuba_x2_oop_256_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r14, r1, #1008
add r12, r14, #1008
add r11, r0, #1008
mov r10, #1
mov r9, #2
mov r8, #3
mov r7, #7
vldrw.u32 Q0, [r0, #(4 * 0)]
vldrw.u32 Q1, [r0, #(4 * 32)]
vldrw.u32 Q2, [r0, #(4 * 64)]
vldrw.u32 Q3, [r0, #(4 * 96)]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r14,#(-144)]
vmla.s16 Q6, Q5, r9
vstrw.u32 Q0, [r1,#(0)]
vmla.s16 Q5, Q1, r8
vstrw.u32 Q3, [r12,#(-288)]
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(144)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 4)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #(4 * 36)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r0, #(4 * 68)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r0, #(4 * 100)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(432)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-432)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r1,#(288)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r14,#(-128)]
vmla.s16 Q4, Q7, r9
vstrw.u32 Q0, [r1,#(16)]
vmla.s16 Q7, Q1, r8
vstrw.u32 Q3, [r12,#(-272)]
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(160)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 8)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #(4 * 40)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r0, #(4 * 72)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r0, #(4 * 104)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(448)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-416)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r1,#(304)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r14,#(-112)]
vmla.s16 Q5, Q6, r9
vstrw.u32 Q0, [r1,#(32)]
vmla.s16 Q6, Q1, r8
vstrw.u32 Q3, [r12,#(-256)]
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(176)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 12)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #(4 * 44)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r0, #(4 * 76)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r0, #(4 * 108)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(464)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-400)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r1,#(320)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r14,#(-96)]
vmla.s16 Q7, Q4, r9
vstrw.u32 Q0, [r1,#(48)]
vmla.s16 Q4, Q1, r8
vstrw.u32 Q3, [r12,#(-240)]
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(192)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 16)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #(4 * 48)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r0, #(4 * 80)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r0, #(4 * 112)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(480)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-384)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r1,#(336)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r14,#(-48)]
vmla.s16 Q6, Q5, r9
vstrw.u32 Q0, [r1,#(96)]
vmla.s16 Q5, Q1, r8
vstrw.u32 Q3, [r12,#(-192)]
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(240)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 20)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #(4 * 52)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r0, #(4 * 84)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r0, #(4 * 116)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(-480)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-336)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r1,#(384)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r14,#(-32)]
vmla.s16 Q4, Q7, r9
vstrw.u32 Q0, [r1,#(112)]
vmla.s16 Q7, Q1, r8
vstrw.u32 Q3, [r12,#(-176)]
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(256)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 24)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #(4 * 56)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r0, #(4 * 88)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r0, #(4 * 120)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(-464)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-320)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r1,#(400)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r14,#(-16)]
vmla.s16 Q5, Q6, r9
vstrw.u32 Q0, [r1,#(128)]
vmla.s16 Q6, Q1, r8
vstrw.u32 Q3, [r12,#(-160)]
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(272)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 28)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #(4 * 60)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r0, #(4 * 92)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r0, #(4 * 124)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r12,#(-448)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-304)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r1,#(416)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r14,#(0)]
vmla.s16 Q7, Q4, r9
vstrw.u32 Q0, [r1,#(144)]
vmla.s16 Q4, Q1, r8
vstrw.u32 Q3, [r12,#(-144)]
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(288)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r12,#(-432)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [r1,#(432)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r14,#(-288)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr