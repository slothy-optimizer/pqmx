.syntax unified
.type poly_u16_mul_64_C, %function
.global poly_u16_mul_64_C
.syntax unified
.type poly_u16_mul_192_toom3_mve, %function
.global poly_u16_mul_192_toom3_mve
poly_u16_mul_192_toom3_mve:
push {r4-r11,lr}
vpush {d8-d15}
sub sp, sp, #1280
add sp, sp, #504
add r14, sp, #1008
add r1, r1, #504
add r2, r2, #504
mov r12, #-2
mov r11, #3
vldrw.u32 Q0, [r1, #(4 * -126)]
vldrw.u32 Q1, [r1, #(4 * -62)]
vadd.u16 Q2, Q0, Q1
vldrw.u32 Q3, [r1, #(4 * -94)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [sp,#(-504)]
vmla.s16 Q2, Q3, r12
vstrw.u32 Q2, [sp,#(-248)]
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r1, #(4 * -58)]
vmla.s16 Q2, Q1, r11
vstrw.u32 Q2, [sp,#(8)]
vldrw.u32 Q0, [r1, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * -90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-488)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-232)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r1, #(4 * -54)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(24)]
vldrw.u32 Q0, [r1, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * -86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-472)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-216)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r1, #(4 * -50)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(40)]
vldrw.u32 Q0, [r1, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * -82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-456)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-200)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r1, #(4 * -46)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(56)]
vldrw.u32 Q0, [r1, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * -78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-440)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-184)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r1, #(4 * -42)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(72)]
vldrw.u32 Q0, [r1, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * -74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-424)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-168)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r1, #(4 * -38)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(88)]
vldrw.u32 Q0, [r1, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r1, #(4 * -70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-408)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-152)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r1, #(4 * -34)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(104)]
vldrw.u32 Q0, [r1, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r1, #(4 * -66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-392)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-136)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r2, #(4 * -62)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(120)]
vldrw.u32 Q0, [r2, #(4 * -126)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * -94)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-376)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-120)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r2, #(4 * -58)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(136)]
vldrw.u32 Q0, [r2, #(4 * -122)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * -90)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-360)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-104)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r2, #(4 * -54)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(152)]
vldrw.u32 Q0, [r2, #(4 * -118)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * -86)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-344)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-88)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r2, #(4 * -50)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(168)]
vldrw.u32 Q0, [r2, #(4 * -114)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * -82)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-328)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-72)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r2, #(4 * -46)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(184)]
vldrw.u32 Q0, [r2, #(4 * -110)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * -78)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-312)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-56)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r2, #(4 * -42)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(200)]
vldrw.u32 Q0, [r2, #(4 * -106)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * -74)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-296)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-40)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q3, [r2, #(4 * -38)]
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(216)]
vldrw.u32 Q0, [r2, #(4 * -102)]
vadd.u16 Q1, Q0, Q3
vldrw.u32 Q2, [r2, #(4 * -70)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-280)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-24)]
vsub.u16 Q1, Q1, Q2
vldrw.u32 Q4, [r2, #(4 * -34)]
vmla.s16 Q1, Q3, r11
vstrw.u32 Q1, [sp,#(232)]
vldrw.u32 Q0, [r2, #(4 * -98)]
vadd.u16 Q1, Q0, Q4
vldrw.u32 Q2, [r2, #(4 * -66)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [sp,#(-264)]
vmla.s16 Q1, Q2, r12
vstrw.u32 Q1, [sp,#(-8)]
vsub.u16 Q1, Q1, Q2
vmla.s16 Q1, Q4, r11
vstrw.u32 Q1, [sp,#(248)]
sub sp, sp, #504
sub r1, r1, #504
sub r2, r2, #504
add r11, r1, #256
add r10, r2, #256
mov r9, r1
mov r8, r2
mov r7, r0
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
add r0, sp, #(1024)
bl poly_u16_mul_64_C
add sp, sp, #504
add r14, sp, #1008
mov r12, #43691
mov r11, #2
mov r10, #-1
vldrw.u32 Q0, [sp, #(4 * -62)]
vldrw.u32 Q1, [sp, #(4 * 66)]
vsub.u16 Q1, Q1, Q0
vmul.u16 Q1, Q1, r12
vldrw.u32 Q2, [sp, #(4 * 2)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q3, [sp, #(4 * -126)]
vmla.s16 Q2, Q3, r10
vshr.u16 Q0, Q0, #1
vldrw.u32 Q4, [sp, #(4 * 70)]
vsub.u16 Q1, Q2, Q1
vldrw.u32 Q5, [r14, #(4 * -122)]
vadd.u16 Q2, Q2, Q0
vldrw.u32 Q6, [sp, #(4 * -58)]
vshr.u16 Q1, Q1, #1
vmla.s16 Q1, Q5, r11
vstrw.u32 Q1, [sp,#(264)]
vsub.u16 Q0, Q0, Q1
vstrw.u32 Q0, [sp,#(-248)]
vsub.u16 Q2, Q2, Q5
vstrw.u32 Q2, [sp,#(8)]
vsub.u16 Q4, Q4, Q6
vmul.u16 Q4, Q4, r12
vldrw.u32 Q0, [sp, #(4 * 6)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -122)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 74)]
vsub.u16 Q4, Q0, Q4
vldrw.u32 Q3, [r14, #(4 * -118)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -54)]
vshr.u16 Q4, Q4, #1
vmla.s16 Q4, Q3, r11
vstrw.u32 Q4, [sp,#(280)]
vsub.u16 Q6, Q6, Q4
vstrw.u32 Q6, [sp,#(-232)]
vsub.u16 Q0, Q0, Q3
vstrw.u32 Q0, [sp,#(24)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 10)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -118)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 78)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -114)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -50)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [sp,#(296)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [sp,#(-216)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(40)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 14)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -114)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 82)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -110)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -46)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [sp,#(312)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [sp,#(-200)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(56)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 18)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -110)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 86)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -106)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -42)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [sp,#(328)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [sp,#(-184)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(72)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 22)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -106)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 90)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -102)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -38)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [sp,#(344)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [sp,#(-168)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(88)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 26)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -102)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 94)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -98)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -34)]
vshr.u16 Q2, Q2, #1
vmla.s16 Q2, Q4, r11
vstrw.u32 Q2, [sp,#(360)]
vsub.u16 Q5, Q5, Q2
vstrw.u32 Q5, [sp,#(-152)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(104)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 30)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -98)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 98)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -94)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -30)]
vshr.u16 Q3, Q3, #1
vmla.s16 Q3, Q4, r11
vstrw.u32 Q3, [sp,#(376)]
vsub.u16 Q6, Q6, Q3
vstrw.u32 Q6, [sp,#(-136)]
vsub.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(120)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 34)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -94)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 102)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -90)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -26)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [sp, #(4 * -62)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-248)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -122)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-488)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [sp, #(4 * 2)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [sp,#(8)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 66)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(264)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 38)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -90)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 106)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -86)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -22)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [sp, #(4 * -58)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-232)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -118)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-472)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [sp, #(4 * 6)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [sp,#(24)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 70)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(280)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 42)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -86)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 110)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -82)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -18)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [sp, #(4 * -54)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-216)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -114)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-456)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [sp, #(4 * 10)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [sp,#(40)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 74)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(296)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 46)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -82)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 114)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -78)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -14)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [sp, #(4 * -50)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-200)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -110)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-440)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [sp, #(4 * 14)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [sp,#(56)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 78)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(312)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 50)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -78)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 118)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -74)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -10)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [sp, #(4 * -46)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-184)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -106)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-424)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [sp, #(4 * 18)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [sp,#(72)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 82)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(328)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 54)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -74)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vldrw.u32 Q2, [sp, #(4 * 122)]
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q4, [r14, #(4 * -70)]
vadd.u16 Q0, Q0, Q6
vldrw.u32 Q5, [sp, #(4 * -6)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q7, [sp, #(4 * -42)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-168)]
vmla.s16 Q3, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -102)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-408)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [sp, #(4 * 22)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [sp,#(88)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 86)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(344)]
vsub.u16 Q2, Q2, Q5
vmul.u16 Q2, Q2, r12
vldrw.u32 Q0, [sp, #(4 * 58)]
vsub.u16 Q5, Q5, Q0
vldrw.u32 Q1, [sp, #(4 * -70)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q5, Q5, #1
vldrw.u32 Q3, [sp, #(4 * 126)]
vsub.u16 Q2, Q0, Q2
vldrw.u32 Q4, [r14, #(4 * -66)]
vadd.u16 Q0, Q0, Q5
vldrw.u32 Q6, [sp, #(4 * -2)]
vshr.u16 Q2, Q2, #1
vldrw.u32 Q7, [sp, #(4 * -38)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-152)]
vmla.s16 Q2, Q4, r11
vldrw.u32 Q1, [r14, #(4 * -98)]
vadd.u16 Q1, Q1, Q2
vstrw.u32 Q1, [r14,#(-392)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q1, [sp, #(4 * 26)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [sp,#(104)]
vsub.u16 Q0, Q0, Q4
vldrw.u32 Q1, [sp, #(4 * 90)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(360)]
vsub.u16 Q3, Q3, Q6
vmul.u16 Q3, Q3, r12
vldrw.u32 Q0, [sp, #(4 * 62)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q1, [sp, #(4 * -66)]
vmla.s16 Q0, Q1, r10
vshr.u16 Q6, Q6, #1
vsub.u16 Q3, Q0, Q3
vldrw.u32 Q2, [r14, #(4 * -62)]
vadd.u16 Q0, Q0, Q6
vshr.u16 Q3, Q3, #1
vldrw.u32 Q4, [sp, #(4 * -34)]
vadd.u16 Q4, Q4, Q1
vstrw.u32 Q4, [sp,#(-136)]
vmla.s16 Q3, Q2, r11
vldrw.u32 Q1, [r14, #(4 * -94)]
vadd.u16 Q1, Q1, Q3
vstrw.u32 Q1, [r14,#(-376)]
vsub.u16 Q6, Q6, Q3
vldrw.u32 Q1, [sp, #(4 * 30)]
vadd.u16 Q1, Q1, Q6
vstrw.u32 Q1, [sp,#(120)]
vsub.u16 Q0, Q0, Q2
vldrw.u32 Q1, [sp, #(4 * 94)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(376)]
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
add sp, sp, #1280
vpop {d8-d15}
pop {r4-r11,lr}
bx lr