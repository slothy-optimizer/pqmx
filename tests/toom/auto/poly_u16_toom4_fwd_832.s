.syntax unified
.type poly_u16_toom4_fwd_832_mve, %function
.global poly_u16_toom4_fwd_832_mve
poly_u16_toom4_fwd_832_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r14, r0, #1008
add r12, r14, #1008
add r11, r12, #1008
mov r10, #1
mov r9, #2
mov r8, #3
mov r7, #7
vldrw.u32 Q0, [r0, #(4 * 0)]
vldrw.u32 Q1, [r0, #(4 * 104)]
vldrw.u32 Q2, [r14, #(4 * -44)]
vldrw.u32 Q3, [r14, #(4 * 60)]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-352)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(64)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 4)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #(4 * 108)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * -40)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #(4 * 64)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(480)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-176)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(416)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-336)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(80)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 8)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #(4 * 112)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * -36)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #(4 * 68)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(496)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-160)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(432)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(-320)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(96)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 12)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #(4 * 116)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * -32)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #(4 * 72)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-496)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-144)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(448)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(-304)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(112)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 16)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #(4 * 120)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * -28)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #(4 * 76)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-480)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-128)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r0,#(464)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-288)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(128)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 20)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #(4 * 124)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * -24)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #(4 * 80)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-464)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-112)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(480)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-272)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(144)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 24)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r14, #(4 * -124)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * -20)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #(4 * 84)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-448)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-96)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(496)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(-256)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(160)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 28)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r14, #(4 * -120)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * -16)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #(4 * 88)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-432)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-80)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r14,#(-496)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(-240)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(176)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 32)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r14, #(4 * -116)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * -12)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #(4 * 92)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-416)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-64)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r14,#(-480)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-224)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(192)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 36)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r14, #(4 * -112)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * -8)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #(4 * 96)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-400)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-48)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r14,#(-464)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-208)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(208)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 40)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r14, #(4 * -108)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * -4)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #(4 * 100)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-384)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-32)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r14,#(-448)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(-192)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(224)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 44)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r14, #(4 * -104)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * 0)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #(4 * 104)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-368)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-16)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r14,#(-432)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(-176)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(240)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 48)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r14, #(4 * -100)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * 4)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #(4 * 108)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-352)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(0)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r14,#(-416)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-160)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(256)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 52)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r14, #(4 * -96)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * 8)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #(4 * 112)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-336)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(16)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r14,#(-400)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-144)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(272)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 56)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r14, #(4 * -92)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * 12)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #(4 * 116)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-320)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(32)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r14,#(-384)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(-128)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(288)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 60)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r14, #(4 * -88)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * 16)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #(4 * 120)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-304)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(48)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r14,#(-368)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(-112)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(304)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 64)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r14, #(4 * -84)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * 20)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #(4 * 124)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-288)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(64)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r14,#(-352)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-96)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(320)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 68)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r14, #(4 * -80)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * 24)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r12, #(4 * -124)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-272)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(80)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r14,#(-336)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-80)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(336)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 72)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r14, #(4 * -76)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * 28)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r12, #(4 * -120)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-256)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(96)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r14,#(-320)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(-64)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(352)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 76)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r14, #(4 * -72)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * 32)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r12, #(4 * -116)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-240)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(112)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r14,#(-304)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(-48)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(368)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 80)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r14, #(4 * -68)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * 36)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r12, #(4 * -112)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-224)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(128)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r14,#(-288)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(-32)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(384)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 84)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r14, #(4 * -64)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * 40)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r12, #(4 * -108)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-208)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(144)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r14,#(-272)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(-16)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(400)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 88)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r14, #(4 * -60)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #(4 * 44)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r12, #(4 * -104)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-192)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(160)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r14,#(-256)]
vmla.s16 Q7, Q0, r8
vstrw.u32 Q5, [r12,#(0)]
vmla.s16 Q5, Q6, r9
vmla.s16 Q6, Q1, r8
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(416)]
vmla.s16 Q4, Q2, r8
vmla.s16 Q4, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 92)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r14, #(4 * -56)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #(4 * 48)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r12, #(4 * -100)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-176)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(176)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r14,#(-240)]
vmla.s16 Q6, Q0, r8
vstrw.u32 Q7, [r12,#(16)]
vmla.s16 Q7, Q4, r9
vmla.s16 Q4, Q1, r8
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(432)]
vmla.s16 Q5, Q2, r8
vmla.s16 Q5, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 96)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r14, #(4 * -52)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #(4 * 52)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r12, #(4 * -96)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-160)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(192)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r14,#(-224)]
vmla.s16 Q4, Q0, r8
vstrw.u32 Q6, [r12,#(32)]
vmla.s16 Q6, Q5, r9
vmla.s16 Q5, Q1, r8
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(448)]
vmla.s16 Q7, Q2, r8
vmla.s16 Q7, Q3, r7
vldrw.u32 Q0, [r0, #(4 * 100)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r14, #(4 * -48)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #(4 * 56)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r12, #(4 * -92)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-144)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(208)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r14,#(-208)]
vmla.s16 Q5, Q0, r8
vstrw.u32 Q4, [r12,#(48)]
vmla.s16 Q4, Q7, r9
vmla.s16 Q7, Q1, r8
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(464)]
vmla.s16 Q6, Q2, r8
vmla.s16 Q6, Q3, r7
vshl.u16 Q5, Q5, #1
vstrw.u32 Q6, [r11,#(-128)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q4, [r14,#(-192)]
vadd.u16 Q5, Q5, Q7
vstrw.u32 Q5, [r14,#(224)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr