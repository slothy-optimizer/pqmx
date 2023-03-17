///
/// This assembly code has been auto-generated.
/// Don't modify it directly.
///
.syntax unified
.type poly_u16_mul_32_anticyclic_karatsuba_mve_simd_manual, %function
.global poly_u16_mul_32_anticyclic_karatsuba_mve_simd_manual
poly_u16_mul_32_anticyclic_karatsuba_mve_simd_manual:
push {r4-r11,lr}
vld20.u16 {Q4, Q5}, [r2]
sub r12, sp, #(196)
//sub sp, sp, #32
vld21.u16 {Q4, Q5}, [r2]!
mov r14, #0
vld20.u16 {Q6, Q7}, [r2]
ldrd r10, r11, [r1, #24]
vld21.u16 {Q6, Q7}, [r2]!
vmul.u16 Q2, Q4, r11
vstrh.u16 q5, [sp, #(+16-32)]
vmov.u16 Q5, #0
ldrd r8, r9, [r1, #56]
vstrh.u16 q7, [sp, #(+0-32)]



vneg.s16 Q7, Q6
vmul.u16 Q3, Q4, r9
vld20.u16 {Q0, Q1}, [r1]
vmla.s16 Q2, Q7, r9
ldrd r6, r7, [r1, #16]
vmla.s16 Q3, Q6, r11
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r10
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r14, #16
vld21.u16 {Q0, Q1}, [r1]!
vmla.s16 Q2, Q7, r8
ldrd r4, r11, [r1, #(48-32)]



vmla.s16 Q3, Q6, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r11
vshlc Q5, r14, #16
vst20.u16 {Q1, Q2}, [r12]
vmla.s16 Q2, Q7, r11
ldrd r10, r9, [r1, #(8-32)]
vadd.u16 Q0, Q0, Q1
//ldrd r10, r9, [r1, #8]
vmla.s16 Q3, Q6, r7
vst21.u16 {Q1, Q2}, [r12]!
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r4
vshlc Q5, r14, #16
vst20.u16 {Q0, Q1}, [r12]
vmla.s16 Q2, Q7, r4
ldrd r8, r11, [r1, #(40-32)]
vmla.s16 Q3, Q6, r6
vshlc Q2, r14, #16
vst21.u16 {Q0, Q1}, [r12]!
vmla.s16 Q2, Q4, r9
vshlc Q3, r14, #16
vld20.u16 {Q0, Q1}, [r1]
vmla.s16 Q3, Q4, r11
vshlc Q5, r14, #16
vld21.u16 {Q0, Q1}, [r1]!
vmla.s16 Q2, Q7, r11
ldrd r6, r7, [r1, #(0-32-32)]
vadd.u16 Q0, Q0, Q1
vmla.s16 Q3, Q6, r9
vst20.u16 {Q1, Q2}, [r12]
vshlc Q2, r14, #16
vst21.u16 {Q1, Q2}, [r12]!
vmla.s16 Q2, Q4, r10
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r8
vshlc Q5, r14, #16
vst21.u16 {Q0, Q1}, [r12]
vmla.s16 Q2, Q7, r8
ldrd r4, r11, [r1, #(32-32-32)]
vmla.s16 Q3, Q6, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r11
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r11
vst20.u16 {Q0, Q1}, [r12]!
vmla.s16 Q3, Q6, r7
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r6
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r4
vshlc Q5, r14, #16
vldrh.u16 q1, [sp,#(-32)]
vmla.s16 Q3, Q6, r6
vstrh.u16 Q3, [r12,#(144-32-32-32-32)]
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r4
//add sp, sp, #32

vstrh.u16 Q2, [r12,#(128-32-32-32-32)]
vmov.u16 Q5, #0
ldrd r10, r11, [r12, #-104]
vldrh.u16 q0, [sp,#(-16)]
vmul.u16 Q2, Q0, r10
ldrd r8, r9, [r12, #-40]
vneg.s16 Q7, Q1
vmul.u16 Q3, Q0, r8
ldrd r6, r7, [r12, #-112]
vmla.s16 Q2, Q7, r8

ldrd r4, r5, [r12, #-48]
vmla.s16 Q3, Q1, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r5
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r5
ldrd r10, r3, [r12, #-120]
vmla.s16 Q3, Q1, r7
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r6
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r4
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r4
ldrd r8, r7, [r12, #-56]
vmla.s16 Q3, Q1, r6
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r3
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r7
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r7
ldrd r6, r5, [r12, #-64]
vmla.s16 Q3, Q1, r3
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r10
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r8
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r8
vadd.u16 Q4, Q4, Q0
ldrd r4, r7, [r12, #-128]
vmla.s16 Q3, Q1, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r5
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r5
vmla.s16 Q3, Q1, r7
vshlc Q2, r14, #16
vmla.s16 Q2, Q0, r4
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r6
vshlc Q5, r14, #16
vmla.s16 Q2, Q7, r6
vadd.u16 Q6, Q6, Q1
vmla.s16 Q3, Q1, r4
vshlc Q2, r14, #16
neg r9, r9
vmla.s16 Q2, Q0, r9
vshlc Q3, r14, #16
vmla.s16 Q3, Q0, r11
vshlc Q5, r14, #16
vmla.s16 Q3, Q1, r9
//vstrh.u16 Q3, [r12,#(48)]
vsub.u16 Q2, Q2, Q5
vmla.s16 Q2, Q7, r11
vneg.s16 Q3, Q3
vldrh.u16 Q5, [r12,#0]
vadd.u16 Q5, Q5, Q2
//vstrh.u16 Q5, [r0,   #0]

//vstrh.u16 Q2, [r12,#(32)]
//vadd.u16 Q5, Q5, Q2
//vstrh.u16 Q5, [r0,   #0]



ldrd r10, r11, [r12, #-72]
vldrh.u16 Q7, [r12,#16]
vsub.u16 Q7, Q7, Q3
ldrd r8, r9, [r12, #-8]
vmla.s16 Q3, Q4, r11
vmov.u16 Q0, #0
vmla.s16 Q2, Q4, r9
vneg.s16 Q1, Q6
vmla.s16 Q3, Q1, r9
ldrd r6, r7, [r12, #-80]
vmla.s16 Q2, Q6, r11
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r14, #16
vstrh.u16 Q7, [r0,  #16]
vmla.s16 Q3, Q1, r8
ldrd r4, r11, [r12, #-16]
vmla.s16 Q2, Q6, r10
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r7
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r11
vshlc Q0, r14, #16
vstrh.u16 Q5, [r0,   #0]
vmla.s16 Q3, Q1, r11
ldrd r10, r9, [r12, #-88]
vmla.s16 Q2, Q6, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r4
vshlc Q0, r14, #16
vmla.s16 Q3, Q1, r4
ldrd r8, r11, [r12, #-24]
vmla.s16 Q2, Q6, r6
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r9
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r11
vshlc Q0, r14, #16
vmla.s16 Q3, Q1, r11
ldrd r6, r7, [r12, #-96]
vmla.s16 Q2, Q6, r9
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r10
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r8
vshlc Q0, r14, #16
vmla.s16 Q3, Q1, r8
ldrd r4, r11, [r12, #-32]
vmla.s16 Q2, Q6, r10
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r7
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r11
vshlc Q0, r14, #16
vmla.s16 Q3, Q1, r11
vmla.s16 Q2, Q6, r7
vshlc Q3, r14, #16
vmla.s16 Q3, Q4, r6
vshlc Q2, r14, #16
vmla.s16 Q2, Q4, r4
vshlc Q0, r14, #16
vmla.s16 Q2, Q6, r6
vsub.u16 Q3, Q3, Q0
vldrh.u16 Q0, [r12,#0]

//vstrh.u16 Q2, [r12,#(-80)]

vmla.s16 Q3, Q1, r4
//vstrh.u16 Q3, [r12,#(-96)]

vldrh.u16 Q1, [r12,#16]
vsub.u16 Q0, Q3, Q0
vstrh.u16 Q0, [r0, #32]
vsub.u16 Q1, Q2, Q1
vstrh.u16 Q1, [r0, #48]
nop
nop
nop
nop
nop
nop
pop {r4-r11,lr}
bx lr
