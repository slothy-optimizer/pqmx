.syntax unified
.type poly_u16_mul_32_comba_mve, %function
.global poly_u16_mul_32_comba_mve
poly_u16_mul_32_comba_mve:
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
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #44]
strh r6, [r0,#+20]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #2]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #18]
vldrw.u32 Q0, [Q2, #12]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #-12]
strh r4, [r0,#+22]
vmladavx.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #4]
vldrw.u32 Q4, [Q2, #28]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #20]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #-10]
vldrw.u32 Q7, [Q2, #44]
strh r14, [r0,#+24]
vmladavx.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #6]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #22]
vldrw.u32 Q3, [Q2, #12]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #-8]
strh r12, [r0,#+26]
vmladavx.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #8]
vldrw.u32 Q6, [Q2, #28]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #24]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #-6]
vldrw.u32 Q1, [Q2, #44]
strh r10, [r0,#+28]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #10]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #26]
vldrw.u32 Q5, [Q2, #12]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #-4]
strh r8, [r0,#+30]
vmladavx.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #12]
vldrw.u32 Q0, [Q2, #28]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #28]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #-2]
vldrw.u32 Q4, [Q2, #44]
strh r6, [r0,#+32]
vmladavx.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #14]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #30]
vldrw.u32 Q7, [Q2, #12]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #0]
strh r4, [r0,#+34]
vmladavx.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #16]
vldrw.u32 Q3, [Q2, #28]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #32]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #-14]
vldrw.u32 Q6, [Q2, #60]
strh r14, [r0,#+36]
vmladavx.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #2]
vldrw.u32 Q0, [Q2, #44]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #18]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #34]
vldrw.u32 Q4, [Q2, #12]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #-12]
strh r12, [r0,#+38]
vmladavx.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #4]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #20]
vldrw.u32 Q0, [Q2, #28]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #36]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #-10]
vldrw.u32 Q4, [Q2, #60]
strh r10, [r0,#+40]
vmladavx.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #6]
vldrw.u32 Q6, [Q2, #44]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #22]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #38]
vldrw.u32 Q1, [Q2, #12]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #-8]
strh r8, [r0,#+42]
vmladavx.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #8]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #24]
vldrw.u32 Q6, [Q2, #28]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #40]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #-6]
vldrw.u32 Q1, [Q2, #60]
strh r6, [r0,#+44]
vmladavx.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #10]
vldrw.u32 Q4, [Q2, #44]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #26]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #42]
vldrw.u32 Q7, [Q2, #12]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #-4]
strh r4, [r0,#+46]
vmladavx.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #12]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #28]
vldrw.u32 Q4, [Q2, #28]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #44]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #-2]
vldrw.u32 Q7, [Q2, #60]
strh r14, [r0,#+48]
vmladavx.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #14]
vldrw.u32 Q1, [Q2, #44]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #30]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #46]
vldrw.u32 Q5, [Q2, #12]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #0]
strh r12, [r0,#+50]
vmladavx.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #16]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #32]
vldrw.u32 Q1, [Q2, #28]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #48]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #2]
vldrw.u32 Q5, [Q2, #60]
strh r10, [r0,#+52]
vmladavx.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #18]
vldrw.u32 Q7, [Q2, #44]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #34]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #50]
vldrw.u32 Q3, [Q2, #12]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #4]
strh r8, [r0,#+54]
vmladavx.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #20]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #36]
vldrw.u32 Q7, [Q2, #28]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #52]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #6]
vldrw.u32 Q3, [Q2, #60]
strh r6, [r0,#+56]
vmladavx.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #22]
vldrw.u32 Q5, [Q2, #44]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #38]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #54]
vldrw.u32 Q0, [Q2, #12]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #8]
strh r4, [r0,#+58]
vmladavx.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #24]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #40]
vldrw.u32 Q5, [Q2, #28]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #56]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #10]
vldrw.u32 Q0, [Q2, #60]
strh r14, [r0,#+60]
vmladavx.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #26]
vldrw.u32 Q3, [Q2, #44]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #42]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #58]
vldrw.u32 Q6, [Q2, #12]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #12]
strh r12, [r0,#+62]
vmladavx.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #28]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #44]
vldrw.u32 Q3, [Q2, #28]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #60]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #14]
vldrw.u32 Q6, [Q2, #60]
strh r10, [r0,#+64]
vmladavx.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #30]
vldrw.u32 Q0, [Q2, #44]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #46]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #62]
vldrw.u32 Q4, [Q2, #12]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #16]
strh r8, [r0,#+66]
vmladavx.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #32]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #48]
vldrw.u32 Q0, [Q2, #28]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #18]
vldrw.u32 Q3, [Q2, #60]
strh r6, [r0,#+68]
vmladavx.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #34]
vldrw.u32 Q5, [Q2, #44]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #50]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #20]
strh r4, [r0,#+70]
vmladavx.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #36]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #52]
vldrw.u32 Q3, [Q2, #28]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #22]
vldrw.u32 Q5, [Q2, #60]
strh r14, [r0,#+72]
vmladavx.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #38]
vldrw.u32 Q7, [Q2, #44]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #54]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #24]
strh r12, [r0,#+74]
vmladavx.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #40]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #56]
vldrw.u32 Q5, [Q2, #28]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #26]
vldrw.u32 Q7, [Q2, #60]
strh r10, [r0,#+76]
vmladavx.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #42]
vldrw.u32 Q1, [Q2, #44]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #58]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #28]
strh r8, [r0,#+78]
vmladavx.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #44]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #60]
vldrw.u32 Q7, [Q2, #28]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #30]
vldrw.u32 Q1, [Q2, #60]
strh r6, [r0,#+80]
vmladavx.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #46]
vldrw.u32 Q4, [Q2, #44]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #62]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #32]
strh r4, [r0,#+82]
vmladavx.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #48]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #34]
strh r14, [r0,#+84]
vmladavx.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #50]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #36]
vldrw.u32 Q4, [Q2, #60]
strh r12, [r0,#+86]
vmladavx.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #52]
vldrw.u32 Q6, [Q2, #44]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #38]
strh r10, [r0,#+88]
vmladavx.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #54]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #40]
strh r8, [r0,#+90]
vmladavx.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #56]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #42]
vldrw.u32 Q5, [Q2, #60]
strh r6, [r0,#+92]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #58]
vldrw.u32 Q7, [Q2, #44]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #44]
strh r4, [r0,#+94]
vmladavx.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #60]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #46]
strh r14, [r0,#+96]
vmladavx.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #62]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #48]
vldrw.u32 Q6, [Q2, #60]
strh r12, [r0,#+98]
vmladavx.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #50]
strh r10, [r0,#+100]
vmladavx.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #52]
strh r8, [r0,#+102]
vmladavx.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #54]
strh r6, [r0,#+104]
vmladavx.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #56]
strh r4, [r0,#+106]
vmladavx.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #58]
strh r14, [r0,#+108]
vmladavx.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #60]
strh r12, [r0,#+110]
vmladavx.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #62]
vldrw.u32 Q7, [Q2, #60]
strh r10, [r0,#+112]
vmladavx.s16 r10, Q6, Q7
strh r10, [r0,#+124]
pop {r4-r11,lr}
bx lr