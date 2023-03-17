.syntax unified
.type poly_u16_toom3_fwd_768_mve, %function
.global poly_u16_toom3_fwd_768_mve
poly_u16_toom3_fwd_768_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
add r14, r0, #1008
add r12, r14, #1008
mov r11, #-2
mov r10, #3
vldrw.u32 Q0, [r0, #(4 * -126)]
vldrw.u32 Q1, [r14, #(4 * -122)]
vadd.u16 Q2, Q0, Q1
vldrw.u32 Q3, [r0, #(4 * 2)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r0,#(8)]
vmla.s16 Q2, Q3, r11
vstrw.u32 Q2, [r14,#(24)]
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -118)]
vmla.s16 Q2, Q1, r10
vstrw.u32 Q2, [r12,#(-472)]
vldrw.u32 Q0, [r0, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 6)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(24)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(40)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -114)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-456)]
vldrw.u32 Q0, [r0, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 10)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(40)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(56)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -110)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-440)]
vldrw.u32 Q0, [r0, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 14)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(56)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(72)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -106)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-424)]
vldrw.u32 Q0, [r0, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 18)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(72)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(88)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -102)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-408)]
vldrw.u32 Q0, [r0, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 22)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(88)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(104)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -98)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-392)]
vldrw.u32 Q0, [r0, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 26)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(104)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(120)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -94)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-376)]
vldrw.u32 Q0, [r0, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 30)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(120)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(136)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -90)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-360)]
vldrw.u32 Q0, [r0, #(4 * -94)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 34)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(136)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(152)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -86)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-344)]
vldrw.u32 Q0, [r0, #(4 * -90)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 38)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(152)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(168)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -82)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-328)]
vldrw.u32 Q0, [r0, #(4 * -86)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 42)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(168)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(184)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -78)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-312)]
vldrw.u32 Q0, [r0, #(4 * -82)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 46)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(184)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(200)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -74)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-296)]
vldrw.u32 Q0, [r0, #(4 * -78)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 50)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(200)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(216)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -70)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-280)]
vldrw.u32 Q0, [r0, #(4 * -74)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 54)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(216)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(232)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -66)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-264)]
vldrw.u32 Q0, [r0, #(4 * -70)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 58)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(232)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(248)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -62)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-248)]
vldrw.u32 Q0, [r0, #(4 * -66)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 62)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(248)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(264)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -58)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-232)]
vldrw.u32 Q0, [r0, #(4 * -62)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(264)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(280)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -54)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-216)]
vldrw.u32 Q0, [r0, #(4 * -58)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(280)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(296)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -50)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-200)]
vldrw.u32 Q0, [r0, #(4 * -54)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(296)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(312)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -46)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-184)]
vldrw.u32 Q0, [r0, #(4 * -50)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(312)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(328)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -42)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-168)]
vldrw.u32 Q0, [r0, #(4 * -46)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(328)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(344)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -38)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-152)]
vldrw.u32 Q0, [r0, #(4 * -42)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(344)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(360)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -34)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-136)]
vldrw.u32 Q0, [r0, #(4 * -38)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(360)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(376)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -30)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-120)]
vldrw.u32 Q0, [r0, #(4 * -34)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 94)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(376)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(392)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -26)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-104)]
vldrw.u32 Q0, [r0, #(4 * -30)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 98)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(392)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(408)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -22)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-88)]
vldrw.u32 Q0, [r0, #(4 * -26)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 102)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(408)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(424)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -18)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-72)]
vldrw.u32 Q0, [r0, #(4 * -22)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 106)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(424)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(440)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -14)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-56)]
vldrw.u32 Q0, [r0, #(4 * -18)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 110)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(440)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(456)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -10)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-40)]
vldrw.u32 Q0, [r0, #(4 * -14)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 114)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(456)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(472)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * -6)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(-24)]
vldrw.u32 Q0, [r0, #(4 * -10)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 118)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(472)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(488)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r14, #(4 * -2)]
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(-8)]
vldrw.u32 Q0, [r0, #(4 * -6)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * 122)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(488)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r14,#(504)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r14, #(4 * 2)]
vmla.s16 Q1, Q3, r10
vstrw.u32 Q1, [r12,#(8)]
vldrw.u32 Q0, [r0, #(4 * -2)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * 126)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(504)]
vmla.s16 Q1, Q2, r11
vstrw.u32 Q1, [r12,#(-488)]
vsub.u16 Q1, Q1, Q2
vmla.s16 Q1, Q4, r10
vstrw.u32 Q1, [r12,#(24)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr