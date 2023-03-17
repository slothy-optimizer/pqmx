.syntax unified
.type poly_u16_toom4_inv_dual_top_oop_256_mve, %function
.global poly_u16_toom4_inv_dual_top_oop_256_mve
poly_u16_toom4_inv_dual_top_oop_256_mve:
push {r4-r11,lr}
vpush {d8-d15}
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
vldrw.u32 Q4, [r14, #(4 * -124)]
vldrw.u32 Q5, [r0, #(4 * 12)]
vsub.u16 Q5, Q5, Q4
vshr.u16 Q5, Q5, #1
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q6, [r14, #(4 * -120)]
vmla.s16 Q6, Q4, r3
vldrw.u32 Q2, [r0, #(4 * 8)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 4)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #(4 * -116)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 0)]
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
vldrw.u32 Q7, [r14, #(4 * -108)]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -112)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #(4 * 28)]
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
vldrw.u32 Q2, [r0, #(4 * 24)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 20)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #(4 * -104)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 16)]
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
vldrw.u32 Q6, [r14, #(4 * -96)]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -100)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #(4 * 44)]
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
vldrw.u32 Q2, [r0, #(4 * 40)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 36)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #(4 * -92)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 32)]
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
vldrw.u32 Q7, [r14, #(4 * -84)]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -88)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #(4 * 60)]
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
vldrw.u32 Q2, [r0, #(4 * 56)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 52)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #(4 * -80)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 48)]
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
vldrw.u32 Q6, [r14, #(4 * -72)]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -76)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #(4 * 76)]
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
vldrw.u32 Q2, [r0, #(4 * 72)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 68)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #(4 * -68)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 64)]
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
vldrw.u32 Q7, [r14, #(4 * -60)]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -64)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #(4 * 92)]
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
vldrw.u32 Q2, [r0, #(4 * 88)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 84)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #(4 * -56)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 80)]
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
vldrw.u32 Q6, [r14, #(4 * -48)]
vmla.s16 Q5, Q7, r2
vshlc Q4, r10, #16
vmul.u16 Q7, Q7, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q7, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -52)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q7, Q7, Q1
vldrw.u32 Q5, [r0, #(4 * 108)]
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
vldrw.u32 Q2, [r0, #(4 * 104)]
vadd.u16 Q6, Q6, Q2
vldrw.u32 Q1, [r0, #(4 * 100)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q7, [r14, #(4 * -44)]
vsub.u16 Q2, Q2, Q7
vldrw.u32 Q0, [r0, #(4 * 96)]
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
vldrw.u32 Q7, [r14, #(4 * -36)]
vmla.s16 Q5, Q6, r2
vshlc Q4, r10, #16
vmul.u16 Q6, Q6, r2
vneg.s16 Q3, Q5
vmla.s16 Q1, Q6, r5
vadd.u16 Q0, Q0, Q4
vmul.u16 Q1, Q1, r4
vldrw.u32 Q4, [r14, #(4 * -40)]
vshr.u16 Q1, Q1, #2
vsub.u16 Q6, Q6, Q1
vldrw.u32 Q5, [r0, #(4 * 124)]
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
vldrw.u32 Q2, [r0, #(4 * 120)]
vadd.u16 Q7, Q7, Q2
vldrw.u32 Q1, [r0, #(4 * 116)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q6, [r14, #(4 * -32)]
vsub.u16 Q2, Q2, Q6
vldrw.u32 Q0, [r0, #(4 * 112)]
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
vpop {d8-d15}
pop {r4-r11,lr}
bx lr