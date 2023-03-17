.syntax unified
.type poly_u16_toom4_fwd_512_mve, %function
.global poly_u16_toom4_fwd_512_mve
poly_u16_toom4_fwd_512_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r14, r0, #1008
add r12, r14, #1008
mov r11, #1
mov r10, #2
mov r9, #3
mov r8, #7
vldrw.u32 Q0, [r0, #0]
vldrw.u32 Q1, [r0, #256]
vldrw.u32 Q2, [r14, #-496]
vldrw.u32 Q3, [r14, #-240]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r9
vstrw.u32 Q6, [r14,#(16)]
vmla.s16 Q6, Q5, r10
vmla.s16 Q5, Q1, r9
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(272)]
vmla.s16 Q7, Q2, r9
vmla.s16 Q7, Q3, r8
vldrw.u32 Q0, [r0, #16]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #272]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #-480]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #-224]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(-480)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-496)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(256)]
vmla.s16 Q5, Q0, r9
vstrw.u32 Q4, [r14,#(32)]
vmla.s16 Q4, Q7, r10
vmla.s16 Q7, Q1, r9
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(288)]
vmla.s16 Q6, Q2, r9
vmla.s16 Q6, Q3, r8
vldrw.u32 Q0, [r0, #32]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #288]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #-464]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #-208]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(-464)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-480)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(272)]
vmla.s16 Q7, Q0, r9
vstrw.u32 Q5, [r14,#(48)]
vmla.s16 Q5, Q6, r10
vmla.s16 Q6, Q1, r9
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(304)]
vmla.s16 Q4, Q2, r9
vmla.s16 Q4, Q3, r8
vldrw.u32 Q0, [r0, #48]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #304]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #-448]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #-192]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r12,#(-448)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-464)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(288)]
vmla.s16 Q6, Q0, r9
vstrw.u32 Q7, [r14,#(64)]
vmla.s16 Q7, Q4, r10
vmla.s16 Q4, Q1, r9
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(320)]
vmla.s16 Q5, Q2, r9
vmla.s16 Q5, Q3, r8
vldrw.u32 Q0, [r0, #64]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #320]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #-432]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #-176]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r12,#(-432)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-448)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r0,#(304)]
vmla.s16 Q4, Q0, r9
vstrw.u32 Q6, [r14,#(80)]
vmla.s16 Q6, Q5, r10
vmla.s16 Q5, Q1, r9
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(336)]
vmla.s16 Q7, Q2, r9
vmla.s16 Q7, Q3, r8
vldrw.u32 Q0, [r0, #80]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #336]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #-416]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #-160]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(-416)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-432)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(320)]
vmla.s16 Q5, Q0, r9
vstrw.u32 Q4, [r14,#(96)]
vmla.s16 Q4, Q7, r10
vmla.s16 Q7, Q1, r9
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(352)]
vmla.s16 Q6, Q2, r9
vmla.s16 Q6, Q3, r8
vldrw.u32 Q0, [r0, #96]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #352]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #-400]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #-144]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(-400)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-416)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(336)]
vmla.s16 Q7, Q0, r9
vstrw.u32 Q5, [r14,#(112)]
vmla.s16 Q5, Q6, r10
vmla.s16 Q6, Q1, r9
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(368)]
vmla.s16 Q4, Q2, r9
vmla.s16 Q4, Q3, r8
vldrw.u32 Q0, [r0, #112]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #368]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #-384]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #-128]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r12,#(-384)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-400)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(352)]
vmla.s16 Q6, Q0, r9
vstrw.u32 Q7, [r14,#(128)]
vmla.s16 Q7, Q4, r10
vmla.s16 Q4, Q1, r9
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(384)]
vmla.s16 Q5, Q2, r9
vmla.s16 Q5, Q3, r8
vldrw.u32 Q0, [r0, #128]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #384]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #-368]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #-112]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r12,#(-368)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-384)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r0,#(368)]
vmla.s16 Q4, Q0, r9
vstrw.u32 Q6, [r14,#(144)]
vmla.s16 Q6, Q5, r10
vmla.s16 Q5, Q1, r9
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(400)]
vmla.s16 Q7, Q2, r9
vmla.s16 Q7, Q3, r8
vldrw.u32 Q0, [r0, #144]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #400]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #-352]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #-96]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(-352)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-368)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(384)]
vmla.s16 Q5, Q0, r9
vstrw.u32 Q4, [r14,#(160)]
vmla.s16 Q4, Q7, r10
vmla.s16 Q7, Q1, r9
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(416)]
vmla.s16 Q6, Q2, r9
vmla.s16 Q6, Q3, r8
vldrw.u32 Q0, [r0, #160]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #416]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #-336]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #-80]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(-336)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-352)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(400)]
vmla.s16 Q7, Q0, r9
vstrw.u32 Q5, [r14,#(176)]
vmla.s16 Q5, Q6, r10
vmla.s16 Q6, Q1, r9
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(432)]
vmla.s16 Q4, Q2, r9
vmla.s16 Q4, Q3, r8
vldrw.u32 Q0, [r0, #176]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #432]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #-320]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #-64]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r12,#(-320)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-336)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(416)]
vmla.s16 Q6, Q0, r9
vstrw.u32 Q7, [r14,#(192)]
vmla.s16 Q7, Q4, r10
vmla.s16 Q4, Q1, r9
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r14,#(448)]
vmla.s16 Q5, Q2, r9
vmla.s16 Q5, Q3, r8
vldrw.u32 Q0, [r0, #192]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r0, #448]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r14, #-304]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r14, #-48]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r12,#(-304)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-320)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [r0,#(432)]
vmla.s16 Q4, Q0, r9
vstrw.u32 Q6, [r14,#(208)]
vmla.s16 Q6, Q5, r10
vmla.s16 Q5, Q1, r9
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r14,#(464)]
vmla.s16 Q7, Q2, r9
vmla.s16 Q7, Q3, r8
vldrw.u32 Q0, [r0, #208]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r0, #464]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r14, #-288]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r14, #-32]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r12,#(-288)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-304)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [r0,#(448)]
vmla.s16 Q5, Q0, r9
vstrw.u32 Q4, [r14,#(224)]
vmla.s16 Q4, Q7, r10
vmla.s16 Q7, Q1, r9
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r14,#(480)]
vmla.s16 Q6, Q2, r9
vmla.s16 Q6, Q3, r8
vldrw.u32 Q0, [r0, #224]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r0, #480]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r14, #-272]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r14, #-16]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r12,#(-272)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-288)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [r0,#(464)]
vmla.s16 Q7, Q0, r9
vstrw.u32 Q5, [r14,#(240)]
vmla.s16 Q5, Q6, r10
vmla.s16 Q6, Q1, r9
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r14,#(496)]
vmla.s16 Q4, Q2, r9
vmla.s16 Q4, Q3, r8
vldrw.u32 Q0, [r0, #240]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r0, #496]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r14, #-256]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r14, #0]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r12,#(-256)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-272)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [r0,#(480)]
vmla.s16 Q6, Q0, r9
vstrw.u32 Q7, [r14,#(256)]
vmla.s16 Q7, Q4, r10
vmla.s16 Q4, Q1, r9
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(-496)]
vmla.s16 Q5, Q2, r9
vmla.s16 Q5, Q3, r8
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r12,#(-240)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [r0,#(496)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r14,#(-256)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr