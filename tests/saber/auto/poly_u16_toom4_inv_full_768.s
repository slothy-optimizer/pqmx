.syntax unified
.type poly_u16_toom4_inv_768_mve, %function
.global poly_u16_toom4_inv_768_mve
poly_u16_toom4_inv_768_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r0, r0, #504
add r14, r0, #1008
add r12, r14, #1008
add r11, r12, #1008
add r10, r11, #1008
add r9, r10, #1008
mov r8, #-64
mov r7, #45
mov r6, #-8
mov r5, #43691
mov r4, #16
mov r3, #30
mov r2, #61167
mov r1, #-65
vldrw.u32 Q0, [r11, #312]
vldrw.u32 Q1, [r14, #24]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #264]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r11, #-456]
vldrw.u32 Q4, [r12, #-216]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #-504]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r10, #72]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r1
vsub.u16 Q3, Q3, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r11, #328]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r6
vldrw.u32 Q5, [r12, #-200]
vmla.s16 Q0, Q3, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(24)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r4
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r11,#(-456)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r5
vmul.u16 Q0, Q0, r5
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r14, #40]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r3
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r12,#(-216)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r2
vstrw.u32 Q2, [r0,#(264)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r11,#(312)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #280]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-440]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-488]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #88]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #344]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-184]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(40)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-440)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #56]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(280)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #296]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-424]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-472]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #104]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #360]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-168]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(56)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-424)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #72]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(296)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #312]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-408]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-456]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #120]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #376]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-152]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(72)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-408)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #88]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(312)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #328]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-392]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-440]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #136]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #392]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-136]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(88)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-392)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #104]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(328)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #344]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-376]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-424]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #152]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #408]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-120]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(104)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-376)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #120]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(344)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #360]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-360]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-408]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #168]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #424]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-104]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(120)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-360)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #136]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(360)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #376]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-344]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-392]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #184]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-88]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-344)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #152]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(376)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #392]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-328]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-376]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #200]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-72]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-328)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #168]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(392)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #408]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-312]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-360]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #216]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-56]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-312)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #184]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(408)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #424]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-296]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-344]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #232]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r11, #488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-40]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-296)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #200]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(424)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #440]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-280]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-328]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #248]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r11, #504]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #-24]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-280)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #216]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(440)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r11,#(488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #456]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-264]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-312]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #264]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-488]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #-8]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-264)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #232]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(-24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(456)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r11,#(504)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #472]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-248]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-296]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #280]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-472]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #8]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(232)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-248)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #248]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(-8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(472)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-488)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #488]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-232]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-280]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #296]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-456]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #24]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(248)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #264]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(8)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(488)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-472)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #504]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-216]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-264]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #312]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-440]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #40]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(264)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #280]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(24)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r0,#(504)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-456)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-488]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-200]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-248]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #328]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-424]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #56]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(280)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #296]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(40)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-488)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-440)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-472]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-184]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-232]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #344]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-408]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #72]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(296)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #312]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(56)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-472)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-424)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-456]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-168]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-216]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #360]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-392]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #88]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(312)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #328]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(72)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-456)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-408)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-440]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-152]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-200]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #376]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-376]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #104]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(328)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #344]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-440)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-392)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-424]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-136]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-184]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #392]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-360]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #120]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(344)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #360]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-424)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-376)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-408]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-120]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-168]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #408]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-344]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #136]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(360)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #376]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-408)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-360)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-392]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-104]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-152]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #424]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-328]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #152]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(376)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-104)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #392]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r12,#(136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-392)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r10,#(-344)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r14, #-376]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-88]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-136]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #440]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-312]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #168]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vstrw.u32 Q1, [r14,#(392)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r11,#(-88)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #408]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r12,#(152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vstrw.u32 Q0, [r14,#(-376)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r10,#(-328)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r14, #-360]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r11, #-72]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-120]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #456]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-296]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #264]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(264)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #184]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-216]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-216)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #312]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(312)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #424]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-456]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #-104]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #472]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-280]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #280]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(280)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #200]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-200]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-200)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #328]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #440]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-440]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #-88]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r10, #488]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-264]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #296]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(296)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #216]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-184]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-184)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #344]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #456]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-424]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #-72]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r10, #504]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-248]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #312]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(312)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #232]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-168]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-168)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #360]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #472]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-408]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #-56]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-488]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-232]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #328]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(328)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #248]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-152]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-152)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #376]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #488]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-392]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #-40]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-472]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-216]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #344]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(344)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #264]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-136]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-136)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #392]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r14, #504]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-376]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #-24]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-456]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-200]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #360]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(360)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #280]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-120]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-120)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #408]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-488]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-360]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #-8]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-440]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-184]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #376]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(376)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #296]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-104]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-104)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #424]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-472]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-344]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #8]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-424]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-168]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #392]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(392)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #312]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-88]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-88)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #440]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-456]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-328]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #24]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-408]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-152]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #408]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(408)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #328]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-72]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-72)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #456]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-440]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-312]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #40]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-392]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-136]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #424]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(424)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #344]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-56]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-56)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #472]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-424]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-296]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #56]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-376]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-120]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #440]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(440)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #360]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-40]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-40)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #488]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-408]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-280]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #72]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-360]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-104]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #456]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(456)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #376]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-24]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-24)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r11, #504]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r11,#(504)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-392]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-264]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-264)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #88]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-344]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-88]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #472]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(472)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #392]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #-8]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(-8)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-488]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-488)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-376]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-248]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-248)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #104]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-328]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-72]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #488]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(488)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #408]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #8]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(8)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-472]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-472)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-360]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-232]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-232)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #120]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-312]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #504]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(504)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #424]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #24]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(24)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-456]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-456)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-344]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-216]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-216)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #136]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-296]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-488]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-488)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #440]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #40]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(40)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-440]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-440)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-328]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-200]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-200)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #152]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-280]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #-24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-472]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-472)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #456]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #56]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(56)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-424]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-424)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-312]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-184]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-184)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #168]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-264]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #-8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-456]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-456)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #472]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #72]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(72)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-408]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-408)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-296]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-168]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-168)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #184]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-248]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-440]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-440)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r12, #488]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #88]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(88)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-392]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-392)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-280]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-152]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-152)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #200]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-232]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-424]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-424)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r12, #504]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #104]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(104)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-376]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-376)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-264]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-136]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-136)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #216]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-216]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r10, #40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-408]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r14,#(-408)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q3, [r11, #-488]
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #120]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(120)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-360]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-360)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-248]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r11, #-120]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r11,#(-120)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q5, [r0, #232]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r9, #-200]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r8
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r1
vsub.u16 Q2, Q2, Q6
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r10, #56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r14, #-392]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r14,#(-392)]
vmla.s16 Q1, Q2, r6
vldrw.u32 Q5, [r11, #-472]
vmla.s16 Q4, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q7, [r12, #136]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r12,#(136)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r10, #-344]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r10,#(-344)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r5
vmul.u16 Q4, Q4, r5
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r12, #-232]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r3
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r11, #-104]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r11,#(-104)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
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
vldrw.u32 Q3, [r0, #248]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r9, #-184]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r8
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r1
vsub.u16 Q2, Q2, Q4
vadd.u16 Q1, Q1, Q1
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [r14, #-376]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [r14,#(-376)]
vmla.s16 Q1, Q2, r6
vmla.s16 Q6, Q2, r7
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r5
vldrw.u32 Q3, [r12, #152]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r12,#(152)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r4
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r10, #-328]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r10,#(-328)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r5
vmul.u16 Q6, Q6, r5
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r3
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r11, #-88]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r11,#(-88)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r2
vldrw.u32 Q1, [r14, #392]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r14,#(392)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r10, #440]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r10,#(440)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr