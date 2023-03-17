.syntax unified
.type poly_u16_toom4_inv_dual_bottom_oop_256_mve, %function
.global poly_u16_toom4_inv_dual_bottom_oop_256_mve
poly_u16_toom4_inv_dual_bottom_oop_256_mve:
push {r4-r11,lr}
vpush {d0-d15}
mov r14, #0
mov r12, #0
mov r11, #0
mov r10, #21840
mov r9, #45
mov r8, #43691
mov r7, #8
mov r6, #-30
mov r5, #4369
mov r4, #-65
mov r3, #36409
mov r2, #1
vldrw.u32 Q4, [r0, #-384]
vldrw.u32 Q5, [r0, #48]
vsub.u16 Q5, Q5, Q4
vshr.u16 Q5, Q5, #1
vmla.s16 Q4, Q5, r2
vldrw.u32 Q6, [r0, #-368]
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r0, #-352]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r10
vshlc Q7, r14, #16
vmla.s16 Q6, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r2
vldrw.u32 Q7, [r0, #-320]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-336]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #96]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #80]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r0, #-304]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #64]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r10
vshlc Q6, r14, #16
vmla.s16 Q7, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r2
vldrw.u32 Q6, [r0, #-272]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-288]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #176]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #160]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #144]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r0, #-256]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #128]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r10
vshlc Q7, r14, #16
vmla.s16 Q6, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r2
vldrw.u32 Q7, [r0, #-224]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-240]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #240]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #224]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #208]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r0, #-208]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #192]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r10
vshlc Q6, r14, #16
vmla.s16 Q7, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r2
vldrw.u32 Q6, [r0, #-176]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-192]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #304]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #288]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #272]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r0, #-160]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #256]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r10
vshlc Q7, r14, #16
vmla.s16 Q6, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r2
vldrw.u32 Q7, [r0, #-128]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-144]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #368]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #352]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #336]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r0, #-112]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #320]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r10
vshlc Q6, r14, #16
vmla.s16 Q7, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r2
vldrw.u32 Q6, [r0, #-80]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-96]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #432]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #416]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #400]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r0, #-64]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #384]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r10
vshlc Q7, r14, #16
vmla.s16 Q6, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r2
vldrw.u32 Q7, [r0, #-32]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #-48]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #496]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #480]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #464]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r0, #-16]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #448]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r9
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r2
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r8
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r10
vshlc Q6, r14, #16
vmla.s16 Q7, Q5, r7
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r2
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]
vmov.u16 Q0, #0
vmov.u16 Q0[0], r11
vmov.u16 Q0[1], r12
vmov.u16 Q0[2], r14
vldrw.u32 Q1, [r1, #-448]!
vsub.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r1]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr