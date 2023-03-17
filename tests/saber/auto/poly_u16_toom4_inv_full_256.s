.syntax unified
.type poly_u16_toom4_inv_256_mve, %function
.global poly_u16_toom4_inv_256_mve
poly_u16_toom4_inv_256_mve:
push {r4-r11,lr}
vpush {d0-d15}
add r0, r0, #504
add r14, r0, #1008
mov r12, #-64
mov r11, #45
mov r10, #-8
mov r9, #43691
mov r8, #16
mov r7, #30
mov r6, #61167
mov r5, #-65
mov r4, #36409
mov r3, #1
vldrw.u32 Q0, [r14, #-232]
vldrw.u32 Q1, [r0, #8]
vadd.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r0, #-248]
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #-488]
vldrw.u32 Q4, [r0, #264]
vsub.u16 Q4, Q4, Q3
vldrw.u32 Q5, [r0, #-504]
vshr.u16 Q4, Q4, #1
vldrw.u32 Q6, [r14, #24]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q3, r5
vsub.u16 Q3, Q3, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q3, Q3, Q5
vldrw.u32 Q6, [r14, #-216]
vadd.u16 Q1, Q1, Q2
vmla.s16 Q1, Q3, r10
vldrw.u32 Q5, [r0, #280]
vmla.s16 Q0, Q3, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(8)]
vadd.u16 Q2, Q2, Q0
vmla.s16 Q0, Q4, r8
vsub.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r14,#(-488)]
vshr.u16 Q0, Q0, #1
vmul.u16 Q0, Q0, r4
vneg.s16 Q2, Q2
vldrw.u32 Q1, [r0, #24]
vadd.u16 Q4, Q4, Q0
vmla.s16 Q2, Q0, r7
vneg.s16 Q4, Q4
vstrw.u32 Q4, [r0,#(264)]
vshr.u16 Q2, Q2, #2
vmul.u16 Q2, Q2, r6
vstrw.u32 Q2, [r0,#(-248)]
vsub.u16 Q0, Q0, Q2
vstrw.u32 Q0, [r14,#(-232)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-232]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-472]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-488]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #40]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-200]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #296]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(24)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #40]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(280)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-232)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-216)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-216]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-456]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-472]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #56]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-184]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #312]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(40)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #56]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(296)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-216)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-200)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-200]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-440]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-456]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #72]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-168]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #328]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(56)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #72]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(312)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-200)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-184)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-184]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-424]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-440]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #88]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-152]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #344]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(72)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #88]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(328)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-184)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-168)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-168]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-408]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-424]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #104]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-136]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #360]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(88)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #104]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(344)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-168)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-152)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-152]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-392]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-408]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #120]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-120]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #376]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(104)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #120]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vstrw.u32 Q3, [r0,#(360)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-152)]
vsub.u16 Q4, Q4, Q0
vstrw.u32 Q4, [r14,#(-136)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-136]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-376]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-392]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #136]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-104]
vadd.u16 Q1, Q1, Q0
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #392]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vstrw.u32 Q1, [r0,#(120)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vstrw.u32 Q2, [r14,#(-376)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #136]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vstrw.u32 Q5, [r0,#(376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vstrw.u32 Q0, [r0,#(-136)]
vsub.u16 Q6, Q6, Q0
vstrw.u32 Q6, [r14,#(-120)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-120]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-360]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-376]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #152]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-88]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-248]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(-248)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #408]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #264]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(264)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-232]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-232)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #152]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-488]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-488)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #8]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(8)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #24]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(24)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-104]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-344]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-360]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #168]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-72]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-232]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(-232)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #424]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #280]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(280)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-216]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-216)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #168]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-472]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-472)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #24]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(24)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #40]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(40)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-88]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-328]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-344]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #184]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-56]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-216]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(-216)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #440]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #296]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(296)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-200]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-200)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #184]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-456]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-456)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #40]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(40)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #56]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(56)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-72]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-312]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-328]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #200]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-40]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-200]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(-200)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #456]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #312]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(312)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-184]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-184)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #200]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-440]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-440)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #56]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(56)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #72]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(72)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-56]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-296]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-312]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #216]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #-24]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-184]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(-184)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #472]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #328]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(328)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-168]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-168)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #216]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-424]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-424)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #72]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(72)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #88]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(88)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-40]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-280]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-296]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #232]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vldrw.u32 Q4, [r14, #-8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-168]
vadd.u16 Q7, Q7, Q3
vstrw.u32 Q7, [r0,#(-168)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q3, [r0, #488]
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #344]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(344)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-152]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-152)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #232]
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vldrw.u32 Q2, [r14, #-408]
vadd.u16 Q2, Q2, Q5
vstrw.u32 Q2, [r14,#(-408)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #88]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(88)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #104]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(104)]
vadd.u16 Q4, Q4, Q1
vldrw.u32 Q0, [r0, #-24]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-264]
vsub.u16 Q3, Q3, Q2
vldrw.u32 Q5, [r0, #-280]
vshr.u16 Q3, Q3, #1
vldrw.u32 Q6, [r14, #248]
vsub.u16 Q1, Q1, Q6
vmla.s16 Q1, Q5, r12
vadd.u16 Q2, Q2, Q3
vmla.s16 Q4, Q2, r5
vsub.u16 Q2, Q2, Q6
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q5
vldrw.u32 Q6, [r14, #8]
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q7, [r0, #-152]
vadd.u16 Q7, Q7, Q5
vstrw.u32 Q7, [r0,#(-152)]
vmla.s16 Q1, Q2, r10
vldrw.u32 Q5, [r0, #504]
vmla.s16 Q4, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q7, [r0, #360]
vadd.u16 Q7, Q7, Q1
vstrw.u32 Q7, [r0,#(360)]
vadd.u16 Q0, Q0, Q4
vmla.s16 Q4, Q3, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q7, [r14, #-136]
vadd.u16 Q7, Q7, Q2
vstrw.u32 Q7, [r14,#(-136)]
vshr.u16 Q4, Q4, #1
vmul.u16 Q4, Q4, r4
vneg.s16 Q0, Q0
vldrw.u32 Q1, [r0, #248]
vadd.u16 Q3, Q3, Q4
vmla.s16 Q0, Q4, r7
vneg.s16 Q3, Q3
vldrw.u32 Q2, [r14, #-392]
vadd.u16 Q2, Q2, Q3
vstrw.u32 Q2, [r14,#(-392)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q2, [r0, #104]
vadd.u16 Q2, Q2, Q0
vstrw.u32 Q2, [r0,#(104)]
vsub.u16 Q4, Q4, Q0
vldrw.u32 Q0, [r14, #120]
vadd.u16 Q0, Q0, Q4
vstrw.u32 Q0, [r14,#(120)]
vadd.u16 Q6, Q6, Q1
vldrw.u32 Q0, [r0, #-8]
vsub.u16 Q0, Q0, Q1
vldrw.u32 Q2, [r14, #-248]
vsub.u16 Q5, Q5, Q2
vldrw.u32 Q3, [r0, #-264]
vshr.u16 Q5, Q5, #1
vldrw.u32 Q4, [r14, #264]
vsub.u16 Q1, Q1, Q4
vmla.s16 Q1, Q3, r12
vadd.u16 Q2, Q2, Q5
vmla.s16 Q6, Q2, r5
vsub.u16 Q2, Q2, Q4
vmla.s16 Q1, Q1, r3
vsub.u16 Q2, Q2, Q3
vadd.u16 Q1, Q1, Q0
vldrw.u32 Q4, [r0, #-136]
vadd.u16 Q4, Q4, Q3
vstrw.u32 Q4, [r0,#(-136)]
vmla.s16 Q1, Q2, r10
vmla.s16 Q6, Q2, r11
vshr.u16 Q1, Q1, #3
vmul.u16 Q1, Q1, r9
vldrw.u32 Q3, [r0, #376]
vadd.u16 Q3, Q3, Q1
vstrw.u32 Q3, [r0,#(376)]
vadd.u16 Q0, Q0, Q6
vmla.s16 Q6, Q5, r8
vsub.u16 Q2, Q2, Q1
vldrw.u32 Q3, [r14, #-120]
vadd.u16 Q3, Q3, Q2
vstrw.u32 Q3, [r14,#(-120)]
vshr.u16 Q6, Q6, #1
vmul.u16 Q6, Q6, r4
vneg.s16 Q0, Q0
vadd.u16 Q5, Q5, Q6
vmla.s16 Q0, Q6, r7
vneg.s16 Q5, Q5
vldrw.u32 Q1, [r14, #-376]
vadd.u16 Q1, Q1, Q5
vstrw.u32 Q1, [r14,#(-376)]
vshr.u16 Q0, Q0, #2
vmul.u16 Q0, Q0, r6
vldrw.u32 Q1, [r0, #120]
vadd.u16 Q1, Q1, Q0
vstrw.u32 Q1, [r0,#(120)]
vsub.u16 Q6, Q6, Q0
vldrw.u32 Q0, [r14, #136]
vadd.u16 Q0, Q0, Q6
vstrw.u32 Q0, [r14,#(136)]
vpop {d0-d15}
pop {r4-r11,lr}
bx lr