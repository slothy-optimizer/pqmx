.syntax unified
.type poly_u16_toom4_inv_dual_bottom_256_mve, %function
.global poly_u16_toom4_inv_dual_bottom_256_mve
poly_u16_toom4_inv_dual_bottom_256_mve:
push {r4-r11,lr}
vpush {d8-d15}
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
mov r1, #-1
vldrw.u32 Q4, [r0, #(4 * -96)]
vldrw.u32 Q5, [r0, #(4 * 12)]
vsub.u16 Q5, Q5, Q4
vshr.u16 Q5, Q5, #1
vmla.s16 Q4, Q5, r2
vldrw.u32 Q6, [r0, #(4 * -92)]
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q7, [r0, #(4 * -88)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q7, r1
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
vldrw.u32 Q7, [r0, #(4 * -80)]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -84)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q6, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q6, [r0, #(4 * -92)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q6, r1
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
vldrw.u32 Q6, [r0, #(4 * -84)]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -88)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q7, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q7, [r0, #(4 * -96)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q7, r1
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
vldrw.u32 Q7, [r0, #(4 * -88)]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -92)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q6, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q6, [r0, #(4 * -100)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q6, r1
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
vldrw.u32 Q6, [r0, #(4 * -92)]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -96)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q7, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q7, [r0, #(4 * -104)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q7, r1
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
vldrw.u32 Q7, [r0, #(4 * -96)]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -100)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q6, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q6, [r0, #(4 * -108)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q6, r1
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
vldrw.u32 Q6, [r0, #(4 * -100)]
vmla.s16 Q5, Q7, r3
vshlc Q4, r11, #16
vmul.u16 Q7, Q7, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -104)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q7, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q6, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q7, [r0, #(4 * -112)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q7, r1
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
vldrw.u32 Q7, [r0, #(4 * -104)]
vmla.s16 Q5, Q6, r3
vshlc Q4, r11, #16
vmul.u16 Q6, Q6, r3
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r6
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r5
vldrw.u32 Q4, [r0, #(4 * -108)]
vshr.u16 Q1, Q1, #2
vmla.s16 Q6, Q1, r1
vldrw.u32 Q5, [r0, #(4 * 28)]
vshlc Q6, r12, #16
vmla.s16 Q1, Q6, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vsub.u16 Q5, Q5, Q4
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vshr.u16 Q5, Q5, #1
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vmla.s16 Q4, Q5, r2
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]!
vmla.s16 Q7, Q4, r4
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vmla.s16 Q1, Q2, r1
vldrw.u32 Q6, [r0, #(4 * -116)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 0)]
vmla.s16 Q4, Q0, r1
vadd.u16 Q2, Q2, Q2
vmla.s16 Q4, Q6, r1
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
vmla.s16 Q7, Q1, r1
vshlc Q7, r12, #16
vmla.s16 Q1, Q7, r2
vst40.u16 {Q0,Q1,Q2,Q3}, [r0]
vst41.u16 {Q0,Q1,Q2,Q3}, [r0]
vst42.u16 {Q0,Q1,Q2,Q3}, [r0]
vst43.u16 {Q0,Q1,Q2,Q3}, [r0]
vmov.u16 Q0, #0
vmov.u16 Q0[0], r11
vmov.u16 Q0[1], r12
vmov.u16 Q0[2], r14
vldrw.u32 Q1, [r0, #-448]!
vsub.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr