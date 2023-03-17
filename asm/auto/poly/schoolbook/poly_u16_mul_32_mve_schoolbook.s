.syntax unified
.type poly_u16_mul_32_schoolbook_mve, %function
.global poly_u16_mul_32_schoolbook_mve
poly_u16_mul_32_schoolbook_mve:
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
vldrh.u16 Q4, [r1, #2]
strh r10, [r0,#+4]
vmladavx.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #4]
strh r8, [r0,#+6]
vmladavx.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #6]
strh r6, [r0,#+8]
vmladavx.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #8]
strh r4, [r0,#+10]
vmladavx.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #10]
strh r14, [r0,#+12]
vmladavx.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #12]
strh r12, [r0,#+14]
vmladavx.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #14]
vldrw.u32 Q4, [Q2, #12]
strh r10, [r0,#+16]
vmladavx.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #16]
strh r8, [r0,#+18]
vmladavx.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #18]
strh r6, [r0,#+20]
vmladavx.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #20]
strh r4, [r0,#+22]
vmladavx.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #22]
strh r14, [r0,#+24]
vmladavx.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #24]
strh r12, [r0,#+26]
vmladavx.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #26]
strh r10, [r0,#+28]
vmladavx.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #28]
vldrw.u32 Q5, [Q2, #12]
strh r8, [r0,#+30]
vmladavx.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #30]
strh r6, [r0,#+32]
vmladavx.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #32]
strh r4, [r0,#+34]
vmladavx.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #34]
strh r14, [r0,#+36]
vmladavx.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #36]
strh r12, [r0,#+38]
vmladavx.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #38]
strh r10, [r0,#+40]
vmladavx.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #40]
strh r8, [r0,#+42]
vmladavx.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #42]
vldrw.u32 Q6, [Q2, #12]
strh r6, [r0,#+44]
vmladavx.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #44]
strh r4, [r0,#+46]
vmladavx.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #46]
strh r14, [r0,#+48]
vmladavx.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #48]
strh r12, [r0,#+50]
vmladavx.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #50]
strh r10, [r0,#+52]
vmladavx.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #52]
strh r8, [r0,#+54]
vmladavx.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #54]
strh r6, [r0,#+56]
vmladavx.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #56]
vldrw.u32 Q7, [Q2, #12]
strh r4, [r0,#+58]
vmladavx.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #58]
strh r14, [r0,#+60]
vmladavx.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #60]
strh r12, [r0,#+62]
vmladavx.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #62]
strh r10, [r0,#+64]
vmladavx.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #28]
strh r8, [r0,#+66]
ldrh r8, [r0,#+16]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #-12]
strh r6, [r0,#+68]
ldrh r6, [r0,#+18]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #-10]
strh r4, [r0,#+70]
ldrh r4, [r0,#+20]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #-8]
strh r14, [r0,#+72]
ldrh r14, [r0,#+22]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #-6]
strh r12, [r0,#+74]
ldrh r12, [r0,#+24]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #-4]
strh r10, [r0,#+76]
ldrh r10, [r0,#+26]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #-2]
strh r8, [r0,#+16]
ldrh r8, [r0,#+28]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #0]
vldrw.u32 Q6, [Q2, #28]
strh r6, [r0,#+18]
ldrh r6, [r0,#+30]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #2]
strh r4, [r0,#+20]
ldrh r4, [r0,#+32]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #4]
strh r14, [r0,#+22]
ldrh r14, [r0,#+34]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #6]
strh r12, [r0,#+24]
ldrh r12, [r0,#+36]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #8]
strh r10, [r0,#+26]
ldrh r10, [r0,#+38]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #10]
strh r8, [r0,#+28]
ldrh r8, [r0,#+40]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #12]
strh r6, [r0,#+30]
ldrh r6, [r0,#+42]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #14]
vldrw.u32 Q7, [Q2, #28]
strh r4, [r0,#+32]
ldrh r4, [r0,#+44]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #16]
strh r14, [r0,#+34]
ldrh r14, [r0,#+46]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #18]
strh r12, [r0,#+36]
ldrh r12, [r0,#+48]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #20]
strh r10, [r0,#+38]
ldrh r10, [r0,#+50]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #22]
strh r8, [r0,#+40]
ldrh r8, [r0,#+52]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #24]
strh r6, [r0,#+42]
ldrh r6, [r0,#+54]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #26]
strh r4, [r0,#+44]
ldrh r4, [r0,#+56]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #28]
vldrw.u32 Q0, [Q2, #28]
strh r14, [r0,#+46]
ldrh r14, [r0,#+58]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #30]
strh r12, [r0,#+48]
ldrh r12, [r0,#+60]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #32]
strh r10, [r0,#+50]
ldrh r10, [r0,#+62]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #34]
strh r8, [r0,#+52]
ldrh r8, [r0,#+64]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #36]
strh r6, [r0,#+54]
ldrh r6, [r0,#+66]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #38]
strh r4, [r0,#+56]
ldrh r4, [r0,#+68]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #40]
strh r14, [r0,#+58]
ldrh r14, [r0,#+70]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #42]
vldrw.u32 Q1, [Q2, #28]
strh r12, [r0,#+60]
ldrh r12, [r0,#+72]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #44]
strh r10, [r0,#+62]
ldrh r10, [r0,#+74]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #46]
strh r8, [r0,#+64]
ldrh r8, [r0,#+76]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #48]
strh r6, [r0,#+66]
vmladavx.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #50]
strh r4, [r0,#+68]
vmladavx.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #52]
strh r14, [r0,#+70]
vmladavx.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #54]
strh r12, [r0,#+72]
vmladavx.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #56]
vldrw.u32 Q3, [Q2, #28]
strh r10, [r0,#+74]
vmladavx.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #58]
strh r8, [r0,#+76]
vmladavx.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #60]
strh r6, [r0,#+78]
vmladavx.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #62]
strh r4, [r0,#+80]
vmladavx.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #-14]
vldrw.u32 Q0, [Q2, #44]
strh r14, [r0,#+82]
ldrh r14, [r0,#+32]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #-12]
strh r12, [r0,#+84]
ldrh r12, [r0,#+34]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #-10]
strh r10, [r0,#+86]
ldrh r10, [r0,#+36]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #-8]
strh r8, [r0,#+88]
ldrh r8, [r0,#+38]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #-6]
strh r6, [r0,#+90]
ldrh r6, [r0,#+40]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #-4]
strh r4, [r0,#+92]
ldrh r4, [r0,#+42]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #-2]
strh r14, [r0,#+32]
ldrh r14, [r0,#+44]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #0]
vldrw.u32 Q1, [Q2, #44]
strh r12, [r0,#+34]
ldrh r12, [r0,#+46]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #2]
strh r10, [r0,#+36]
ldrh r10, [r0,#+48]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #4]
strh r8, [r0,#+38]
ldrh r8, [r0,#+50]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #6]
strh r6, [r0,#+40]
ldrh r6, [r0,#+52]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #8]
strh r4, [r0,#+42]
ldrh r4, [r0,#+54]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #10]
strh r14, [r0,#+44]
ldrh r14, [r0,#+56]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #12]
strh r12, [r0,#+46]
ldrh r12, [r0,#+58]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #14]
vldrw.u32 Q3, [Q2, #44]
strh r10, [r0,#+48]
ldrh r10, [r0,#+60]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #16]
strh r8, [r0,#+50]
ldrh r8, [r0,#+62]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #18]
strh r6, [r0,#+52]
ldrh r6, [r0,#+64]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #20]
strh r4, [r0,#+54]
ldrh r4, [r0,#+66]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #22]
strh r14, [r0,#+56]
ldrh r14, [r0,#+68]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #24]
strh r12, [r0,#+58]
ldrh r12, [r0,#+70]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #26]
strh r10, [r0,#+60]
ldrh r10, [r0,#+72]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #28]
vldrw.u32 Q4, [Q2, #44]
strh r8, [r0,#+62]
ldrh r8, [r0,#+74]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #30]
strh r6, [r0,#+64]
ldrh r6, [r0,#+76]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #32]
strh r4, [r0,#+66]
ldrh r4, [r0,#+78]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #34]
strh r14, [r0,#+68]
ldrh r14, [r0,#+80]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #36]
strh r12, [r0,#+70]
ldrh r12, [r0,#+82]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #38]
strh r10, [r0,#+72]
ldrh r10, [r0,#+84]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #40]
strh r8, [r0,#+74]
ldrh r8, [r0,#+86]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #42]
vldrw.u32 Q5, [Q2, #44]
strh r6, [r0,#+76]
ldrh r6, [r0,#+88]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #44]
strh r4, [r0,#+78]
ldrh r4, [r0,#+90]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #46]
strh r14, [r0,#+80]
ldrh r14, [r0,#+92]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #48]
strh r12, [r0,#+82]
vmladavx.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #50]
strh r10, [r0,#+84]
vmladavx.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #52]
strh r8, [r0,#+86]
vmladavx.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #54]
strh r6, [r0,#+88]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #56]
vldrw.u32 Q6, [Q2, #44]
strh r4, [r0,#+90]
vmladavx.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #58]
strh r14, [r0,#+92]
vmladavx.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #60]
strh r12, [r0,#+94]
vmladavx.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #62]
strh r10, [r0,#+96]
vmladavx.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #-14]
vldrw.u32 Q4, [Q2, #60]
strh r8, [r0,#+98]
ldrh r8, [r0,#+48]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #-12]
strh r6, [r0,#+100]
ldrh r6, [r0,#+50]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #-10]
strh r4, [r0,#+102]
ldrh r4, [r0,#+52]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #-8]
strh r14, [r0,#+104]
ldrh r14, [r0,#+54]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #-6]
strh r12, [r0,#+106]
ldrh r12, [r0,#+56]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #-4]
strh r10, [r0,#+108]
ldrh r10, [r0,#+58]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #-2]
strh r8, [r0,#+48]
ldrh r8, [r0,#+60]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #0]
vldrw.u32 Q5, [Q2, #60]
strh r6, [r0,#+50]
ldrh r6, [r0,#+62]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #2]
strh r4, [r0,#+52]
ldrh r4, [r0,#+64]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #4]
strh r14, [r0,#+54]
ldrh r14, [r0,#+66]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #6]
strh r12, [r0,#+56]
ldrh r12, [r0,#+68]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #8]
strh r10, [r0,#+58]
ldrh r10, [r0,#+70]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #10]
strh r8, [r0,#+60]
ldrh r8, [r0,#+72]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #12]
strh r6, [r0,#+62]
ldrh r6, [r0,#+74]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #14]
vldrw.u32 Q6, [Q2, #60]
strh r4, [r0,#+64]
ldrh r4, [r0,#+76]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #16]
strh r14, [r0,#+66]
ldrh r14, [r0,#+78]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #18]
strh r12, [r0,#+68]
ldrh r12, [r0,#+80]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #20]
strh r10, [r0,#+70]
ldrh r10, [r0,#+82]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #22]
strh r8, [r0,#+72]
ldrh r8, [r0,#+84]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #24]
strh r6, [r0,#+74]
ldrh r6, [r0,#+86]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #26]
strh r4, [r0,#+76]
ldrh r4, [r0,#+88]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #28]
vldrw.u32 Q7, [Q2, #60]
strh r14, [r0,#+78]
ldrh r14, [r0,#+90]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #30]
strh r12, [r0,#+80]
ldrh r12, [r0,#+92]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #32]
strh r10, [r0,#+82]
ldrh r10, [r0,#+94]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #34]
strh r8, [r0,#+84]
ldrh r8, [r0,#+96]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #36]
strh r6, [r0,#+86]
ldrh r6, [r0,#+98]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #38]
strh r4, [r0,#+88]
ldrh r4, [r0,#+100]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #40]
strh r14, [r0,#+90]
ldrh r14, [r0,#+102]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #42]
vldrw.u32 Q0, [Q2, #60]
strh r12, [r0,#+92]
ldrh r12, [r0,#+104]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #44]
strh r10, [r0,#+94]
ldrh r10, [r0,#+106]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #46]
strh r8, [r0,#+96]
ldrh r8, [r0,#+108]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #48]
strh r6, [r0,#+98]
vmladavx.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #50]
strh r4, [r0,#+100]
vmladavx.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #52]
strh r14, [r0,#+102]
vmladavx.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #54]
strh r12, [r0,#+104]
vmladavx.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #56]
vldrw.u32 Q1, [Q2, #60]
strh r10, [r0,#+106]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #58]
strh r8, [r0,#+108]
vmladavx.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #60]
strh r6, [r0,#+110]
vmladavx.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #62]
strh r4, [r0,#+112]
vmladavx.s16 r4, Q5, Q1
strh r14, [r0,#+114]
strh r12, [r0,#+116]
strh r10, [r0,#+118]
strh r8, [r0,#+120]
strh r6, [r0,#+122]
strh r4, [r0,#+124]
pop {r4-r11,lr}
bx lr