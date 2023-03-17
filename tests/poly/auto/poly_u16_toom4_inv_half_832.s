.syntax unified
.type poly_u16_toom4_inv_half_832_mve, %function
.global poly_u16_toom4_inv_half_832_mve
poly_u16_toom4_inv_half_832_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
add r14, r0, #1008
add r12, r14, #1008
mov r11, #-64
mov r10, #45
mov r9, #-8
mov r8, #43691
mov r7, #16
mov r6, #30
mov r5, #61167
mov r4, #-65
mov r3, #36409
mov r2, #1
vldrw.u32 Q0, [r12, #(4 * -110)]
vldrw.u32 Q1, [r0, #(4 * 82)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * -22)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #(4 * 38)]
vldrw.u32 Q4, [r14, #(4 * -66)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r12, #(4 * -6)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r4
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r12, #(4 * -106)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r9
vldrw.u32 Q5, [r14, #(4 * -62)]
vmla.s16 Q0, Q3, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(328)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r7
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(152)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r3
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r0, #(4 * 86)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r6
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r14,#(-264)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r5
vstrw.u32 Q2, [r0,#(-88)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r12,#(-440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -18)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 42)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * -2)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -102)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -58)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(168)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 90)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-72)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -14)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 46)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 2)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -98)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -54)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(184)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 94)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-56)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -10)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 50)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 6)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -94)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -50)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(200)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 98)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-216)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-40)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -6)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 54)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 10)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -90)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -46)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(392)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(216)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 102)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-24)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -2)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 58)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -106)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 14)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -86)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -42)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(408)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(232)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 106)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-8)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 2)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 62)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 18)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -82)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -38)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(424)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(248)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 110)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(8)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 6)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 66)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -98)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 22)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -78)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -34)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(440)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(264)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 114)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(24)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 10)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 70)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -94)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 26)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -74)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -30)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(456)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(280)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 118)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(40)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-312)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 14)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 74)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -90)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 30)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -70)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -26)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(472)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(296)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 122)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(56)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-296)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 18)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 78)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -86)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 34)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -66)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -22)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(488)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(312)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 126)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(72)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-280)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 22)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 82)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -82)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 38)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -62)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -18)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(504)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -122)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(88)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-264)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 26)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 86)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -78)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 42)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -58)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -14)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-488)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -118)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(104)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-248)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 30)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 90)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -74)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 46)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -54)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -10)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-472)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -114)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(120)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-232)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 34)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 94)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -70)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 50)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -50)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * -6)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-456)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -110)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(136)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-216)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 38)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 98)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -66)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 54)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -46)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * -2)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-440)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -106)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(152)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-200)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 42)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 102)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -62)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 58)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -42)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * 2)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-424)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -102)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(168)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-184)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 46)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 106)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -58)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 62)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -38)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * 6)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-408)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -98)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(184)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-168)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 50)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 110)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -54)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 66)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -34)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * 10)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-392)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -94)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(200)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-152)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 54)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 114)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -50)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 70)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -30)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * 14)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -90)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(216)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-136)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 58)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 118)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -46)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 74)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -26)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * 18)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -86)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(232)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-120)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 62)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 122)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -42)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 78)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -22)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * 22)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -82)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(248)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-104)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 66)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * 126)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -38)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 82)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -18)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * 26)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(504)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -78)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(264)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-88)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 70)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -122)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -34)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 86)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * -14)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #(4 * 30)]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -74)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(280)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-72)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 74)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -118)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -30)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #(4 * 90)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * -10)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #(4 * 34)]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -70)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(296)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-56)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 78)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -114)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -26)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #(4 * 94)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(312)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-40)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr