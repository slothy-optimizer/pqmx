.syntax unified
.type poly_u16_toom4_fwd_256_mve, %function
.global poly_u16_toom4_fwd_256_mve
poly_u16_toom4_fwd_256_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r14, r0, #1008
mov r12, #1
mov r11, #2
mov r10, #3
mov r9, #7
vldrw.u32 Q0, [r0, #0]
vldrw.u32 Q1, [r0, #128]
vldrw.u32 Q2, [r0, #256]
vldrw.u32 Q3, [r0, #384]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [r14,#(-496)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(-368)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r0, #16]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #144]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r0, #272]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r0, #400]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-240)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r0,#(256)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(128)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [r14,#(-480)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(-352)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r0, #32]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #160]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r0, #288]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r0, #416]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-224)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r0,#(272)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(144)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [r14,#(-464)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(-336)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r0, #48]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #176]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r0, #304]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r0, #432]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-208)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r0,#(288)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(160)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [r14,#(-448)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(-320)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vldrw.u32 Q0, [r0, #64]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #192]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r0, #320]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r0, #448]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(-192)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r0,#(304)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r0,#(176)]
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [r14,#(-432)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(-304)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r0, #80]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #208]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r0, #336]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r0, #464]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-176)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r0,#(320)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(192)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [r14,#(-416)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(-288)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r0, #96]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #224]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r0, #352]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r0, #480]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-160)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r0,#(336)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(208)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [r14,#(-400)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(-272)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r0, #112]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #240]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r0, #368]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r0, #496]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-144)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r0,#(352)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(224)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [r14,#(-384)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(-256)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r14,#(-128)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [r0,#(240)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r0,#(368)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr