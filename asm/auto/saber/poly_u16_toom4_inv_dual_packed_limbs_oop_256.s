.syntax unified
.type poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve, %function
.global poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve
poly_u16_toom4_inv_dual_packed_limbs_oop_256_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r14, r0, #1008
mov r12, #0
mov r11, #0
mov r10, #0
mov r9, #21840
mov r8, #45
mov r7, #43691
mov r6, #8
mov r5, #-30
mov r4, #4369
mov r3, #-65
mov r2, #36409
vldrw.u32 Q4, [r14, #-496]
vldrw.u32 Q5, [r0, #384]
vsub.u16 Q5, Q5, Q4
vshr.u16 Q5, Q5, #1
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q6, [r14, #-368]
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #256]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #128]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-240]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q6
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q7
vldrw.u32 Q7, [r14, #-352]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-480]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #400]
vshlc Q6, r11, #16
vadd.u16 Q1, Q1, Q6
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #272]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #144]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-224]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #16]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q7
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q6
vldrw.u32 Q6, [r14, #-336]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-464]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #416]
vshlc Q7, r11, #16
vadd.u16 Q1, Q1, Q7
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #288]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #160]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-208]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #32]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q6
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q7
vldrw.u32 Q7, [r14, #-320]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-448]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #432]
vshlc Q6, r11, #16
vadd.u16 Q1, Q1, Q6
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #304]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #176]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-192]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #48]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q7
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q6
vldrw.u32 Q6, [r14, #-304]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-432]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #448]
vshlc Q7, r11, #16
vadd.u16 Q1, Q1, Q7
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #320]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #192]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-176]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #64]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q6
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q7
vldrw.u32 Q7, [r14, #-288]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-416]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #464]
vshlc Q6, r11, #16
vadd.u16 Q1, Q1, Q6
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #336]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #208]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-160]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #80]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q7
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q6
vldrw.u32 Q6, [r14, #-272]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-400]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #480]
vshlc Q7, r11, #16
vadd.u16 Q1, Q1, Q7
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #352]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #224]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-144]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #96]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q6
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q7
vldrw.u32 Q7, [r14, #-256]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-384]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #496]
vshlc Q6, r11, #16
vadd.u16 Q1, Q1, Q6
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vadd.u16 Q4, Q4, Q5
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #368]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #240]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-128]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #112]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vadd.u16 Q1, Q1, Q7
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vadd.u16 Q2, Q2, Q6
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vshlc Q7, r11, #16
vadd.u16 Q1, Q1, Q7
vst40.u16 {Q0,Q1,Q2,Q3}, [r1]
vst41.u16 {Q0,Q1,Q2,Q3}, [r1]
vst42.u16 {Q0,Q1,Q2,Q3}, [r1]
vst43.u16 {Q0,Q1,Q2,Q3}, [r1]
vmov.u16 Q0, #0
vmov.u16 Q0[0], r10
vmov.u16 Q0[1], r11
vmov.u16 Q0[2], r12
vldrw.u32 Q1, [r1, #-448]!
vsub.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r1]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr