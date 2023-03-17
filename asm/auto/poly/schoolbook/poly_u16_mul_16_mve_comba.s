.syntax unified
.type poly_u16_mul_16_comba_mve, %function
.global poly_u16_mul_16_comba_mve
poly_u16_mul_16_comba_mve:
push {r4-r11,lr}
vldrh.u16 Q0, [r1, #-14]
vddup.u32 Q2,r2,#4
vldrw.u32 Q1, [Q2, #12]
vmladavx.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #-12]
vmladavx.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #-10]
vmladavx.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #-8]
vmladavx.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #-6]
vmladavx.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #-4]
vmladavx.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #-2]
strh r14, [r0,#+0]
vmladavx.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #0]
vldrw.u32 Q3, [Q2, #12]
strh r12, [r0,#+2]
vmladavx.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #28]
strh r10, [r0,#+4]
vmladavx.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #2]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #-12]
strh r8, [r0,#+6]
vmladavx.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #4]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #-10]
strh r6, [r0,#+8]
vmladavx.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #6]
vldrw.u32 Q4, [Q2, #12]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #-8]
vldrw.u32 Q6, [Q2, #28]
strh r4, [r0,#+10]
vmladavx.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #8]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #-6]
strh r14, [r0,#+12]
vmladavx.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #10]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #-4]
strh r12, [r0,#+14]
vmladavx.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #12]
vldrw.u32 Q5, [Q2, #12]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #-2]
vldrw.u32 Q7, [Q2, #28]
strh r10, [r0,#+16]
vmladavx.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #14]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #0]
strh r8, [r0,#+18]
vmladavx.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #16]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #2]
strh r6, [r0,#+20]
vmladavx.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #18]
vldrw.u32 Q6, [Q2, #12]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #4]
vldrw.u32 Q0, [Q2, #28]
strh r4, [r0,#+22]
vmladavx.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #20]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #6]
strh r14, [r0,#+24]
vmladavx.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #22]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #8]
strh r12, [r0,#+26]
vmladavx.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #24]
vldrw.u32 Q7, [Q2, #12]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #10]
vldrw.u32 Q1, [Q2, #28]
strh r10, [r0,#+28]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #26]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #12]
strh r8, [r0,#+30]
vmladavx.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #28]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #14]
strh r6, [r0,#+32]
vmladavx.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #30]
vldrw.u32 Q0, [Q2, #12]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #16]
vldrw.u32 Q3, [Q2, #28]
strh r4, [r0,#+34]
vmladavx.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #18]
strh r14, [r0,#+36]
vmladavx.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #20]
strh r12, [r0,#+38]
vmladavx.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #22]
strh r10, [r0,#+40]
vmladavx.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #24]
strh r8, [r0,#+42]
vmladavx.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #26]
strh r6, [r0,#+44]
vmladavx.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #28]
strh r4, [r0,#+46]
vmladavx.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #30]
vldrw.u32 Q4, [Q2, #28]
strh r14, [r0,#+48]
vmladavx.s16 r14, Q3, Q4
strh r14, [r0,#+60]
pop {r4-r11,lr}
bx lr