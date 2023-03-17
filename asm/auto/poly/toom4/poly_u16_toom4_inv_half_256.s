.syntax unified
.type poly_u16_toom4_inv_half_256_mve, %function
.global poly_u16_toom4_inv_half_256_mve
poly_u16_toom4_inv_half_256_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
mov r14, #-64
mov r12, #45
mov r11, #-8
mov r10, #43691
mov r9, #16
mov r8, #30
mov r7, #61167
mov r6, #-65
mov r5, #36409
mov r4, #1
vldrw.u32 Q0, [r0, #(4 * 34)]
vldrw.u32 Q1, [r0, #(4 * -62)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * -94)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r0, #(4 * 2)]
vldrw.u32 Q4, [r0, #(4 * -30)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r0, #(4 * 66)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r6
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r4
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r0, #(4 * 38)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r11
vldrw.u32 Q5, [r0, #(4 * -26)]
vmla.s16 Q0, Q3, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-248)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r9
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r0,#(8)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r5
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r0, #(4 * -58)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r8
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r0,#(-120)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r7
vstrw.u32 Q2, [r0,#(-376)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r0,#(136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -90)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 6)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r0, #(4 * 70)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r6
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r0, #(4 * 42)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q3, [r0, #(4 * -22)]
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-232)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(24)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -54)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-360)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r0,#(152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -86)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 10)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r0, #(4 * 74)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r6
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r0, #(4 * 46)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q5, [r0, #(4 * -18)]
vmla.s16 Q4, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(40)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -50)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r8
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-344)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r0,#(168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -82)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 14)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r0, #(4 * 78)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r6
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r0, #(4 * 50)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q3, [r0, #(4 * -14)]
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(56)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -46)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(-72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-328)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r0,#(184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -78)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 18)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r0, #(4 * 82)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r6
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r0, #(4 * 54)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q5, [r0, #(4 * -10)]
vmla.s16 Q4, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(72)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -42)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r8
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(-56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-312)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r0,#(200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -74)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 22)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -106)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r0, #(4 * 86)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r6
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r0, #(4 * 58)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q3, [r0, #(4 * -6)]
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(88)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -38)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(-40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-296)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r0,#(216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -70)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 26)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r0, #(4 * 90)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r6
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r0, #(4 * 62)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q5, [r0, #(4 * -2)]
vmla.s16 Q4, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(104)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * -34)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r8
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(-24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-280)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r0,#(232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -66)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 30)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -98)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r0, #(4 * 94)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r6
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r4
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [r0,#(-136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r0,#(120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(-8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r7
vstrw.u32 Q0, [r0,#(-264)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r0,#(248)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr