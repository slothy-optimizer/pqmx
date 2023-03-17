.syntax unified
.type poly_u16_toom4_inv_512_mve, %function
.global poly_u16_toom4_inv_512_mve
poly_u16_toom4_inv_512_mve:
push {r4-r11,lr}
vpush {d8-d15}
add r0, r0, #504
add r14, r0, #1008
add r12, r14, #1008
add r11, r12, #1008
mov r10, #-64
mov r9, #45
mov r8, #-8
mov r7, #43691
mov r6, #16
mov r5, #30
mov r4, #61167
mov r3, #-65
mov r2, #36409
mov r1, #1
vldrw.u32 Q0, [r12, #(4 * 10)]
vldrw.u32 Q1, [r14, #(4 * -122)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #(4 * 2)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r12, #(4 * -118)]
vldrw.u32 Q4, [r14, #(4 * 6)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r11, #(4 * -114)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r3
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r12, #(4 * 14)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r8
vldrw.u32 Q5, [r14, #(4 * 10)]
vmla.s16 Q0, Q3, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-488)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r6
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r12,#(-472)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r2
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r14, #(4 * -118)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r5
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r14,#(24)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r4
vstrw.u32 Q2, [r0,#(8)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r12,#(40)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 6)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -114)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -110)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 18)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 14)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-472)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -114)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(24)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(56)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 10)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -110)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -106)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 22)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 18)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-456)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -110)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(40)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(72)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 14)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -106)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -102)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 26)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 22)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-440)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -106)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(56)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(88)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 18)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -102)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -98)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 30)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 26)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-424)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -102)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(72)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(104)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 22)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -98)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -106)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -94)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 34)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 30)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-408)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -98)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(88)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(120)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 26)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -94)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -90)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 38)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 34)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-392)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -94)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(104)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 30)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -90)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -98)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -86)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 42)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 38)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -90)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(120)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 34)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -86)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -94)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -82)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 46)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 42)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -86)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(136)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 38)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -82)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -90)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -78)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 50)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 46)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -82)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(152)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 42)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -78)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -86)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -74)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 54)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 50)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-312)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -78)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(168)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 46)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -74)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -82)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -70)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 58)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 54)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-296)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -74)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(184)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 50)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -70)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -78)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -66)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 62)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 58)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-280)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -70)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(216)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(200)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 54)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -66)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -74)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -62)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 66)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 62)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-264)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -66)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(216)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(248)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 58)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -62)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -70)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -58)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 70)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 66)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-264)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-248)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -62)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(232)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(264)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 62)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -58)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -66)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -54)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 74)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 70)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vstrw.u32 Q1, [r14,#(-248)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r12,#(-232)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -58)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(264)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vstrw.u32 Q0, [r0,#(248)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(280)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 66)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -54)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -62)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -50)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 78)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 2)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(8)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 74)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 6)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(24)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 10)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(40)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -54)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -118)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-472)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -122)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-488)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -114)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-456)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 70)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -50)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -58)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -46)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 82)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 6)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(24)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 78)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 10)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(40)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 14)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(56)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -50)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -114)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -118)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-472)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -110)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-440)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 74)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -46)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -54)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -42)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 86)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 10)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(40)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 82)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 14)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(56)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 18)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(72)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -46)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -110)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -114)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-456)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -106)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-424)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 78)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -42)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -50)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -38)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 90)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 14)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(56)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 86)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 18)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(72)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 22)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(88)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -42)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -106)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -110)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-440)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -102)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-408)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 82)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -38)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -46)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -34)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 94)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 18)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(72)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 90)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 22)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(88)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 26)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(104)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -38)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -102)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -106)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-424)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -98)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-392)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 86)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -34)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -42)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -30)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 98)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 22)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(88)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 94)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 26)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(104)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 30)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -34)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -98)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -102)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-408)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -94)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-376)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 90)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -30)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -38)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -26)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 102)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 26)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(104)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 98)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 30)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(120)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 34)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -30)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -94)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -98)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-392)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -90)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-360)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 94)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -26)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -34)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -22)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 106)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 30)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(120)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 102)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 34)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 38)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -26)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -90)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -94)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-376)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -86)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-344)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 98)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -22)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -30)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -18)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 110)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 34)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(136)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 106)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 38)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 42)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -22)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -86)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -90)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-360)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -82)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-328)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 102)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -18)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -26)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -14)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 114)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 38)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(152)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 110)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 42)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 46)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -18)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -82)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -86)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-344)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -78)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-312)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 106)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -14)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -22)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -10)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 118)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 42)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(168)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 114)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 46)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 50)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -14)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -78)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -82)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-328)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -74)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-296)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 110)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -10)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -18)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * -6)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #(4 * 122)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 46)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(184)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 118)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 50)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 54)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -10)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -74)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -78)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-312)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -70)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-280)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 114)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -6)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -14)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * -2)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #(4 * 126)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 50)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(200)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r14, #(4 * 122)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 54)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 58)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -6)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -70)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -74)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-296)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -66)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-264)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 118)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * -2)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -10)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * 2)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #(4 * -122)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 54)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(216)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q3, [r14, #(4 * 126)]
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 58)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(232)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 62)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(248)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * -2)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r12, #(4 * -66)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r12,#(-264)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -70)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-280)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -62)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-248)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #(4 * 122)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * 2)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #(4 * -6)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r11, #(4 * 6)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r10
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r3
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #(4 * -118)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #(4 * 58)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(232)]
vmla.s16 Q1, Q2, r8
vldrw.u32 Q5, [r12, #(4 * -122)]
vmla.s16 Q4, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q7, [r14, #(4 * 62)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r14,#(248)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r12, #(4 * 66)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r12,#(264)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r2
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #(4 * 2)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r5
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r12, #(4 * -62)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r12,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q2, [r14, #(4 * -66)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(-264)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r11, #(4 * -58)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r11,#(-232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #(4 * 126)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r12, #(4 * 6)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #(4 * -2)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r11, #(4 * 10)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r10
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r3
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r1
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [r0, #(4 * 62)]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [r0,#(248)]
vmla.s16 Q1, Q2, r8
vmla.s16 Q6, Q2, r9
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r7
vldrw.u32 Q3, [r14, #(4 * 66)]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(264)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r6
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r12, #(4 * 70)]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r12,#(280)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r2
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r5
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r12, #(4 * -58)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r12,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r4
vldrw.u32 Q1, [r14, #(4 * -62)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(-248)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r11, #(4 * -54)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r11,#(-216)]
vpop {d8-d15}
pop {r4-r11,lr}
bx lr