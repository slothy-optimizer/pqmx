.syntax unified
.type poly_u16_mul_448_karatsubax2_fwd_mve, %function
.global poly_u16_mul_448_karatsubax2_fwd_mve
poly_u16_mul_448_karatsubax2_fwd_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r14, r0, #896
add r12, r0, #1008
add r11, r14, #1008
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(0)]
vstrw.u32 Q1, [r0,#(16)]
vstrw.u32 Q2, [r0,#(32)]
vstrw.u32 Q3, [r0,#(48)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(0)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(16)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(64)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(32)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(48)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(64)]
vstrw.u32 Q1, [r0,#(80)]
vstrw.u32 Q2, [r0,#(96)]
vstrw.u32 Q3, [r0,#(112)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(80)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(96)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(144)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(112)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(128)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(128)]
vstrw.u32 Q1, [r0,#(144)]
vstrw.u32 Q2, [r0,#(160)]
vstrw.u32 Q3, [r0,#(176)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(160)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(176)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(224)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(192)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(208)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(192)]
vstrw.u32 Q1, [r0,#(208)]
vstrw.u32 Q2, [r0,#(224)]
vstrw.u32 Q3, [r0,#(240)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(240)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(256)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(304)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(272)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(288)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(256)]
vstrw.u32 Q1, [r0,#(272)]
vstrw.u32 Q2, [r0,#(288)]
vstrw.u32 Q3, [r0,#(304)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(320)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(336)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(384)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(352)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(368)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(320)]
vstrw.u32 Q1, [r0,#(336)]
vstrw.u32 Q2, [r0,#(352)]
vstrw.u32 Q3, [r0,#(368)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(400)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(416)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r14,#(464)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r14,#(432)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r14,#(448)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(384)]
vstrw.u32 Q1, [r0,#(400)]
vstrw.u32 Q2, [r0,#(416)]
vstrw.u32 Q3, [r0,#(432)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r14,#(480)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r14,#(496)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-464)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-496)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-480)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r0,#(448)]
vstrw.u32 Q1, [r0,#(464)]
vstrw.u32 Q2, [r0,#(480)]
vstrw.u32 Q3, [r0,#(496)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-448)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-432)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-384)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-416)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-400)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-496)]
vstrw.u32 Q1, [r12,#(-480)]
vstrw.u32 Q2, [r12,#(-464)]
vstrw.u32 Q3, [r12,#(-448)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-368)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-352)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-304)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-336)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-320)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-432)]
vstrw.u32 Q1, [r12,#(-416)]
vstrw.u32 Q2, [r12,#(-400)]
vstrw.u32 Q3, [r12,#(-384)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-288)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-272)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-224)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-256)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-240)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-368)]
vstrw.u32 Q1, [r12,#(-352)]
vstrw.u32 Q2, [r12,#(-336)]
vstrw.u32 Q3, [r12,#(-320)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-208)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-192)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-144)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-176)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-160)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-304)]
vstrw.u32 Q1, [r12,#(-288)]
vstrw.u32 Q2, [r12,#(-272)]
vstrw.u32 Q3, [r12,#(-256)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-128)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-112)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(-64)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-96)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(-80)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-240)]
vstrw.u32 Q1, [r12,#(-224)]
vstrw.u32 Q2, [r12,#(-208)]
vstrw.u32 Q3, [r12,#(-192)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(-48)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(-32)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(16)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(-16)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(0)]
vld40.u16 {Q0, Q1, Q2, Q3}, [r0]
vld41.u16 {Q0, Q1, Q2, Q3}, [r0]
vld42.u16 {Q0, Q1, Q2, Q3}, [r0]
vld43.u16 {Q0, Q1, Q2, Q3}, [r0]
nop
vstrw.u32 Q0, [r12,#(-176)]
vstrw.u32 Q1, [r12,#(-160)]
vstrw.u32 Q2, [r12,#(-144)]
vstrw.u32 Q3, [r12,#(-128)]
vadd.u16 Q4, Q0, Q1
vstrw.u32 Q4, [r11,#(32)]
vadd.u16 Q5, Q2, Q3
vstrw.u32 Q5, [r11,#(48)]
vadd.u16 Q4, Q4, Q5
vstrw.u32 Q4, [r11,#(96)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q4, [r11,#(64)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q4, [r11,#(80)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr