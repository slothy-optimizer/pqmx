.syntax unified
.type poly_u16_toom4_inv_half_768_mve, %function
.global poly_u16_toom4_inv_half_768_mve
poly_u16_toom4_inv_half_768_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r0, r0, #504
add r14, r0, #1008
add r12, r14, #1008
mov r11, #-64
mov r10, #45
mov r9, #-8
mov r8, #43691
mov r7, #16
mov r6, #30
mov r5, #61167
mov r4, #-65
mov r3, #36409
mov r2, #1
vldrw.u32 Q0, [r14, #408]
vldrw.u32 Q1, [r0, #264]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #-120]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #24]
vldrw.u32 Q4, [r14, #-360]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #-504]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r12, #-216]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r4
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r14, #424]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r9
vldrw.u32 Q5, [r14, #-344]
vmla.s16 Q0, Q3, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(264)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r7
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(24)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r3
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r0, #280]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r6
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r14,#(-360)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r5
vstrw.u32 Q2, [r0,#(-120)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r14,#(408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-104]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #40]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-488]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-200]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-328]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(40)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #296]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-104)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-88]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #56]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-472]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-184]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-312]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(56)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #312]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-88)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-72]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #72]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-456]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-168]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-296]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(72)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #328]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-72)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-56]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #88]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-440]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-152]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-280]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(88)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #344]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-56)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-40]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #104]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-424]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-136]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #504]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-264]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(104)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #360]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-40)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-24]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #120]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-408]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-120]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-248]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(120)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #376]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-264)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-24)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(504)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #136]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-392]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-104]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-232]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(136)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #392]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(-8)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #152]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-376]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-88]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-216]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(392)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(152)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #408]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(8)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #24]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #168]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-360]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-72]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-200]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(408)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(168)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #424]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-216)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(24)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #40]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #184]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-344]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-56]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-424]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-184]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(424)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(184)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #440]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(40)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #56]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #200]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-328]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-40]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-408]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-168]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(440)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(200)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #456]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(56)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #72]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #216]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-312]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #-24]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-392]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-152]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(456)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(216)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #472]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(72)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #88]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #232]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-296]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #-8]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-376]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-136]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(472)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(232)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #488]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(88)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #104]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #248]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-280]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #8]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-360]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-120]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(488)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(248)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #504]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(104)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #120]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #264]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-264]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #24]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-344]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-104]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r0,#(504)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(264)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-488]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(120)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #136]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #280]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-248]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #40]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-328]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-88]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-488)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(280)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-472]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(136)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #152]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #296]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-232]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #56]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-312]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-72]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-472)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(296)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-456]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(152)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #168]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #312]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-216]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #72]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-296]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-56]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-456)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(312)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-440]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(168)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-312)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #184]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #328]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-200]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #88]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-280]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-40]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-440)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-424]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(184)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-296)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #200]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #344]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-184]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #104]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-264]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #-24]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-424)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-408]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(200)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-280)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #216]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #360]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-168]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #120]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r12, #-248]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q3, [r14, #-8]
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-408)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-392]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(-24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(216)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-264)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #232]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #376]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-152]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r12, #136]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r11
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r4
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r12, #-232]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vldrw.u32 Q5, [r14, #8]
vmla.s16 Q4, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-392)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r3
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #-376]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r6
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r14,#(-8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(232)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r12,#(-248)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #248]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #392]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-136]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r12, #152]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r11
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r4
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r2
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r9
vmla.s16 Q6, Q2, r10
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r8
vstrw.u32 Q1, [r14,#(-376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r7
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r3
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r6
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r14,#(8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r5
vstrw.u32 Q0, [r0,#(248)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r12,#(-232)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr