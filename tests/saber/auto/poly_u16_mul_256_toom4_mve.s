.syntax unified
.type poly_u16_mul_64_C, %function
.global poly_u16_mul_64_C
.syntax unified
.type poly_u16_mul_256_toom4_mve, %function
.global poly_u16_mul_256_toom4_mve
poly_u16_mul_256_toom4_mve:
push {r4-r11,lr}
vpush {d0-d15}
sub sp, sp, #1792
add sp, sp, #504
add r14, sp, #1008
add r1, r1, #504
add r2, r2, #504
mov r12, #1
mov r11, #2
mov r10, #3
mov r9, #7
vldrw.u32 Q0, [r1, #-504]
vldrw.u32 Q1, [r1, #-376]
vldrw.u32 Q2, [r1, #-248]
vldrw.u32 Q3, [r1, #-120]
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
vldrw.u32 Q0, [r1, #-488]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #-360]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #-232]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r1, #-104]
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
vldrw.u32 Q0, [r1, #-472]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #-344]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #-216]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r1, #-88]
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
vldrw.u32 Q0, [r1, #-456]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #-328]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #-200]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r1, #-72]
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
vldrw.u32 Q0, [r1, #-440]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #-312]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r1, #-184]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r1, #-56]
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
vldrw.u32 Q0, [r1, #-424]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #-296]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #-168]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r1, #-40]
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
vldrw.u32 Q0, [r1, #-408]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #-280]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #-152]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r1, #-24]
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
vldrw.u32 Q0, [r1, #-392]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #-264]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #-136]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r1, #-8]
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
vldrw.u32 Q0, [r2, #-504]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #-376]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #-248]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r2, #-120]
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
vldrw.u32 Q0, [r2, #-488]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #-360]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #-232]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r2, #-104]
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
vldrw.u32 Q0, [r2, #-472]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #-344]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #-216]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r2, #-88]
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
vldrw.u32 Q0, [r2, #-456]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #-328]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #-200]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r2, #-72]
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
vldrw.u32 Q0, [r2, #-440]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #-312]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #-184]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r2, #-56]
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
vldrw.u32 Q0, [r2, #-424]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #-296]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #-168]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r2, #-40]
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
vldrw.u32 Q0, [r2, #-408]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #-280]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #-152]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r2, #-24]
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
vldrw.u32 Q0, [r2, #-392]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #-264]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #-136]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r2, #-8]
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
vldrw.u32 Q0, [r14, #-232]
vldrw.u32 Q1, [sp, #8]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #-248]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #-488]
vldrw.u32 Q4, [sp, #264]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [sp, #-504]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r14, #24]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r4
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r14, #-216]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r10
vldrw.u32 Q5, [sp, #280]
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
vldrw.u32 Q1, [sp, #24]
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
vldrw.u32 Q0, [sp, #-232]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-472]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-488]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #40]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-200]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #296]
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
vldrw.u32 Q1, [sp, #40]
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
vldrw.u32 Q0, [sp, #-216]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-456]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-472]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #56]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-184]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #312]
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
vldrw.u32 Q1, [sp, #56]
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
vldrw.u32 Q0, [sp, #-200]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-440]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-456]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #72]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-168]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #328]
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
vldrw.u32 Q1, [sp, #72]
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
vldrw.u32 Q0, [sp, #-184]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-424]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-440]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #88]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-152]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #344]
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
vldrw.u32 Q1, [sp, #88]
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
vldrw.u32 Q0, [sp, #-168]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-408]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-424]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #104]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-136]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #360]
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
vldrw.u32 Q1, [sp, #104]
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
vldrw.u32 Q0, [sp, #-152]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-392]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-408]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #120]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-120]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #376]
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
vldrw.u32 Q1, [sp, #120]
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
vldrw.u32 Q0, [sp, #-136]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-376]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-392]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #136]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-104]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #392]
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
vldrw.u32 Q1, [sp, #136]
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
vldrw.u32 Q0, [sp, #-120]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-360]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-376]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #152]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-88]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-248]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-248)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #408]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #264]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(264)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-232]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #152]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-488]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-488)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #8]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(8)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #24]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(24)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #-104]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-344]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-360]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #168]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-72]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-232]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-232)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #424]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #280]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-216]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #168]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-472]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #24]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(24)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #40]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(40)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #-88]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-328]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-344]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #184]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-216]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-216)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #440]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #296]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-200]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #184]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-456]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #40]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(40)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #56]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(56)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #-72]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-312]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-328]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #200]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-200]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-200)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #456]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #312]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-184]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #200]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-440]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #56]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(56)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #72]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(72)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #-56]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-296]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-312]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #216]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-184]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-184)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #472]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #328]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-168]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #216]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-424]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #72]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(72)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #88]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(88)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #-40]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-280]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-296]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #232]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-168]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(-168)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [sp, #488]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #344]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-152]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #232]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-408]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #88]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(88)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #104]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(104)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #-24]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-264]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-280]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #248]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #-152]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(-152)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [sp, #504]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [sp, #360]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [sp,#(360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-136]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [sp, #248]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-392]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q2, [sp, #104]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [sp,#(104)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #120]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(120)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #-8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-248]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-264]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #264]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [sp, #-136]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [sp,#(-136)]
vmla.s16 Q1, Q2, r10
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q3, [sp, #376]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [sp,#(376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #-120]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r14, #-376]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r14,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vldrw.u32 Q1, [sp, #120]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [sp,#(120)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #136]
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
vpop {d0-d15}
pop {r4-r11,lr}
bx lr