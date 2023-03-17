.syntax unified
.type poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_256_mve, %function
.global poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_256_mve
poly_u16_toom4_fwd_dual_packed_limbs_karatsuba_x1_oop_256_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r14, r1, #1008
mov r12, #1
mov r11, #2
mov r10, #3
mov r9, #7
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [r14,#(-432)]
vmla.s16 Q6, Q5, r11
vstrw.u32 Q0, [r1,#(0)]
vmla.s16 Q5, Q1, r10
vstrw.u32 Q3, [r14,#(144)]
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(-240)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q4, Q4, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q6, Q4, Q5
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q4, Q4, Q5
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-48)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r1,#(384)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r1,#(192)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [r14,#(-416)]
vmla.s16 Q4, Q7, r11
vstrw.u32 Q0, [r1,#(16)]
vmla.s16 Q7, Q1, r10
vstrw.u32 Q3, [r14,#(160)]
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(-224)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q5, Q5, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q4, Q5, Q7
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q5, Q5, Q7
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-32)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r1,#(400)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r1,#(208)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [r14,#(-400)]
vmla.s16 Q5, Q6, r11
vstrw.u32 Q0, [r1,#(32)]
vmla.s16 Q6, Q1, r10
vstrw.u32 Q3, [r14,#(176)]
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(-208)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q7, Q7, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q5, Q7, Q6
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q7, Q7, Q6
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-16)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r1,#(416)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r1,#(224)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [r14,#(-384)]
vmla.s16 Q7, Q4, r11
vstrw.u32 Q0, [r1,#(48)]
vmla.s16 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(192)]
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(-192)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q6, Q6, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q7, Q6, Q4
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q6, Q6, Q4
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(0)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r1,#(432)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r1,#(240)]
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [r14,#(-368)]
vmla.s16 Q6, Q5, r11
vstrw.u32 Q0, [r1,#(64)]
vmla.s16 Q5, Q1, r10
vstrw.u32 Q3, [r14,#(208)]
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(-176)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q4, Q4, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q6, Q4, Q5
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q4, Q4, Q5
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(16)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r1,#(448)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r1,#(256)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [r14,#(-352)]
vmla.s16 Q4, Q7, r11
vstrw.u32 Q0, [r1,#(80)]
vmla.s16 Q7, Q1, r10
vstrw.u32 Q3, [r14,#(224)]
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(-160)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q5, Q5, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q4, Q5, Q7
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q5, Q5, Q7
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(32)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r1,#(464)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r1,#(272)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [r14,#(-336)]
vmla.s16 Q5, Q6, r11
vstrw.u32 Q0, [r1,#(96)]
vmla.s16 Q6, Q1, r10
vstrw.u32 Q3, [r14,#(240)]
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(-144)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vshl.u16 Q7, Q7, #1
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vsub.u16 Q5, Q7, Q6
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vadd.u16 Q7, Q7, Q6
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]!
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(48)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r1,#(480)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r1,#(288)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [r14,#(-320)]
vmla.s16 Q7, Q4, r11
vstrw.u32 Q0, [r1,#(112)]
vmla.s16 Q4, Q1, r10
vstrw.u32 Q3, [r14,#(256)]
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(-128)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r14,#(64)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [r1,#(304)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r1,#(496)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr