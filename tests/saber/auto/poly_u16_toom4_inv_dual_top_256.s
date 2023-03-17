.syntax unified
.type poly_u16_toom4_inv_dual_top_256_mve, %function
.global poly_u16_toom4_inv_dual_top_256_mve
poly_u16_toom4_inv_dual_top_256_mve:
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
mov r1, #1
vldrw.u32 Q4, [r14, #-496]
vldrw.u32 Q5, [r0, #48]
vsub.u16 Q5, Q5, Q4
vshr.u16 Q5, Q5, #1
vmla.s16 Q4, Q5, r1
vldrw.u32 Q6, [r14, #-480]
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-464]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r1
vldrw.u32 Q7, [r14, #-432]
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
vldrw.u32 Q5, [r0, #112]
vshlc Q6, r11, #16
vmla.s16 Q1, Q6, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-416]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r1
vldrw.u32 Q6, [r14, #-384]
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
vldrw.u32 Q5, [r0, #112]
vshlc Q7, r11, #16
vmla.s16 Q1, Q7, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-368]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r1
vldrw.u32 Q7, [r14, #-336]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-352]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q6, r11, #16
vmla.s16 Q1, Q6, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-320]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r1
vldrw.u32 Q6, [r14, #-288]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-304]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q7, r11, #16
vmla.s16 Q1, Q7, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-272]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r1
vldrw.u32 Q7, [r14, #-240]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-256]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q6, r11, #16
vmla.s16 Q1, Q6, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-224]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r1
vldrw.u32 Q6, [r14, #-192]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-208]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q7, r11, #16
vmla.s16 Q1, Q7, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #-176]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q7
vadd.u16 Q2, Q2, Q1
vmla.s16 Q6, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q6, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q6, Q6, #1
vmla.s16 Q2, Q0, r9
vshlc Q7, r12, #16
vmla.s16 Q6, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q7, r1
vldrw.u32 Q7, [r14, #-144]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #-160]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #112]
vshlc Q6, r11, #16
vmla.s16 Q1, Q6, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r1
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r3
vldrw.u32 Q2, [r0, #32]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #16]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #-128]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #0]
vsub.u16 Q4, Q4, Q0
vadd.u16 Q2, Q2, Q2
vsub.u16 Q4, Q4, Q6
vadd.u16 Q2, Q2, Q1
vmla.s16 Q7, Q4, r8
vshr.u16 Q2, Q2, #3
vmla.s16 Q1, Q7, r1
vsub.u16 Q2, Q2, Q4
vmul.u16 Q2, Q2, r7
vshr.u16 Q7, Q7, #1
vmla.s16 Q2, Q0, r9
vshlc Q6, r12, #16
vmla.s16 Q7, Q5, r6
vsub.u16 Q4, Q4, Q2
vmla.s16 Q2, Q6, r1
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
vmla.s16 Q1, Q7, r1
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]
vmov.u16 Q0, #0
vmov.u16 Q0[0], r10
vmov.u16 Q0[1], r11
vmov.u16 Q0[2], r12
vldrw.u32 Q1, [r0, #-448]!
vsub.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr