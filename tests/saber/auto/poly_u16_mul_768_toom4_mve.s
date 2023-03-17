.syntax unified
.type poly_u16_mul_192_C, %function
.global poly_u16_mul_192_C
.syntax unified
.type poly_u16_mul_768_toom4_mve, %function
.global poly_u16_mul_768_toom4_mve
poly_u16_mul_768_toom4_mve:
push {r4-r11,lr}
vpush {d0-d15}
sub sp, sp, #5376
add sp, sp, #504
add r14, sp, #1008
add r12, r14, #1008
add r11, r12, #1008
add r10, r11, #1008
add r9, r10, #1008
add r1, r1, #504
add r8, r1, #1008
add r2, r2, #504
add r7, r2, #1008
mov r6, #1
mov r5, #2
mov r4, #3
mov r3, #7
vldrw.u32 Q0, [r1, #-504]
vldrw.u32 Q1, [r1, #-120]
vldrw.u32 Q2, [r1, #264]
vldrw.u32 Q3, [r8, #-360]
vadd.u16 Q4, Q0, Q2
vadd.u16 Q5, Q1, Q3
vsub.u16 Q6, Q4, Q5
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(24)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(-216)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-488]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #-104]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #280]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-344]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-456)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(264)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-504)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(40)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(-200)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-472]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #-88]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #296]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-328]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-440)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(280)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-488)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(56)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(-184)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-456]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #-72]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #312]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #-312]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-424)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(296)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-472)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(72)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(-168)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r1, #-440]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #-56]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r1, #328]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r8, #-296]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-408)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(312)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-456)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(88)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(-152)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-424]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #-40]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #344]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-280]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-392)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(328)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-440)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(104)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(-136)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-408]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #-24]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #360]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-264]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-376)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(344)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-424)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(120)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(-120)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-392]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #-8]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #376]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #-248]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-360)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(360)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-408)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(136)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(-104)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r1, #-376]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #8]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r1, #392]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r8, #-232]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-344)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(376)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-392)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(152)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(-88)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-360]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #24]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #408]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-216]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-328)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(392)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-376)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(168)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(-72)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-344]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #40]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #424]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-200]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-312)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(408)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-360)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(184)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(-56)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-328]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #56]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #440]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #-184]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-296)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(424)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-344)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(200)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(-40)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r1, #-312]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #72]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r1, #456]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r8, #-168]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-280)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(440)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-328)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(216)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(-24)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-296]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #88]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r1, #472]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-152]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-264)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [sp,#(456)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-312)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(232)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(-8)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-280]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #104]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r1, #488]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-136]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-248)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [sp,#(472)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-296)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(248)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(8)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-264]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #120]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r1, #504]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #-120]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-232)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [sp,#(488)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-280)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(264)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(24)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r1, #-248]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #136]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r8, #-488]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r8, #-104]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-216)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [sp,#(504)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-264)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(280)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(40)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-232]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #152]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r8, #-472]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-88]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-200)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-488)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-248)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(296)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(56)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-216]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #168]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r8, #-456]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-72]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-184)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-472)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-232)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(312)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(72)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-200]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #184]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r8, #-440]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #-56]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-168)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-456)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-216)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(328)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(88)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r1, #-184]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r1, #200]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r8, #-424]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r8, #-40]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-152)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-440)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-200)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(344)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(104)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r1, #-168]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r1, #216]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r8, #-408]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r8, #-24]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-136)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-424)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-184)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(360)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(120)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r1, #-152]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r1, #232]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r8, #-392]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r8, #-8]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-120)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-408)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-168)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(376)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(136)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r1, #-136]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r1, #248]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r8, #-376]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r8, #8]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-104)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-392)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-152)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(392)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(152)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-504]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #-120]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #264]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-360]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-88)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-376)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-136)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(408)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(168)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-488]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #-104]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #280]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-344]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-72)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-360)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-120)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(424)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(184)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-472]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #-88]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #296]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-328]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(-56)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-344)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-104)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(440)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(200)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-456]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #-72]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #312]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #-312]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(-40)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-328)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-88)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r14,#(456)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(216)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-440]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #-56]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #328]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-296]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(-24)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-312)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-72)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r14,#(472)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(232)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-424]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #-40]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #344]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-280]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(-8)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-296)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(-56)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r14,#(488)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(248)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-408]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #-24]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #360]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-264]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(8)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-280)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(-40)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r14,#(504)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(264)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-392]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #-8]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #376]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #-248]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(24)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-264)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(-24)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r12,#(-488)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(280)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-376]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #8]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #392]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-232]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(40)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-248)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(-8)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r12,#(-472)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(296)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-360]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #24]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #408]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-216]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(56)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-232)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(8)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r12,#(-456)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(312)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-344]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #40]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #424]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-200]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(72)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-216)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(24)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r12,#(-440)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(328)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-328]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #56]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #440]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #-184]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(88)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-200)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(40)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r12,#(-424)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(344)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-312]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #72]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r2, #456]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-168]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(104)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-184)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(56)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r12,#(-408)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(360)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-296]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #88]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r2, #472]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-152]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(120)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-168)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(72)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r12,#(-392)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(376)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-280]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #104]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r2, #488]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-136]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(136)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-152)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(88)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r12,#(-376)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(392)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-264]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #120]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r2, #504]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #-120]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(152)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-136)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(104)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r12,#(-360)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(408)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-248]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #136]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r7, #-488]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-104]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(168)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-120)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(120)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r12,#(-344)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(424)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-232]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #152]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r7, #-472]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-88]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(184)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-104)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(136)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r12,#(-328)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(440)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-216]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #168]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r7, #-456]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-72]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(200)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-88)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(152)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r12,#(-312)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r12,#(456)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-200]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #184]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r7, #-440]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #-56]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(216)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-72)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(168)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r12,#(-296)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r12,#(472)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vldrw.u32 Q0, [r2, #-184]
vshl.u16 Q6, Q6, #1
vldrw.u32 Q1, [r2, #200]
vsub.u16 Q7, Q6, Q4
vldrw.u32 Q2, [r7, #-424]
vadd.u16 Q6, Q6, Q4
vldrw.u32 Q3, [r7, #-40]
vadd.u16 Q4, Q0, Q2
vstrw.u32 Q5, [r11,#(232)]
vadd.u16 Q5, Q1, Q3
vstrw.u32 Q6, [r14,#(-56)]
vsub.u16 Q6, Q4, Q5
vstrw.u32 Q7, [sp,#(184)]
vmla.s16 Q4, Q0, r4
vstrw.u32 Q6, [r12,#(-280)]
vmla.s16 Q6, Q5, r5
vmla.s16 Q5, Q1, r4
vadd.u16 Q7, Q6, Q1
vstrw.u32 Q6, [r12,#(488)]
vmla.s16 Q7, Q2, r4
vmla.s16 Q7, Q3, r3
vldrw.u32 Q0, [r2, #-168]
vshl.u16 Q4, Q4, #1
vldrw.u32 Q1, [r2, #216]
vsub.u16 Q6, Q4, Q5
vldrw.u32 Q2, [r7, #-408]
vadd.u16 Q4, Q4, Q5
vldrw.u32 Q3, [r7, #-24]
vadd.u16 Q5, Q0, Q2
vstrw.u32 Q7, [r11,#(248)]
vadd.u16 Q7, Q1, Q3
vstrw.u32 Q4, [r14,#(-40)]
vsub.u16 Q4, Q5, Q7
vstrw.u32 Q6, [sp,#(200)]
vmla.s16 Q5, Q0, r4
vstrw.u32 Q4, [r12,#(-264)]
vmla.s16 Q4, Q7, r5
vmla.s16 Q7, Q1, r4
vadd.u16 Q6, Q4, Q1
vstrw.u32 Q4, [r12,#(504)]
vmla.s16 Q6, Q2, r4
vmla.s16 Q6, Q3, r3
vldrw.u32 Q0, [r2, #-152]
vshl.u16 Q5, Q5, #1
vldrw.u32 Q1, [r2, #232]
vsub.u16 Q4, Q5, Q7
vldrw.u32 Q2, [r7, #-392]
vadd.u16 Q5, Q5, Q7
vldrw.u32 Q3, [r7, #-8]
vadd.u16 Q7, Q0, Q2
vstrw.u32 Q6, [r11,#(264)]
vadd.u16 Q6, Q1, Q3
vstrw.u32 Q5, [r14,#(-24)]
vsub.u16 Q5, Q7, Q6
vstrw.u32 Q4, [sp,#(216)]
vmla.s16 Q7, Q0, r4
vstrw.u32 Q5, [r12,#(-248)]
vmla.s16 Q5, Q6, r5
vmla.s16 Q6, Q1, r4
vadd.u16 Q4, Q5, Q1
vstrw.u32 Q5, [r11,#(-488)]
vmla.s16 Q4, Q2, r4
vmla.s16 Q4, Q3, r3
vldrw.u32 Q0, [r2, #-136]
vshl.u16 Q7, Q7, #1
vldrw.u32 Q1, [r2, #248]
vsub.u16 Q5, Q7, Q6
vldrw.u32 Q2, [r7, #-376]
vadd.u16 Q7, Q7, Q6
vldrw.u32 Q3, [r7, #8]
vadd.u16 Q6, Q0, Q2
vstrw.u32 Q4, [r11,#(280)]
vadd.u16 Q4, Q1, Q3
vstrw.u32 Q7, [r14,#(-8)]
vsub.u16 Q7, Q6, Q4
vstrw.u32 Q5, [sp,#(232)]
vmla.s16 Q6, Q0, r4
vstrw.u32 Q7, [r12,#(-232)]
vmla.s16 Q7, Q4, r5
vmla.s16 Q4, Q1, r4
vadd.u16 Q5, Q7, Q1
vstrw.u32 Q7, [r11,#(-472)]
vmla.s16 Q5, Q2, r4
vmla.s16 Q5, Q3, r3
vshl.u16 Q6, Q6, #1
vstrw.u32 Q5, [r11,#(296)]
vsub.u16 Q5, Q6, Q4
vstrw.u32 Q5, [sp,#(248)]
vadd.u16 Q6, Q6, Q4
vstrw.u32 Q6, [r14,#(8)]
sub sp, sp, #504
sub r1, r1, #504
sub r2, r2, #504
add r11, r1, #768
add r10, r2, #768
mov r9, r1
mov r8, r2
mov r7, r0
add r1, sp, #(3072)
add r2, sp, #(3456)
add r0, sp, #(3840)
bl poly_u16_mul_192_C
add r1, sp, #(2304)
add r2, sp, #(2688)
add r0, sp, #(3072)
bl poly_u16_mul_192_C
add r1, sp, #(1536)
add r2, sp, #(1920)
add r0, sp, #(2304)
bl poly_u16_mul_192_C
add r1, sp, #(768)
add r2, sp, #(1152)
add r0, sp, #(1536)
bl poly_u16_mul_192_C
add r1, sp, #(0)
add r2, sp, #(384)
add r0, sp, #(768)
bl poly_u16_mul_192_C
add r1, r9, #(0)
add r2, r8, #(0)
add r0, sp, #(0)
bl poly_u16_mul_192_C
add r1, r11, #(384)
add r2, r10, #(384)
add r0, sp, #(4608)
bl poly_u16_mul_192_C
add sp, sp, #504
add r14, sp, #1008
add r12, r14, #1008
add r11, r12, #1008
add r10, r11, #1008
add r9, r10, #1008
mov r8, #-64
mov r6, #45
mov r5, #-8
mov r4, #43691
mov r3, #16
mov r2, #30
mov r1, #61167
mov r0, #-65
vldrw.u32 Q0, [r11, #312]
vldrw.u32 Q1, [r14, #24]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [sp, #264]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r11, #-456]
vldrw.u32 Q4, [r12, #-216]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [sp, #-504]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r10, #72]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r0
vsub.u16 Q3, Q3, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r11, #328]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r5
vldrw.u32 Q5, [r12, #-200]
vmla.s16 Q0, Q3, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(24)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r3
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r11,#(-456)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r4
vmul.u16 Q0, Q0, r4
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r14, #40]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r2
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r12,#(-216)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r1
vstrw.u32 Q2, [sp,#(264)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r11,#(312)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #280]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-440]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-488]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #88]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #344]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-184]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(40)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-440)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #56]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(280)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #296]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-424]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-472]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #104]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #360]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-168]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(56)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-424)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #72]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(296)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #312]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-408]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-456]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #120]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #376]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-152]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(72)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-408)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #88]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(312)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #328]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-392]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-440]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #136]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #392]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-136]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(88)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-392)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #104]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(328)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #344]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-376]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-424]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #152]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #408]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-120]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(104)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-376)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #120]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(344)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #360]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-360]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-408]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #168]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #424]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-104]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(120)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-360)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #136]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(360)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #376]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-344]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-392]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #184]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-88]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-344)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #152]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(376)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #392]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-328]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-376]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #200]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-72]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-328)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #168]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(392)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #408]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-312]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-360]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #216]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-56]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-312)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #184]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(408)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #424]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-296]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-344]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #232]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-40]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-296)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #200]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(424)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #440]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-280]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-328]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #248]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #504]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #-24]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-280)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #216]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(440)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #456]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-264]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-312]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #264]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #-8]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-264)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #232]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(456)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(504)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #472]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-248]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-296]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #280]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #8]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(232)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-248)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #248]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(472)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [sp, #488]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-232]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-280]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #296]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #24]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(248)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #264]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(488)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [sp, #504]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-216]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-264]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #312]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #40]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(264)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #280]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [sp,#(504)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-488]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-200]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-248]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #328]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-424]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #56]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(280)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #296]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-488)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-472]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-184]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-232]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #344]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-408]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #72]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(296)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #312]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-472)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-456]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-168]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-216]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #360]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-392]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #88]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(312)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #328]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-456)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-440]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-152]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-200]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #376]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-376]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #104]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(328)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #344]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-440)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-424]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-136]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-184]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #392]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-360]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #120]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(344)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #360]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-424)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-408]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-120]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-168]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #408]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-344]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #136]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(360)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #376]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-408)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-392]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-104]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-152]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #424]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-328]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #152]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(376)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-104)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #392]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-392)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-376]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-88]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-136]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #440]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-312]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #168]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vstrw.u32 Q1, [r14,#(392)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-88)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #408]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vstrw.u32 Q0, [r14,#(-376)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-360]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-72]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-120]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #456]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-296]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #264]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(264)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #184]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-216]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #312]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(312)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #424]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-456]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #24]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(24)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #72]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(72)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-344]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-56]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-104]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #472]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-280]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #280]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(280)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #200]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-200]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #328]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #440]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-440]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #40]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(40)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #88]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(88)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-328]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-40]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-88]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #488]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-264]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #296]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(296)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #216]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-184]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #344]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #456]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-424]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #56]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(56)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #104]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(104)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-312]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-24]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-72]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #504]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-248]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #312]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(312)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #232]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-168]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #360]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #472]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-408]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #72]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(72)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #120]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(120)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-296]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-8]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-56]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-488]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-232]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #328]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(328)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #248]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-152]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #376]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #488]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-392]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #88]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(88)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #136]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-280]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #8]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-40]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-472]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-216]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #344]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(344)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #264]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-136]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #392]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #504]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-376]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #104]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(104)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #152]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-264]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #24]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #-24]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-456]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-200]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #360]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(360)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #280]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-120]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-120)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #408]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-488]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-360]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #120]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(120)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #168]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-248]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #40]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #-8]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-440]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-184]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #376]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(376)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #296]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-104]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-104)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #424]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-472]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-344]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #136]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(136)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #184]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-232]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #56]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #8]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-424]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-168]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #392]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(392)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #312]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-88]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-88)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #440]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-456]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-328]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #152]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(152)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #200]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-216]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #72]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #24]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-408]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-152]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #408]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(408)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #328]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-72]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-72)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #456]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-440]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-312]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #168]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(168)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #216]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-200]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #88]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #40]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-392]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-136]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #424]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(424)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #344]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-56]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-56)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #472]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-424]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-296]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #184]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(184)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #232]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-184]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #104]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #56]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-376]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-120]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #440]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(440)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #360]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-40]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-40)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #488]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-408]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-280]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #200]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(200)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #248]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(248)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-168]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #120]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #72]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-360]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-104]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #456]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(456)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #376]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-24]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-24)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #504]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(504)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-392]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-264]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-264)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #216]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(216)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #264]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(264)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-152]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #136]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #88]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-344]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-88]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #472]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(472)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #392]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #-8]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-8)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-488]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-376]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-248]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #232]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(232)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #280]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(280)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-136]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #152]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #104]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-328]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-72]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #488]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [sp,#(488)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #408]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #8]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(8)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-472]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-360]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-232]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #248]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(248)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #296]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(296)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-120]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #168]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #120]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-312]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [sp, #504]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [sp,#(504)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #424]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #24]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(24)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-456]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-344]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-216]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-216)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #264]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(264)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #312]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(312)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-104]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #184]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #136]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-296]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-488]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-488)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #440]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #40]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(40)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-440]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-328]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-200]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #280]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(280)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #328]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(328)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-88]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #200]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #152]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-280]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-472]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-472)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #456]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #56]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(56)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-424]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-312]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-184]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #296]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(296)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #344]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(344)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-72]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #216]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #168]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-264]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-456]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-456)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #472]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #72]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(72)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-408]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-296]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-168]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #312]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(312)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #360]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(360)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-56]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #232]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #184]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-248]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-440]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-440)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r12, #488]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #88]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(88)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-392]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-280]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-152]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #328]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(328)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #376]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(376)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-40]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #248]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #200]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-232]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-424]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-424)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r12, #504]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #104]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(104)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-376]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-264]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-136]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #344]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(344)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #392]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(392)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-24]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #264]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #216]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-216]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-408]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-408)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q3, [r11, #-488]
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #120]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(120)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-360]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-248]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-120]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #360]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(360)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #408]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(408)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #280]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [sp, #232]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-200]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r0
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-392]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-392)]
vmla.s16 Q1, Q2, r5
vldrw.u32 Q5, [r11, #-472]
vmla.s16 Q4, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q7, [r12, #136]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(136)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-344]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-232]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r2
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-104]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q2, [r14, #376]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r14,#(376)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r10, #424]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r10,#(424)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #296]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [sp, #248]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-184]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r0
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [r14, #-376]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [r14,#(-376)]
vmla.s16 Q1, Q2, r5
vmla.s16 Q6, Q2, r6
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r4
vldrw.u32 Q3, [r12, #152]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r12,#(152)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r3
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r10, #-328]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r10,#(-328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r2
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r11, #-88]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r11,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r1
vldrw.u32 Q1, [r14, #392]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(392)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #440]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(440)]
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
add r14, #384
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
add r14, #384
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
add r14, #384
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
add r14, #384
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
add r14, #384
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
add r14, #384
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
add r14, #384
add sp, sp, #5376
vpop {d0-d15}
pop {r4-r11,lr}
bx lr