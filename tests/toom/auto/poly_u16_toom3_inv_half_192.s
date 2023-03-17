.syntax unified
.type poly_u16_toom3_inv_half_192_mve, %function
.global poly_u16_toom3_inv_half_192_mve
poly_u16_toom3_inv_half_192_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
mov r14, #43691
mov r12, #2
mov r11, #-1
vldrw.u32 Q0, [r0, #(4 * -94)]
vldrw.u32 Q1, [r0, #(4 * -30)]
vsub.u16 Q1, Q1, Q0
vmul.u16 Q1, Q1, r14
vldrw.u32 Q2, [r0, #(4 * -62)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q3, [r0, #(4 * -126)]
vmla.s16 Q2, Q3, r11
vshr.u16 Q0, Q0, #1
vldrw.u32 Q4, [r0, #(4 * -26)]
vsub.u16 Q1, Q2, Q1
vldrw.u32 Q5, [r0, #(4 * 2)]
vadd.u16 Q2, Q2, Q0
vldrw.u32 Q6, [r0, #(4 * -90)]
vshr.u16 Q1, Q1, #1
vmla.s16 Q1, Q5, r12
vstrw.u32 Q1, [r0,#(-120)]
vsub.u16 Q0, Q0, Q1
vstrw.u32 Q0, [r0,#(-376)]
vsub.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r0,#(-248)]
vsub.u16 Q4, Q4, Q6
vmul.u16 Q4, Q4, r14
vldrw.u32 Q0, [r0, #(4 * -58)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -122)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * -22)]
vsub.u16 Q4, Q0, Q4
vldrw.u32 Q3, [r0, #(4 * 6)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -86)]
vshr.u16 Q4, Q4, #1
vmla.s16 Q4, Q3, r12
vstrw.u32 Q4, [r0,#(-104)]
vsub.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r0,#(-360)]
vsub.u16 Q0, Q0, Q3
vstrw.u32 Q0, [r0,#(-232)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r14
vldrw.u32 Q0, [r0, #(4 * -54)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -118)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * -18)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r0, #(4 * 10)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -82)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r12
vstrw.u32 Q2, [r0,#(-88)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-344)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(-216)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r14
vldrw.u32 Q0, [r0, #(4 * -50)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -114)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * -14)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r0, #(4 * 14)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -78)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r12
vstrw.u32 Q3, [r0,#(-72)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-328)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(-200)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r14
vldrw.u32 Q0, [r0, #(4 * -46)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -110)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * -10)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r0, #(4 * 18)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -74)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r12
vstrw.u32 Q2, [r0,#(-56)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-312)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(-184)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r14
vldrw.u32 Q0, [r0, #(4 * -42)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -106)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * -6)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r0, #(4 * 22)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -70)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r12
vstrw.u32 Q3, [r0,#(-40)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-296)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(-168)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r14
vldrw.u32 Q0, [r0, #(4 * -38)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -102)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * -2)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r0, #(4 * 26)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -66)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r12
vstrw.u32 Q2, [r0,#(-24)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-280)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(-152)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r14
vldrw.u32 Q0, [r0, #(4 * -34)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -98)]
vmla.s16 Q0, Q1, r11
vshr.u16 Q6, Q6, #1
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 30)]
vadd.u16 Q0, Q0, Q6
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q2, r12
vstrw.u32 Q3, [r0,#(-8)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-264)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r0,#(-136)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr