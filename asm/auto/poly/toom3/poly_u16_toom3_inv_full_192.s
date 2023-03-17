.syntax unified
.type poly_u16_toom3_inv_192_mve, %function
.global poly_u16_toom3_inv_192_mve
poly_u16_toom3_inv_192_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
add r14, r0, #1008
mov r12, #43691
mov r11, #2
mov r10, #-1
vldrw.u32 Q0, [r0, #(4 * -62)]
vldrw.u32 Q1, [r0, #(4 * 66)]
vsub.u16 Q1, Q1, Q0
vmul.u16 Q1, Q1, r12
vldrw.u32 Q2, [r0, #(4 * 2)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q3, [r0, #(4 * -126)]
vmla.s16 Q2, Q3, r10
vshr.u16 Q0, Q0, #1
vldrw.u32 Q4, [r0, #(4 * 70)]
vsub.u16 Q1, Q2, Q1
vldrw.u32 Q5, [r14, #(4 * -122)]
vadd.u16 Q2, Q2, Q0
vldrw.u32 Q6, [r0, #(4 * -58)]
vshr.u16 Q1, Q1, #1
vmla.s16 Q1, Q5, r11
vstrw.u32 Q1, [r0,#(264)]
vsub.u16 Q0, Q0, Q1
vstrw.u32 Q0, [r0,#(-248)]
vsub.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r0,#(8)]
vsub.u16 Q4, Q4, Q6
vmul.u16 Q4, Q4, r12
vldrw.u32 Q0, [r0, #(4 * 6)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -122)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 74)]
vsub.u16 Q4, Q0, Q4
vldrw.u32 Q3, [r14, #(4 * -118)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -54)]
vshr.u16 Q4, Q4, #1
vmla.s16 Q4, Q3, r11
vstrw.u32 Q4, [r0,#(280)]
vsub.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r0,#(-232)]
vsub.u16 Q0, Q0, Q3
vstrw.u32 Q0, [r0,#(24)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 10)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -118)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 78)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -114)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -50)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [r0,#(296)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-216)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(40)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 14)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -114)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 82)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -110)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -46)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [r0,#(312)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-200)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(56)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 18)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -110)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 86)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -106)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -42)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [r0,#(328)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-184)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(72)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 22)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -106)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 90)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -102)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -38)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [r0,#(344)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-168)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(88)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 26)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -102)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 94)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -98)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -34)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [r0,#(360)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [r0,#(-152)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(104)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 30)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -98)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 98)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -94)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -30)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [r0,#(376)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [r0,#(-136)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r0,#(120)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 34)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -94)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 102)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -90)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -26)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r0, #(4 * -62)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-248)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -122)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-488)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r0, #(4 * 2)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r0,#(8)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 66)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(264)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 38)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -90)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 106)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -86)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -22)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r0, #(4 * -58)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-232)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -118)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-472)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r0, #(4 * 6)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r0,#(24)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 70)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(280)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 42)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -86)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 110)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -82)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -18)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r0, #(4 * -54)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-216)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -114)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-456)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r0, #(4 * 10)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r0,#(40)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 74)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(296)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 46)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -82)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 114)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -78)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -14)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r0, #(4 * -50)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-200)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -110)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-440)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r0, #(4 * 14)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r0,#(56)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 78)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(312)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 50)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -78)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 118)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -74)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -10)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r0, #(4 * -46)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-184)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -106)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-424)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r0, #(4 * 18)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r0,#(72)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 82)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(328)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 54)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -74)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [r0, #(4 * 122)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -70)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [r0, #(4 * -6)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [r0, #(4 * -42)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-168)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -102)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-408)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r0, #(4 * 22)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r0,#(88)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 86)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(344)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [r0, #(4 * 58)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [r0, #(4 * -70)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [r0, #(4 * 126)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -66)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [r0, #(4 * -2)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [r0, #(4 * -38)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(-152)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -98)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-392)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [r0, #(4 * 26)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r0,#(104)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [r0, #(4 * 90)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(360)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [r0, #(4 * 62)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [r0, #(4 * -66)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q2, [r14, #(4 * -62)]
vadd.u16 Q0, Q0, Q6
vshr.u16 Q3, Q3, #1
vldrw.u32 Q4, [r0, #(4 * -34)]
vadd.u16 Q4, Q4, Q1
vstrw.u32 Q4, [r0,#(-136)]
vmla.s16 Q3, Q2, r11
vldrw.u32 Q1, [r14, #(4 * -94)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-376)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [r0, #(4 * 30)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [r0,#(120)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q1, [r0, #(4 * 94)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(376)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr