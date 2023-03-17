.syntax unified
.type poly_u16_mul_16_C, %function
.global poly_u16_mul_16_C
.syntax unified
.type poly_u16_mul_64_toom4_mve, %function
.global poly_u16_mul_64_toom4_mve
poly_u16_mul_64_toom4_mve:
push {r4-r11,lr}
vpush {d8-d15}
sub sp, sp, #448
add sp, sp, #504
add r1, r1, #504
add r2, r2, #504
mov r14, #1
mov r12, #2
mov r11, #3
mov r10, #7
vldrw.u32 Q0, [r1, #(4 * -126)]
vldrw.u32 Q1, [r1, #(4 * -118)]
vldrw.u32 Q2, [r1, #(4 * -110)]
vldrw.u32 Q3, [r1, #(4 * -102)]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r11
vstrw.u32 Q6, [sp,#(-376)]
vmla.s16 Q6, Q5, r12
vmla.s16 Q5, Q1, r11
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [sp,#(-312)]
vmla.s16 Q7, Q2, r11
vmla.s16 Q7, Q3, r10
vldrw.u32 Q0, [r1, #(4 * -122)]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #(4 * -114)]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #(4 * -106)]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r1, #(4 * -98)]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [sp,#(-248)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(-440)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-504)]
vmla.s16 Q5, Q0, r11
vstrw.u32 Q4, [sp,#(-360)]
vmla.s16 Q4, Q7, r12
vmla.s16 Q7, Q1, r11
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [sp,#(-296)]
vmla.s16 Q6, Q2, r11
vmla.s16 Q6, Q3, r10
vldrw.u32 Q0, [r2, #(4 * -126)]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #(4 * -118)]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #(4 * -110)]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r2, #(4 * -102)]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [sp,#(-232)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(-424)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-488)]
vmla.s16 Q7, Q0, r11
vstrw.u32 Q5, [sp,#(-344)]
vmla.s16 Q5, Q6, r12
vmla.s16 Q6, Q1, r11
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [sp,#(-280)]
vmla.s16 Q4, Q2, r11
vmla.s16 Q4, Q3, r10
vldrw.u32 Q0, [r2, #(4 * -122)]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #(4 * -114)]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #(4 * -106)]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r2, #(4 * -98)]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [sp,#(-216)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(-408)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-472)]
vmla.s16 Q6, Q0, r11
vstrw.u32 Q7, [sp,#(-328)]
vmla.s16 Q7, Q4, r12
vmla.s16 Q4, Q1, r11
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [sp,#(-264)]
vmla.s16 Q5, Q2, r11
vmla.s16 Q5, Q3, r10
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [sp,#(-200)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [sp,#(-456)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [sp,#(-392)]
sub sp, sp, #504
sub r1, r1, #504
sub r2, r2, #504
add r11, r1, #64
add r10, r2, #64
mov r9, r1
mov r8, r2
mov r7, r0
add r1, sp, #(256)
add r2, sp, #(288)
add r0, sp, #(320)
bl poly_u16_mul_16_C
add r1, sp, #(192)
add r2, sp, #(224)
add r0, sp, #(256)
bl poly_u16_mul_16_C
add r1, sp, #(128)
add r2, sp, #(160)
add r0, sp, #(192)
bl poly_u16_mul_16_C
add r1, sp, #(64)
add r2, sp, #(96)
add r0, sp, #(128)
bl poly_u16_mul_16_C
add r1, sp, #(0)
add r2, sp, #(32)
add r0, sp, #(64)
bl poly_u16_mul_16_C
add r1, r9, #(0)
add r2, r8, #(0)
add r0, sp, #(0)
bl poly_u16_mul_16_C
add r1, r11, #(32)
add r2, r10, #(32)
add r0, sp, #(384)
bl poly_u16_mul_16_C
add sp, sp, #504
mov r14, #-64
mov r12, #45
mov r11, #-8
mov r10, #43691
mov r9, #16
mov r8, #30
mov r6, #61167
mov r5, #-65
mov r4, #36409
mov r3, #1
vldrw.u32 Q0, [sp, #(4 * -46)]
vldrw.u32 Q1, [sp, #(4 * -94)]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #(4 * -110)]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [sp, #(4 * -62)]
vldrw.u32 Q4, [sp, #(4 * -78)]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [sp, #(4 * -126)]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [sp, #(4 * -30)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r5
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [sp, #(4 * -42)]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r11
vldrw.u32 Q5, [sp, #(4 * -74)]
vmla.s16 Q0, Q3, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [sp,#(-376)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r9
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [sp,#(-248)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r4
vneg.s16 Q2, Q2
vldrw.u32 Q1, [sp, #(4 * -90)]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r8
vneg.s16 Q4, Q4
vstrw.u32 Q4, [sp,#(-312)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r6
vstrw.u32 Q2, [sp,#(-440)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [sp,#(-184)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -106)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #(4 * -58)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -122)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [sp, #(4 * -26)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [sp, #(4 * -38)]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r11
vldrw.u32 Q3, [sp, #(4 * -70)]
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vstrw.u32 Q1, [sp,#(-360)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [sp,#(-232)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * -86)]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vstrw.u32 Q5, [sp,#(-296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [sp,#(-424)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [sp,#(-168)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #(4 * -102)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #(4 * -54)]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #(4 * -118)]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [sp, #(4 * -22)]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r14
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [sp, #(4 * -34)]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #(4 * -110)]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-440)]
vmla.s16 Q1, Q2, r11
vldrw.u32 Q5, [sp, #(4 * -66)]
vmla.s16 Q4, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vldrw.u32 Q7, [sp, #(4 * -78)]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(-312)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r9
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [sp, #(4 * -46)]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [sp,#(-184)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #(4 * -82)]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r8
vneg.s16 Q3, Q3
vldrw.u32 Q2, [sp, #(4 * -62)]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [sp,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [sp, #(4 * -94)]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(-376)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [sp, #(4 * -30)]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [sp,#(-120)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #(4 * -98)]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #(4 * -50)]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #(4 * -114)]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [sp, #(4 * -18)]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r14
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [sp, #(4 * -106)]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [sp,#(-424)]
vmla.s16 Q1, Q2, r11
vmla.s16 Q6, Q2, r12
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r10
vldrw.u32 Q3, [sp, #(4 * -74)]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [sp,#(-296)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r9
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [sp, #(4 * -42)]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [sp,#(-168)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r8
vneg.s16 Q5, Q5
vldrw.u32 Q1, [sp, #(4 * -58)]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [sp,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q1, [sp, #(4 * -90)]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(-360)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [sp, #(4 * -26)]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [sp,#(-104)]
sub sp, sp, #504
add r14, sp, #0
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
vldrh.u16 Q0, [r14], #+16
vstrh.u16 Q0, [r7], #+16
add r14, #32
add sp, sp, #448
vpop {d8-d15}
pop {r4-r11,lr}
bx lr