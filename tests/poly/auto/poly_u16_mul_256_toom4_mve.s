.syntax unified
.type poly_u16_mul_64_C, %function
.global poly_u16_mul_64_C
.syntax unified
.type poly_u16_mul_256_toom4_mve, %function
.global poly_u16_mul_256_toom4_mve
poly_u16_mul_256_toom4_mve:
push {r4-r11,lr}
vpush {d8-d15}
sub sp, sp, #1792
add sp, sp, #504
add r14, sp, #1008
add r1, r1, #504
add r2, r2, #504
mov r12, #1
mov r11, #2
mov r10, #3
mov r9, #7
vldrw.u32 Q0, [r1, #(4 * -126)]
vldrw.u32 Q1, [r1, #(4 * -94)]
vldrw.u32 Q2, [r1, #(4 * -62)]
vldrw.u32 Q3, [r1, #(4 * -30)]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [sp,#(8)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [sp,#(264)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -122)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #(4 * -90)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #(4 * -58)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r1, #(4 * -26)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-488)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(-248)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-504)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [sp,#(24)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [sp,#(280)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -118)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #(4 * -86)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #(4 * -54)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r1, #(4 * -22)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-472)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(-232)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-488)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [sp,#(40)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [sp,#(296)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -114)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #(4 * -82)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #(4 * -50)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r1, #(4 * -18)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-456)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(-216)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-472)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [sp,#(56)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [sp,#(312)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -110)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #(4 * -78)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r1, #(4 * -46)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r1, #(4 * -14)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(-440)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(-200)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-456)]
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [sp,#(72)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [sp,#(328)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -106)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #(4 * -74)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #(4 * -42)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r1, #(4 * -10)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-424)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(-184)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-440)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [sp,#(88)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [sp,#(344)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -102)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #(4 * -70)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #(4 * -38)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r1, #(4 * -6)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-408)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(-168)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-424)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [sp,#(104)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [sp,#(360)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r1, #(4 * -98)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #(4 * -66)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #(4 * -34)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r1, #(4 * -2)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-392)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(-152)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-408)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [sp,#(120)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [sp,#(376)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -126)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #(4 * -94)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #(4 * -62)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r2, #(4 * -30)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(-376)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(-136)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-392)]
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [sp,#(136)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [sp,#(392)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -122)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #(4 * -90)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #(4 * -58)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r2, #(4 * -26)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-360)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(-120)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-376)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [sp,#(152)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [sp,#(408)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -118)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #(4 * -86)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #(4 * -54)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r2, #(4 * -22)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-344)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(-104)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-360)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [sp,#(168)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [sp,#(424)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -114)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #(4 * -82)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #(4 * -50)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r2, #(4 * -18)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-328)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(-88)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-344)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [sp,#(184)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [sp,#(440)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -110)]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #(4 * -78)]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #(4 * -46)]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r2, #(4 * -14)]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r14,#(-312)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(-72)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-328)]
vmla.s16 Q4, Q0, r10
vstrw.u32 Q6, [sp,#(200)]
vmla.s16 Q6, Q5, r11
vmla.s16 Q5, Q1, r10
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [sp,#(456)]
vmla.s16 Q7, Q2, r10
vmla.s16 Q7, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -106)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #(4 * -74)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #(4 * -42)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r2, #(4 * -10)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r14,#(-296)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(-56)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-312)]
vmla.s16 Q5, Q0, r10
vstrw.u32 Q4, [sp,#(216)]
vmla.s16 Q4, Q7, r11
vmla.s16 Q7, Q1, r10
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [sp,#(472)]
vmla.s16 Q6, Q2, r10
vmla.s16 Q6, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -102)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #(4 * -70)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #(4 * -38)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r2, #(4 * -6)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r14,#(-280)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(-40)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-296)]
vmla.s16 Q7, Q0, r10
vstrw.u32 Q5, [sp,#(232)]
vmla.s16 Q5, Q6, r11
vmla.s16 Q6, Q1, r10
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [sp,#(488)]
vmla.s16 Q4, Q2, r10
vmla.s16 Q4, Q3, r9
vldrw.u32 Q0, [r2, #(4 * -98)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #(4 * -66)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #(4 * -34)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r2, #(4 * -2)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r14,#(-264)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(-24)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-280)]
vmla.s16 Q6, Q0, r10
vstrw.u32 Q7, [sp,#(248)]
vmla.s16 Q7, Q4, r11
vmla.s16 Q4, Q1, r10
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [sp,#(504)]
vmla.s16 Q5, Q2, r10
vmla.s16 Q5, Q3, r9
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r14,#(-248)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [sp,#(-264)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [sp,#(-8)]
sub sp, sp, #504
sub r1, r1, #504
sub r2, r2, #504
add r11, r1, #256
add r10, r2, #256
mov r9, r1
mov r8, r2
mov r7, r0
add r1, sp, #(1024)
add r2, sp, #(1152)
add r0, sp, #(1280)
bl poly_u16_mul_64_C
add r1, sp, #(768)
add r2, sp, #(896)
add r0, sp, #(1024)
bl poly_u16_mul_64_C
add r1, sp, #(512)
add r2, sp, #(640)
add r0, sp, #(768)
bl poly_u16_mul_64_C
add r1, sp, #(256)
add r2, sp, #(384)
add r0, sp, #(512)
bl poly_u16_mul_64_C
add r1, sp, #(0)
add r2, sp, #(128)
add r0, sp, #(256)
bl poly_u16_mul_64_C
add r1, r9, #(0)
add r2, r8, #(0)
add r0, sp, #(0)
bl poly_u16_mul_64_C
add r1, r11, #(128)
add r2, r10, #(128)
add r0, sp, #(1536)
bl poly_u16_mul_64_C
add sp, sp, #504
add r14, sp, #1008
mov r12, #-64
mov r11, #45
mov r10, #-8
mov r9, #43691
mov r8, #16
mov r6, #30
mov r5, #61167
mov r4, #-65
mov r3, #36409
mov r2, #1
vldrw.u32 Q0, [r14, #(4 * -58)]
vldrw.u32 Q1, [sp, #(4 * 2)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #(4 * -62)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #(4 * -122)]
vldrw.u32 Q4, [sp, #(4 * 66)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [sp, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r14, #(4 * 6)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r4
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r14, #(4 * -54)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r10
vldrw.u32 Q5, [sp, #(4 * 70)]
vmla.s16 Q0, Q3, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(8)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r8
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(-488)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r3
vneg.s16 Q2, Q2
vldrw.u32 Q1, [sp, #(4 * 6)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r6
vneg.s16 Q4, Q4
vstrw.u32 Q4, [sp,#(264)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r5
vstrw.u32 Q2, [sp,#(-248)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r14,#(-232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -58)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -118)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 10)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -50)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 74)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(24)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 10)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [sp,#(280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-232)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -54)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -114)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 14)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -46)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 78)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(40)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 14)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [sp,#(296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-216)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -50)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -110)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 18)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -42)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 82)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(56)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 18)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [sp,#(312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-200)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -46)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -106)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -110)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 22)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -38)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 86)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(72)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 22)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [sp,#(328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-184)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -42)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -102)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -106)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 26)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -34)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 90)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(88)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 26)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [sp,#(344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-168)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -38)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -98)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -102)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 30)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -30)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 94)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(104)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 30)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [sp,#(360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-152)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -34)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -94)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -98)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 34)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -26)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 98)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [sp,#(120)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-376)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 34)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [sp,#(376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [sp,#(-136)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-120)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -30)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -90)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -94)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 38)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -22)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -62)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-248)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 102)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 66)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(264)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -58)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 38)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #(4 * -122)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-488)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 2)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(8)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #(4 * 6)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(24)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -26)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -86)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -90)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 42)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -18)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -58)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-232)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 106)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 70)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -54)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 42)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #(4 * -118)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 6)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(24)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #(4 * 10)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(40)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -22)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -82)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -86)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 46)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -14)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -54)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-216)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 110)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 74)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -50)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 46)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #(4 * -114)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 10)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(40)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #(4 * 14)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(56)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -18)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -78)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -82)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 50)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -10)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -50)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-200)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 114)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 78)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -46)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 50)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #(4 * -110)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 14)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(56)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #(4 * 18)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(72)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -14)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -74)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -78)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 54)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * -6)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -46)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-184)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 118)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 82)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -42)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 54)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #(4 * -106)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 18)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(72)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #(4 * 22)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(88)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -10)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -70)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -74)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 58)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #(4 * -2)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -42)]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-168)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #(4 * 122)]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 86)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -38)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 58)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #(4 * -102)]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 22)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(88)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #(4 * 26)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(104)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -6)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -66)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -70)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #(4 * 62)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #(4 * 2)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -38)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-152)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #(4 * 126)]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #(4 * 90)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #(4 * -34)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * 62)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #(4 * -98)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #(4 * 26)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(104)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #(4 * 30)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(120)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -2)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #(4 * -62)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -66)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #(4 * 66)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [sp, #(4 * -34)]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [sp,#(-136)]
vmla.s16 Q1, Q2, r10
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q3, [sp, #(4 * 94)]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [sp,#(376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #(4 * -30)]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r14, #(4 * -94)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r14,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q1, [sp, #(4 * 30)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(120)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #(4 * 34)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(136)]
sub sp, sp, #504
add r14, sp, #0
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #128
add sp, sp, #1792
vpop {d8-d15}
pop {r4-r11,lr}
bx lr