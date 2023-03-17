.syntax unified
.type poly_u16_toom3_fwd_192_mve, %function
.global poly_u16_toom3_fwd_192_mve
poly_u16_toom3_fwd_192_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
mov r14, #-2
mov r12, #3
vldrw.u32 Q0, [r0, #(4 * -126)]
vldrw.u32 Q1, [r0, #(4 * -62)]
vadd.u16 Q2, Q0, Q1
vldrw.u32 Q3, [r0, #(4 * -94)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r0,#(-376)]
vmla.s16 Q2, Q3, r14
vstrw.u32 Q2, [r0,#(-120)]
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r0, #(4 * -58)]
vmla.s16 Q2, Q1, r12
vstrw.u32 Q2, [r0,#(8)]
vldrw.u32 Q0, [r0, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * -90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-360)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-104)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r0, #(4 * -54)]
vmla.s16 Q1, Q4, r12
vstrw.u32 Q1, [r0,#(24)]
vldrw.u32 Q0, [r0, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * -86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-344)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-88)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r0, #(4 * -50)]
vmla.s16 Q1, Q3, r12
vstrw.u32 Q1, [r0,#(40)]
vldrw.u32 Q0, [r0, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * -82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-328)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-72)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r0, #(4 * -46)]
vmla.s16 Q1, Q4, r12
vstrw.u32 Q1, [r0,#(56)]
vldrw.u32 Q0, [r0, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * -78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-312)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-56)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r0, #(4 * -42)]
vmla.s16 Q1, Q3, r12
vstrw.u32 Q1, [r0,#(72)]
vldrw.u32 Q0, [r0, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * -74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-296)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-40)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r0, #(4 * -38)]
vmla.s16 Q1, Q4, r12
vstrw.u32 Q1, [r0,#(88)]
vldrw.u32 Q0, [r0, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r0, #(4 * -70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-280)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-24)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r0, #(4 * -34)]
vmla.s16 Q1, Q3, r12
vstrw.u32 Q1, [r0,#(104)]
vldrw.u32 Q0, [r0, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r0, #(4 * -66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r0,#(-264)]
vmla.s16 Q1, Q2, r14
vstrw.u32 Q1, [r0,#(-8)]
vsub.u16 Q1, Q1, Q2
vmla.s16 Q1, Q4, r12
vstrw.u32 Q1, [r0,#(120)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr