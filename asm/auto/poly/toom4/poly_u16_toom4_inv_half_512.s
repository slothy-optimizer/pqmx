.syntax unified
.type poly_u16_toom4_inv_half_512_mve, %function
.global poly_u16_toom4_inv_half_512_mve
poly_u16_toom4_inv_half_512_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
add r14, r0, #1008
mov r12, #-64
mov r11, #45
mov r10, #-8
mov r9, #43691
mov r8, #16
mov r7, #30
mov r6, #61167
mov r5, #-65
mov r4, #36409
mov r3, #1
vldrw.u32 Q0, [r14, #(4 * -58)]
vldrw.u32 Q1, [r0, #(4 * 2)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * -62)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #(4 * -122)]
vldrw.u32 Q4, [r0, #(4 * 66)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r14, #(4 * 6)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r5
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r14, #(4 * -54)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r10
vldrw.u32 Q5, [r0, #(4 * 70)]
vmla.s16 Q0, Q3, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(8)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r8
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(-488)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r4
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r0, #(4 * 6)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r7
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r0,#(264)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r6
vstrw.u32 Q2, [r0,#(-248)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r14,#(-232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -58)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -118)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 10)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -50)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 74)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(24)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 10)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-232)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -54)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -114)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 14)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -46)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 78)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(40)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 14)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-216)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -50)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -110)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 18)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -42)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 82)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(56)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 18)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-200)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -46)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -106)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 22)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -38)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 86)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(72)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 22)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-184)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -42)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -102)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -106)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 26)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -34)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 90)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(88)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 26)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-168)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -38)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -98)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 30)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -30)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 94)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(104)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 30)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-152)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -34)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -94)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -98)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 34)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -26)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 98)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(120)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-376)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 34)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-136)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-120)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -30)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -90)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -94)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 38)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -22)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 102)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(136)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-360)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 38)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-120)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-104)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -26)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -86)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -90)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 42)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -18)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 106)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(152)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-344)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 42)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-104)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-88)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -22)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -82)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -86)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 46)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -14)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 110)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(168)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-328)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 46)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-88)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-72)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -18)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -78)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -82)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 50)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -10)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 114)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(184)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-312)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 50)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-72)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-56)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -14)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -74)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -78)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 54)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -6)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 118)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(200)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-296)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 54)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-56)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-40)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -10)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -70)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -74)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 58)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -2)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #(4 * 122)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(216)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-280)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 58)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(472)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-40)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-24)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * -6)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -66)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -70)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 62)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * 2)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #(4 * 126)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(232)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-264)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #(4 * 62)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(488)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-24)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-8)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * -2)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -62)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -66)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 66)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(248)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-248)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(504)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-8)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(8)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr