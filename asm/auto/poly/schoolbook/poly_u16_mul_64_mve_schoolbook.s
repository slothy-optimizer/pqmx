.syntax unified
.type poly_u16_mul_64_schoolbook_mve, %function
.global poly_u16_mul_64_schoolbook_mve
poly_u16_mul_64_schoolbook_mve:
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
vldrh.u16 Q4, [r1, #64]
strh r8, [r0,#+66]
vmladavx.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #66]
strh r6, [r0,#+68]
vmladavx.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #68]
strh r4, [r0,#+70]
vmladavx.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #70]
vldrw.u32 Q0, [Q2, #12]
strh r14, [r0,#+72]
vmladavx.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #72]
strh r12, [r0,#+74]
vmladavx.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #74]
strh r10, [r0,#+76]
vmladavx.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #76]
strh r8, [r0,#+78]
vmladavx.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #78]
strh r6, [r0,#+80]
vmladavx.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #80]
strh r4, [r0,#+82]
vmladavx.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #82]
strh r14, [r0,#+84]
vmladavx.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #84]
vldrw.u32 Q1, [Q2, #12]
strh r12, [r0,#+86]
vmladavx.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #86]
strh r10, [r0,#+88]
vmladavx.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #88]
strh r8, [r0,#+90]
vmladavx.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #90]
strh r6, [r0,#+92]
vmladavx.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #92]
strh r4, [r0,#+94]
vmladavx.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #94]
strh r14, [r0,#+96]
vmladavx.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #96]
strh r12, [r0,#+98]
vmladavx.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #98]
vldrw.u32 Q3, [Q2, #12]
strh r10, [r0,#+100]
vmladavx.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #100]
strh r8, [r0,#+102]
vmladavx.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #102]
strh r6, [r0,#+104]
vmladavx.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #104]
strh r4, [r0,#+106]
vmladavx.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #106]
strh r14, [r0,#+108]
vmladavx.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #108]
strh r12, [r0,#+110]
vmladavx.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #110]
strh r10, [r0,#+112]
vmladavx.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #112]
vldrw.u32 Q4, [Q2, #12]
strh r8, [r0,#+114]
vmladavx.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #114]
strh r6, [r0,#+116]
vmladavx.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #116]
strh r4, [r0,#+118]
vmladavx.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #118]
strh r14, [r0,#+120]
vmladavx.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #120]
strh r12, [r0,#+122]
vmladavx.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #122]
strh r10, [r0,#+124]
vmladavx.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #124]
strh r8, [r0,#+126]
vmladavx.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #126]
vldrw.u32 Q5, [Q2, #12]
strh r6, [r0,#+128]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #-14]
vldrw.u32 Q7, [Q2, #28]
strh r4, [r0,#+130]
ldrh r4, [r0,#+16]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #-12]
strh r14, [r0,#+132]
ldrh r14, [r0,#+18]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #-10]
strh r12, [r0,#+134]
ldrh r12, [r0,#+20]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #-8]
strh r10, [r0,#+136]
ldrh r10, [r0,#+22]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #-6]
strh r8, [r0,#+138]
ldrh r8, [r0,#+24]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #-4]
strh r6, [r0,#+140]
ldrh r6, [r0,#+26]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #-2]
strh r4, [r0,#+16]
ldrh r4, [r0,#+28]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #0]
vldrw.u32 Q0, [Q2, #28]
strh r14, [r0,#+18]
ldrh r14, [r0,#+30]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #2]
strh r12, [r0,#+20]
ldrh r12, [r0,#+32]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #4]
strh r10, [r0,#+22]
ldrh r10, [r0,#+34]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #6]
strh r8, [r0,#+24]
ldrh r8, [r0,#+36]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #8]
strh r6, [r0,#+26]
ldrh r6, [r0,#+38]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #10]
strh r4, [r0,#+28]
ldrh r4, [r0,#+40]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #12]
strh r14, [r0,#+30]
ldrh r14, [r0,#+42]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #14]
vldrw.u32 Q1, [Q2, #28]
strh r12, [r0,#+32]
ldrh r12, [r0,#+44]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #16]
strh r10, [r0,#+34]
ldrh r10, [r0,#+46]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #18]
strh r8, [r0,#+36]
ldrh r8, [r0,#+48]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #20]
strh r6, [r0,#+38]
ldrh r6, [r0,#+50]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #22]
strh r4, [r0,#+40]
ldrh r4, [r0,#+52]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #24]
strh r14, [r0,#+42]
ldrh r14, [r0,#+54]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #26]
strh r12, [r0,#+44]
ldrh r12, [r0,#+56]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #28]
vldrw.u32 Q3, [Q2, #28]
strh r10, [r0,#+46]
ldrh r10, [r0,#+58]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #30]
strh r8, [r0,#+48]
ldrh r8, [r0,#+60]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #32]
strh r6, [r0,#+50]
ldrh r6, [r0,#+62]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #34]
strh r4, [r0,#+52]
ldrh r4, [r0,#+64]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #36]
strh r14, [r0,#+54]
ldrh r14, [r0,#+66]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #38]
strh r12, [r0,#+56]
ldrh r12, [r0,#+68]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #40]
strh r10, [r0,#+58]
ldrh r10, [r0,#+70]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #42]
vldrw.u32 Q4, [Q2, #28]
strh r8, [r0,#+60]
ldrh r8, [r0,#+72]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #44]
strh r6, [r0,#+62]
ldrh r6, [r0,#+74]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #46]
strh r4, [r0,#+64]
ldrh r4, [r0,#+76]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #48]
strh r14, [r0,#+66]
ldrh r14, [r0,#+78]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #50]
strh r12, [r0,#+68]
ldrh r12, [r0,#+80]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #52]
strh r10, [r0,#+70]
ldrh r10, [r0,#+82]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #54]
strh r8, [r0,#+72]
ldrh r8, [r0,#+84]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #56]
vldrw.u32 Q5, [Q2, #28]
strh r6, [r0,#+74]
ldrh r6, [r0,#+86]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #58]
strh r4, [r0,#+76]
ldrh r4, [r0,#+88]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #60]
strh r14, [r0,#+78]
ldrh r14, [r0,#+90]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #62]
strh r12, [r0,#+80]
ldrh r12, [r0,#+92]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #64]
strh r10, [r0,#+82]
ldrh r10, [r0,#+94]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #66]
strh r8, [r0,#+84]
ldrh r8, [r0,#+96]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #68]
strh r6, [r0,#+86]
ldrh r6, [r0,#+98]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #70]
vldrw.u32 Q6, [Q2, #28]
strh r4, [r0,#+88]
ldrh r4, [r0,#+100]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #72]
strh r14, [r0,#+90]
ldrh r14, [r0,#+102]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #74]
strh r12, [r0,#+92]
ldrh r12, [r0,#+104]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #76]
strh r10, [r0,#+94]
ldrh r10, [r0,#+106]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #78]
strh r8, [r0,#+96]
ldrh r8, [r0,#+108]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #80]
strh r6, [r0,#+98]
ldrh r6, [r0,#+110]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #82]
strh r4, [r0,#+100]
ldrh r4, [r0,#+112]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #84]
vldrw.u32 Q7, [Q2, #28]
strh r14, [r0,#+102]
ldrh r14, [r0,#+114]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #86]
strh r12, [r0,#+104]
ldrh r12, [r0,#+116]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #88]
strh r10, [r0,#+106]
ldrh r10, [r0,#+118]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #90]
strh r8, [r0,#+108]
ldrh r8, [r0,#+120]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #92]
strh r6, [r0,#+110]
ldrh r6, [r0,#+122]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #94]
strh r4, [r0,#+112]
ldrh r4, [r0,#+124]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #96]
strh r14, [r0,#+114]
ldrh r14, [r0,#+126]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #98]
vldrw.u32 Q0, [Q2, #28]
strh r12, [r0,#+116]
ldrh r12, [r0,#+128]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #100]
strh r10, [r0,#+118]
ldrh r10, [r0,#+130]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #102]
strh r8, [r0,#+120]
ldrh r8, [r0,#+132]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #104]
strh r6, [r0,#+122]
ldrh r6, [r0,#+134]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #106]
strh r4, [r0,#+124]
ldrh r4, [r0,#+136]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #108]
strh r14, [r0,#+126]
ldrh r14, [r0,#+138]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #110]
strh r12, [r0,#+128]
ldrh r12, [r0,#+140]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #112]
vldrw.u32 Q1, [Q2, #28]
strh r10, [r0,#+130]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #114]
strh r8, [r0,#+132]
vmladavx.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #116]
strh r6, [r0,#+134]
vmladavx.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #118]
strh r4, [r0,#+136]
vmladavx.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #120]
strh r14, [r0,#+138]
vmladavx.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #122]
strh r12, [r0,#+140]
vmladavx.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #124]
strh r10, [r0,#+142]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #126]
vldrw.u32 Q3, [Q2, #28]
strh r8, [r0,#+144]
vmladavx.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #44]
strh r6, [r0,#+146]
ldrh r6, [r0,#+32]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #-12]
strh r4, [r0,#+148]
ldrh r4, [r0,#+34]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #-10]
strh r14, [r0,#+150]
ldrh r14, [r0,#+36]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #-8]
strh r12, [r0,#+152]
ldrh r12, [r0,#+38]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #-6]
strh r10, [r0,#+154]
ldrh r10, [r0,#+40]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #-4]
strh r8, [r0,#+156]
ldrh r8, [r0,#+42]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #-2]
strh r6, [r0,#+32]
ldrh r6, [r0,#+44]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #0]
vldrw.u32 Q6, [Q2, #44]
strh r4, [r0,#+34]
ldrh r4, [r0,#+46]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #2]
strh r14, [r0,#+36]
ldrh r14, [r0,#+48]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #4]
strh r12, [r0,#+38]
ldrh r12, [r0,#+50]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #6]
strh r10, [r0,#+40]
ldrh r10, [r0,#+52]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #8]
strh r8, [r0,#+42]
ldrh r8, [r0,#+54]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #10]
strh r6, [r0,#+44]
ldrh r6, [r0,#+56]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #12]
strh r4, [r0,#+46]
ldrh r4, [r0,#+58]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #14]
vldrw.u32 Q7, [Q2, #44]
strh r14, [r0,#+48]
ldrh r14, [r0,#+60]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #16]
strh r12, [r0,#+50]
ldrh r12, [r0,#+62]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #18]
strh r10, [r0,#+52]
ldrh r10, [r0,#+64]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #20]
strh r8, [r0,#+54]
ldrh r8, [r0,#+66]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #22]
strh r6, [r0,#+56]
ldrh r6, [r0,#+68]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #24]
strh r4, [r0,#+58]
ldrh r4, [r0,#+70]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #26]
strh r14, [r0,#+60]
ldrh r14, [r0,#+72]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #28]
vldrw.u32 Q0, [Q2, #44]
strh r12, [r0,#+62]
ldrh r12, [r0,#+74]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #30]
strh r10, [r0,#+64]
ldrh r10, [r0,#+76]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #32]
strh r8, [r0,#+66]
ldrh r8, [r0,#+78]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #34]
strh r6, [r0,#+68]
ldrh r6, [r0,#+80]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #36]
strh r4, [r0,#+70]
ldrh r4, [r0,#+82]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #38]
strh r14, [r0,#+72]
ldrh r14, [r0,#+84]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #40]
strh r12, [r0,#+74]
ldrh r12, [r0,#+86]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #42]
vldrw.u32 Q1, [Q2, #44]
strh r10, [r0,#+76]
ldrh r10, [r0,#+88]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #44]
strh r8, [r0,#+78]
ldrh r8, [r0,#+90]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #46]
strh r6, [r0,#+80]
ldrh r6, [r0,#+92]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #48]
strh r4, [r0,#+82]
ldrh r4, [r0,#+94]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #50]
strh r14, [r0,#+84]
ldrh r14, [r0,#+96]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #52]
strh r12, [r0,#+86]
ldrh r12, [r0,#+98]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #54]
strh r10, [r0,#+88]
ldrh r10, [r0,#+100]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #56]
vldrw.u32 Q3, [Q2, #44]
strh r8, [r0,#+90]
ldrh r8, [r0,#+102]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #58]
strh r6, [r0,#+92]
ldrh r6, [r0,#+104]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #60]
strh r4, [r0,#+94]
ldrh r4, [r0,#+106]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #62]
strh r14, [r0,#+96]
ldrh r14, [r0,#+108]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #64]
strh r12, [r0,#+98]
ldrh r12, [r0,#+110]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #66]
strh r10, [r0,#+100]
ldrh r10, [r0,#+112]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #68]
strh r8, [r0,#+102]
ldrh r8, [r0,#+114]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #70]
vldrw.u32 Q4, [Q2, #44]
strh r6, [r0,#+104]
ldrh r6, [r0,#+116]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #72]
strh r4, [r0,#+106]
ldrh r4, [r0,#+118]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #74]
strh r14, [r0,#+108]
ldrh r14, [r0,#+120]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #76]
strh r12, [r0,#+110]
ldrh r12, [r0,#+122]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #78]
strh r10, [r0,#+112]
ldrh r10, [r0,#+124]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #80]
strh r8, [r0,#+114]
ldrh r8, [r0,#+126]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #82]
strh r6, [r0,#+116]
ldrh r6, [r0,#+128]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #84]
vldrw.u32 Q5, [Q2, #44]
strh r4, [r0,#+118]
ldrh r4, [r0,#+130]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #86]
strh r14, [r0,#+120]
ldrh r14, [r0,#+132]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #88]
strh r12, [r0,#+122]
ldrh r12, [r0,#+134]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #90]
strh r10, [r0,#+124]
ldrh r10, [r0,#+136]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #92]
strh r8, [r0,#+126]
ldrh r8, [r0,#+138]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #94]
strh r6, [r0,#+128]
ldrh r6, [r0,#+140]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #96]
strh r4, [r0,#+130]
ldrh r4, [r0,#+142]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #98]
vldrw.u32 Q6, [Q2, #44]
strh r14, [r0,#+132]
ldrh r14, [r0,#+144]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #100]
strh r12, [r0,#+134]
ldrh r12, [r0,#+146]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #102]
strh r10, [r0,#+136]
ldrh r10, [r0,#+148]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #104]
strh r8, [r0,#+138]
ldrh r8, [r0,#+150]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #106]
strh r6, [r0,#+140]
ldrh r6, [r0,#+152]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #108]
strh r4, [r0,#+142]
ldrh r4, [r0,#+154]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #110]
strh r14, [r0,#+144]
ldrh r14, [r0,#+156]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #112]
vldrw.u32 Q7, [Q2, #44]
strh r12, [r0,#+146]
vmladavx.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #114]
strh r10, [r0,#+148]
vmladavx.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #116]
strh r8, [r0,#+150]
vmladavx.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #118]
strh r6, [r0,#+152]
vmladavx.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #120]
strh r4, [r0,#+154]
vmladavx.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #122]
strh r14, [r0,#+156]
vmladavx.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #124]
strh r12, [r0,#+158]
vmladavx.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #126]
vldrw.u32 Q0, [Q2, #44]
strh r10, [r0,#+160]
vmladavx.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #-14]
vldrw.u32 Q3, [Q2, #60]
strh r8, [r0,#+162]
ldrh r8, [r0,#+48]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #-12]
strh r6, [r0,#+164]
ldrh r6, [r0,#+50]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #-10]
strh r4, [r0,#+166]
ldrh r4, [r0,#+52]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #-8]
strh r14, [r0,#+168]
ldrh r14, [r0,#+54]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #-6]
strh r12, [r0,#+170]
ldrh r12, [r0,#+56]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #-4]
strh r10, [r0,#+172]
ldrh r10, [r0,#+58]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #-2]
strh r8, [r0,#+48]
ldrh r8, [r0,#+60]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #0]
vldrw.u32 Q4, [Q2, #60]
strh r6, [r0,#+50]
ldrh r6, [r0,#+62]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #2]
strh r4, [r0,#+52]
ldrh r4, [r0,#+64]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #4]
strh r14, [r0,#+54]
ldrh r14, [r0,#+66]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #6]
strh r12, [r0,#+56]
ldrh r12, [r0,#+68]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #8]
strh r10, [r0,#+58]
ldrh r10, [r0,#+70]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #10]
strh r8, [r0,#+60]
ldrh r8, [r0,#+72]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #12]
strh r6, [r0,#+62]
ldrh r6, [r0,#+74]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #14]
vldrw.u32 Q5, [Q2, #60]
strh r4, [r0,#+64]
ldrh r4, [r0,#+76]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #16]
strh r14, [r0,#+66]
ldrh r14, [r0,#+78]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #18]
strh r12, [r0,#+68]
ldrh r12, [r0,#+80]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #20]
strh r10, [r0,#+70]
ldrh r10, [r0,#+82]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #22]
strh r8, [r0,#+72]
ldrh r8, [r0,#+84]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #24]
strh r6, [r0,#+74]
ldrh r6, [r0,#+86]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #26]
strh r4, [r0,#+76]
ldrh r4, [r0,#+88]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #28]
vldrw.u32 Q6, [Q2, #60]
strh r14, [r0,#+78]
ldrh r14, [r0,#+90]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #30]
strh r12, [r0,#+80]
ldrh r12, [r0,#+92]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #32]
strh r10, [r0,#+82]
ldrh r10, [r0,#+94]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #34]
strh r8, [r0,#+84]
ldrh r8, [r0,#+96]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #36]
strh r6, [r0,#+86]
ldrh r6, [r0,#+98]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #38]
strh r4, [r0,#+88]
ldrh r4, [r0,#+100]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #40]
strh r14, [r0,#+90]
ldrh r14, [r0,#+102]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #42]
vldrw.u32 Q7, [Q2, #60]
strh r12, [r0,#+92]
ldrh r12, [r0,#+104]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #44]
strh r10, [r0,#+94]
ldrh r10, [r0,#+106]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #46]
strh r8, [r0,#+96]
ldrh r8, [r0,#+108]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #48]
strh r6, [r0,#+98]
ldrh r6, [r0,#+110]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #50]
strh r4, [r0,#+100]
ldrh r4, [r0,#+112]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #52]
strh r14, [r0,#+102]
ldrh r14, [r0,#+114]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #54]
strh r12, [r0,#+104]
ldrh r12, [r0,#+116]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #56]
vldrw.u32 Q0, [Q2, #60]
strh r10, [r0,#+106]
ldrh r10, [r0,#+118]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #58]
strh r8, [r0,#+108]
ldrh r8, [r0,#+120]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #60]
strh r6, [r0,#+110]
ldrh r6, [r0,#+122]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #62]
strh r4, [r0,#+112]
ldrh r4, [r0,#+124]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #64]
strh r14, [r0,#+114]
ldrh r14, [r0,#+126]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #66]
strh r12, [r0,#+116]
ldrh r12, [r0,#+128]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #68]
strh r10, [r0,#+118]
ldrh r10, [r0,#+130]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #70]
vldrw.u32 Q1, [Q2, #60]
strh r8, [r0,#+120]
ldrh r8, [r0,#+132]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #72]
strh r6, [r0,#+122]
ldrh r6, [r0,#+134]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #74]
strh r4, [r0,#+124]
ldrh r4, [r0,#+136]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #76]
strh r14, [r0,#+126]
ldrh r14, [r0,#+138]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #78]
strh r12, [r0,#+128]
ldrh r12, [r0,#+140]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #80]
strh r10, [r0,#+130]
ldrh r10, [r0,#+142]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #82]
strh r8, [r0,#+132]
ldrh r8, [r0,#+144]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #84]
vldrw.u32 Q3, [Q2, #60]
strh r6, [r0,#+134]
ldrh r6, [r0,#+146]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #86]
strh r4, [r0,#+136]
ldrh r4, [r0,#+148]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #88]
strh r14, [r0,#+138]
ldrh r14, [r0,#+150]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #90]
strh r12, [r0,#+140]
ldrh r12, [r0,#+152]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #92]
strh r10, [r0,#+142]
ldrh r10, [r0,#+154]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #94]
strh r8, [r0,#+144]
ldrh r8, [r0,#+156]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #96]
strh r6, [r0,#+146]
ldrh r6, [r0,#+158]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #98]
vldrw.u32 Q4, [Q2, #60]
strh r4, [r0,#+148]
ldrh r4, [r0,#+160]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #100]
strh r14, [r0,#+150]
ldrh r14, [r0,#+162]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #102]
strh r12, [r0,#+152]
ldrh r12, [r0,#+164]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #104]
strh r10, [r0,#+154]
ldrh r10, [r0,#+166]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #106]
strh r8, [r0,#+156]
ldrh r8, [r0,#+168]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #108]
strh r6, [r0,#+158]
ldrh r6, [r0,#+170]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #110]
strh r4, [r0,#+160]
ldrh r4, [r0,#+172]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #112]
vldrw.u32 Q5, [Q2, #60]
strh r14, [r0,#+162]
vmladavx.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #114]
strh r12, [r0,#+164]
vmladavx.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #116]
strh r10, [r0,#+166]
vmladavx.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #118]
strh r8, [r0,#+168]
vmladavx.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #120]
strh r6, [r0,#+170]
vmladavx.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #122]
strh r4, [r0,#+172]
vmladavx.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #124]
strh r14, [r0,#+174]
vmladavx.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #126]
vldrw.u32 Q6, [Q2, #60]
strh r12, [r0,#+176]
vmladavx.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #-14]
vldrw.u32 Q0, [Q2, #76]
strh r10, [r0,#+178]
ldrh r10, [r0,#+64]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #-12]
strh r8, [r0,#+180]
ldrh r8, [r0,#+66]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #-10]
strh r6, [r0,#+182]
ldrh r6, [r0,#+68]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #-8]
strh r4, [r0,#+184]
ldrh r4, [r0,#+70]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #-6]
strh r14, [r0,#+186]
ldrh r14, [r0,#+72]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #-4]
strh r12, [r0,#+188]
ldrh r12, [r0,#+74]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #-2]
strh r10, [r0,#+64]
ldrh r10, [r0,#+76]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #0]
vldrw.u32 Q1, [Q2, #76]
strh r8, [r0,#+66]
ldrh r8, [r0,#+78]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #2]
strh r6, [r0,#+68]
ldrh r6, [r0,#+80]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #4]
strh r4, [r0,#+70]
ldrh r4, [r0,#+82]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #6]
strh r14, [r0,#+72]
ldrh r14, [r0,#+84]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #8]
strh r12, [r0,#+74]
ldrh r12, [r0,#+86]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #10]
strh r10, [r0,#+76]
ldrh r10, [r0,#+88]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #12]
strh r8, [r0,#+78]
ldrh r8, [r0,#+90]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #14]
vldrw.u32 Q3, [Q2, #76]
strh r6, [r0,#+80]
ldrh r6, [r0,#+92]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #16]
strh r4, [r0,#+82]
ldrh r4, [r0,#+94]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #18]
strh r14, [r0,#+84]
ldrh r14, [r0,#+96]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #20]
strh r12, [r0,#+86]
ldrh r12, [r0,#+98]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #22]
strh r10, [r0,#+88]
ldrh r10, [r0,#+100]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #24]
strh r8, [r0,#+90]
ldrh r8, [r0,#+102]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #26]
strh r6, [r0,#+92]
ldrh r6, [r0,#+104]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #28]
vldrw.u32 Q4, [Q2, #76]
strh r4, [r0,#+94]
ldrh r4, [r0,#+106]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #30]
strh r14, [r0,#+96]
ldrh r14, [r0,#+108]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #32]
strh r12, [r0,#+98]
ldrh r12, [r0,#+110]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #34]
strh r10, [r0,#+100]
ldrh r10, [r0,#+112]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #36]
strh r8, [r0,#+102]
ldrh r8, [r0,#+114]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #38]
strh r6, [r0,#+104]
ldrh r6, [r0,#+116]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #40]
strh r4, [r0,#+106]
ldrh r4, [r0,#+118]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #42]
vldrw.u32 Q5, [Q2, #76]
strh r14, [r0,#+108]
ldrh r14, [r0,#+120]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #44]
strh r12, [r0,#+110]
ldrh r12, [r0,#+122]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #46]
strh r10, [r0,#+112]
ldrh r10, [r0,#+124]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #48]
strh r8, [r0,#+114]
ldrh r8, [r0,#+126]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #50]
strh r6, [r0,#+116]
ldrh r6, [r0,#+128]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #52]
strh r4, [r0,#+118]
ldrh r4, [r0,#+130]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #54]
strh r14, [r0,#+120]
ldrh r14, [r0,#+132]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #56]
vldrw.u32 Q6, [Q2, #76]
strh r12, [r0,#+122]
ldrh r12, [r0,#+134]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #58]
strh r10, [r0,#+124]
ldrh r10, [r0,#+136]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #60]
strh r8, [r0,#+126]
ldrh r8, [r0,#+138]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #62]
strh r6, [r0,#+128]
ldrh r6, [r0,#+140]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #64]
strh r4, [r0,#+130]
ldrh r4, [r0,#+142]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #66]
strh r14, [r0,#+132]
ldrh r14, [r0,#+144]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #68]
strh r12, [r0,#+134]
ldrh r12, [r0,#+146]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #70]
vldrw.u32 Q7, [Q2, #76]
strh r10, [r0,#+136]
ldrh r10, [r0,#+148]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #72]
strh r8, [r0,#+138]
ldrh r8, [r0,#+150]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #74]
strh r6, [r0,#+140]
ldrh r6, [r0,#+152]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #76]
strh r4, [r0,#+142]
ldrh r4, [r0,#+154]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #78]
strh r14, [r0,#+144]
ldrh r14, [r0,#+156]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #80]
strh r12, [r0,#+146]
ldrh r12, [r0,#+158]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #82]
strh r10, [r0,#+148]
ldrh r10, [r0,#+160]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #84]
vldrw.u32 Q0, [Q2, #76]
strh r8, [r0,#+150]
ldrh r8, [r0,#+162]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #86]
strh r6, [r0,#+152]
ldrh r6, [r0,#+164]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #88]
strh r4, [r0,#+154]
ldrh r4, [r0,#+166]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #90]
strh r14, [r0,#+156]
ldrh r14, [r0,#+168]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #92]
strh r12, [r0,#+158]
ldrh r12, [r0,#+170]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #94]
strh r10, [r0,#+160]
ldrh r10, [r0,#+172]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #96]
strh r8, [r0,#+162]
ldrh r8, [r0,#+174]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #98]
vldrw.u32 Q1, [Q2, #76]
strh r6, [r0,#+164]
ldrh r6, [r0,#+176]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #100]
strh r4, [r0,#+166]
ldrh r4, [r0,#+178]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #102]
strh r14, [r0,#+168]
ldrh r14, [r0,#+180]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #104]
strh r12, [r0,#+170]
ldrh r12, [r0,#+182]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #106]
strh r10, [r0,#+172]
ldrh r10, [r0,#+184]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #108]
strh r8, [r0,#+174]
ldrh r8, [r0,#+186]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #110]
strh r6, [r0,#+176]
ldrh r6, [r0,#+188]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #112]
vldrw.u32 Q3, [Q2, #76]
strh r4, [r0,#+178]
vmladavx.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #114]
strh r14, [r0,#+180]
vmladavx.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #116]
strh r12, [r0,#+182]
vmladavx.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #118]
strh r10, [r0,#+184]
vmladavx.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #120]
strh r8, [r0,#+186]
vmladavx.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #122]
strh r6, [r0,#+188]
vmladavx.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #124]
strh r4, [r0,#+190]
vmladavx.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #126]
vldrw.u32 Q4, [Q2, #76]
strh r14, [r0,#+192]
vmladavx.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #-14]
vldrw.u32 Q6, [Q2, #92]
strh r12, [r0,#+194]
ldrh r12, [r0,#+80]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #-12]
strh r10, [r0,#+196]
ldrh r10, [r0,#+82]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #-10]
strh r8, [r0,#+198]
ldrh r8, [r0,#+84]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #-8]
strh r6, [r0,#+200]
ldrh r6, [r0,#+86]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #-6]
strh r4, [r0,#+202]
ldrh r4, [r0,#+88]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #-4]
strh r14, [r0,#+204]
ldrh r14, [r0,#+90]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #-2]
strh r12, [r0,#+80]
ldrh r12, [r0,#+92]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #0]
vldrw.u32 Q7, [Q2, #92]
strh r10, [r0,#+82]
ldrh r10, [r0,#+94]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #2]
strh r8, [r0,#+84]
ldrh r8, [r0,#+96]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #4]
strh r6, [r0,#+86]
ldrh r6, [r0,#+98]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #6]
strh r4, [r0,#+88]
ldrh r4, [r0,#+100]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #8]
strh r14, [r0,#+90]
ldrh r14, [r0,#+102]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #10]
strh r12, [r0,#+92]
ldrh r12, [r0,#+104]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #12]
strh r10, [r0,#+94]
ldrh r10, [r0,#+106]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #14]
vldrw.u32 Q0, [Q2, #92]
strh r8, [r0,#+96]
ldrh r8, [r0,#+108]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #16]
strh r6, [r0,#+98]
ldrh r6, [r0,#+110]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #18]
strh r4, [r0,#+100]
ldrh r4, [r0,#+112]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #20]
strh r14, [r0,#+102]
ldrh r14, [r0,#+114]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #22]
strh r12, [r0,#+104]
ldrh r12, [r0,#+116]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #24]
strh r10, [r0,#+106]
ldrh r10, [r0,#+118]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #26]
strh r8, [r0,#+108]
ldrh r8, [r0,#+120]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #28]
vldrw.u32 Q1, [Q2, #92]
strh r6, [r0,#+110]
ldrh r6, [r0,#+122]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #30]
strh r4, [r0,#+112]
ldrh r4, [r0,#+124]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #32]
strh r14, [r0,#+114]
ldrh r14, [r0,#+126]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #34]
strh r12, [r0,#+116]
ldrh r12, [r0,#+128]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #36]
strh r10, [r0,#+118]
ldrh r10, [r0,#+130]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #38]
strh r8, [r0,#+120]
ldrh r8, [r0,#+132]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #40]
strh r6, [r0,#+122]
ldrh r6, [r0,#+134]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #42]
vldrw.u32 Q3, [Q2, #92]
strh r4, [r0,#+124]
ldrh r4, [r0,#+136]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #44]
strh r14, [r0,#+126]
ldrh r14, [r0,#+138]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #46]
strh r12, [r0,#+128]
ldrh r12, [r0,#+140]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #48]
strh r10, [r0,#+130]
ldrh r10, [r0,#+142]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #50]
strh r8, [r0,#+132]
ldrh r8, [r0,#+144]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #52]
strh r6, [r0,#+134]
ldrh r6, [r0,#+146]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #54]
strh r4, [r0,#+136]
ldrh r4, [r0,#+148]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #56]
vldrw.u32 Q4, [Q2, #92]
strh r14, [r0,#+138]
ldrh r14, [r0,#+150]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #58]
strh r12, [r0,#+140]
ldrh r12, [r0,#+152]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #60]
strh r10, [r0,#+142]
ldrh r10, [r0,#+154]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #62]
strh r8, [r0,#+144]
ldrh r8, [r0,#+156]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #64]
strh r6, [r0,#+146]
ldrh r6, [r0,#+158]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #66]
strh r4, [r0,#+148]
ldrh r4, [r0,#+160]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #68]
strh r14, [r0,#+150]
ldrh r14, [r0,#+162]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #70]
vldrw.u32 Q5, [Q2, #92]
strh r12, [r0,#+152]
ldrh r12, [r0,#+164]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #72]
strh r10, [r0,#+154]
ldrh r10, [r0,#+166]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #74]
strh r8, [r0,#+156]
ldrh r8, [r0,#+168]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #76]
strh r6, [r0,#+158]
ldrh r6, [r0,#+170]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #78]
strh r4, [r0,#+160]
ldrh r4, [r0,#+172]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #80]
strh r14, [r0,#+162]
ldrh r14, [r0,#+174]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #82]
strh r12, [r0,#+164]
ldrh r12, [r0,#+176]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #84]
vldrw.u32 Q6, [Q2, #92]
strh r10, [r0,#+166]
ldrh r10, [r0,#+178]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #86]
strh r8, [r0,#+168]
ldrh r8, [r0,#+180]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #88]
strh r6, [r0,#+170]
ldrh r6, [r0,#+182]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #90]
strh r4, [r0,#+172]
ldrh r4, [r0,#+184]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #92]
strh r14, [r0,#+174]
ldrh r14, [r0,#+186]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #94]
strh r12, [r0,#+176]
ldrh r12, [r0,#+188]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #96]
strh r10, [r0,#+178]
ldrh r10, [r0,#+190]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #98]
vldrw.u32 Q7, [Q2, #92]
strh r8, [r0,#+180]
ldrh r8, [r0,#+192]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #100]
strh r6, [r0,#+182]
ldrh r6, [r0,#+194]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #102]
strh r4, [r0,#+184]
ldrh r4, [r0,#+196]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #104]
strh r14, [r0,#+186]
ldrh r14, [r0,#+198]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #106]
strh r12, [r0,#+188]
ldrh r12, [r0,#+200]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #108]
strh r10, [r0,#+190]
ldrh r10, [r0,#+202]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #110]
strh r8, [r0,#+192]
ldrh r8, [r0,#+204]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #112]
vldrw.u32 Q0, [Q2, #92]
strh r6, [r0,#+194]
vmladavx.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #114]
strh r4, [r0,#+196]
vmladavx.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #116]
strh r14, [r0,#+198]
vmladavx.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #118]
strh r12, [r0,#+200]
vmladavx.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #120]
strh r10, [r0,#+202]
vmladavx.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #122]
strh r8, [r0,#+204]
vmladavx.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #124]
strh r6, [r0,#+206]
vmladavx.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #126]
vldrw.u32 Q1, [Q2, #92]
strh r4, [r0,#+208]
vmladavx.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #-14]
vldrw.u32 Q4, [Q2, #108]
strh r14, [r0,#+210]
ldrh r14, [r0,#+96]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #-12]
strh r12, [r0,#+212]
ldrh r12, [r0,#+98]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #-10]
strh r10, [r0,#+214]
ldrh r10, [r0,#+100]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #-8]
strh r8, [r0,#+216]
ldrh r8, [r0,#+102]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #-6]
strh r6, [r0,#+218]
ldrh r6, [r0,#+104]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #-4]
strh r4, [r0,#+220]
ldrh r4, [r0,#+106]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #-2]
strh r14, [r0,#+96]
ldrh r14, [r0,#+108]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #0]
vldrw.u32 Q5, [Q2, #108]
strh r12, [r0,#+98]
ldrh r12, [r0,#+110]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #2]
strh r10, [r0,#+100]
ldrh r10, [r0,#+112]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #4]
strh r8, [r0,#+102]
ldrh r8, [r0,#+114]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #6]
strh r6, [r0,#+104]
ldrh r6, [r0,#+116]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #8]
strh r4, [r0,#+106]
ldrh r4, [r0,#+118]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #10]
strh r14, [r0,#+108]
ldrh r14, [r0,#+120]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #12]
strh r12, [r0,#+110]
ldrh r12, [r0,#+122]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #14]
vldrw.u32 Q6, [Q2, #108]
strh r10, [r0,#+112]
ldrh r10, [r0,#+124]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #16]
strh r8, [r0,#+114]
ldrh r8, [r0,#+126]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #18]
strh r6, [r0,#+116]
ldrh r6, [r0,#+128]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #20]
strh r4, [r0,#+118]
ldrh r4, [r0,#+130]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #22]
strh r14, [r0,#+120]
ldrh r14, [r0,#+132]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #24]
strh r12, [r0,#+122]
ldrh r12, [r0,#+134]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #26]
strh r10, [r0,#+124]
ldrh r10, [r0,#+136]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #28]
vldrw.u32 Q7, [Q2, #108]
strh r8, [r0,#+126]
ldrh r8, [r0,#+138]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #30]
strh r6, [r0,#+128]
ldrh r6, [r0,#+140]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #32]
strh r4, [r0,#+130]
ldrh r4, [r0,#+142]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #34]
strh r14, [r0,#+132]
ldrh r14, [r0,#+144]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #36]
strh r12, [r0,#+134]
ldrh r12, [r0,#+146]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #38]
strh r10, [r0,#+136]
ldrh r10, [r0,#+148]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #40]
strh r8, [r0,#+138]
ldrh r8, [r0,#+150]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #42]
vldrw.u32 Q0, [Q2, #108]
strh r6, [r0,#+140]
ldrh r6, [r0,#+152]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #44]
strh r4, [r0,#+142]
ldrh r4, [r0,#+154]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #46]
strh r14, [r0,#+144]
ldrh r14, [r0,#+156]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #48]
strh r12, [r0,#+146]
ldrh r12, [r0,#+158]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #50]
strh r10, [r0,#+148]
ldrh r10, [r0,#+160]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #52]
strh r8, [r0,#+150]
ldrh r8, [r0,#+162]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #54]
strh r6, [r0,#+152]
ldrh r6, [r0,#+164]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #56]
vldrw.u32 Q1, [Q2, #108]
strh r4, [r0,#+154]
ldrh r4, [r0,#+166]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #58]
strh r14, [r0,#+156]
ldrh r14, [r0,#+168]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #60]
strh r12, [r0,#+158]
ldrh r12, [r0,#+170]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #62]
strh r10, [r0,#+160]
ldrh r10, [r0,#+172]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #64]
strh r8, [r0,#+162]
ldrh r8, [r0,#+174]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #66]
strh r6, [r0,#+164]
ldrh r6, [r0,#+176]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #68]
strh r4, [r0,#+166]
ldrh r4, [r0,#+178]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #70]
vldrw.u32 Q3, [Q2, #108]
strh r14, [r0,#+168]
ldrh r14, [r0,#+180]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #72]
strh r12, [r0,#+170]
ldrh r12, [r0,#+182]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #74]
strh r10, [r0,#+172]
ldrh r10, [r0,#+184]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #76]
strh r8, [r0,#+174]
ldrh r8, [r0,#+186]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #78]
strh r6, [r0,#+176]
ldrh r6, [r0,#+188]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #80]
strh r4, [r0,#+178]
ldrh r4, [r0,#+190]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #82]
strh r14, [r0,#+180]
ldrh r14, [r0,#+192]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #84]
vldrw.u32 Q4, [Q2, #108]
strh r12, [r0,#+182]
ldrh r12, [r0,#+194]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #86]
strh r10, [r0,#+184]
ldrh r10, [r0,#+196]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #88]
strh r8, [r0,#+186]
ldrh r8, [r0,#+198]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #90]
strh r6, [r0,#+188]
ldrh r6, [r0,#+200]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #92]
strh r4, [r0,#+190]
ldrh r4, [r0,#+202]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #94]
strh r14, [r0,#+192]
ldrh r14, [r0,#+204]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #96]
strh r12, [r0,#+194]
ldrh r12, [r0,#+206]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #98]
vldrw.u32 Q5, [Q2, #108]
strh r10, [r0,#+196]
ldrh r10, [r0,#+208]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #100]
strh r8, [r0,#+198]
ldrh r8, [r0,#+210]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #102]
strh r6, [r0,#+200]
ldrh r6, [r0,#+212]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #104]
strh r4, [r0,#+202]
ldrh r4, [r0,#+214]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #106]
strh r14, [r0,#+204]
ldrh r14, [r0,#+216]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #108]
strh r12, [r0,#+206]
ldrh r12, [r0,#+218]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #110]
strh r10, [r0,#+208]
ldrh r10, [r0,#+220]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #112]
vldrw.u32 Q6, [Q2, #108]
strh r8, [r0,#+210]
vmladavx.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #114]
strh r6, [r0,#+212]
vmladavx.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #116]
strh r4, [r0,#+214]
vmladavx.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #118]
strh r14, [r0,#+216]
vmladavx.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #120]
strh r12, [r0,#+218]
vmladavx.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #122]
strh r10, [r0,#+220]
vmladavx.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #124]
strh r8, [r0,#+222]
vmladavx.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #126]
vldrw.u32 Q7, [Q2, #108]
strh r6, [r0,#+224]
vmladavx.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #-14]
vldrw.u32 Q1, [Q2, #124]
strh r4, [r0,#+226]
ldrh r4, [r0,#+112]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #-12]
strh r14, [r0,#+228]
ldrh r14, [r0,#+114]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #-10]
strh r12, [r0,#+230]
ldrh r12, [r0,#+116]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #-8]
strh r10, [r0,#+232]
ldrh r10, [r0,#+118]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #-6]
strh r8, [r0,#+234]
ldrh r8, [r0,#+120]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #-4]
strh r6, [r0,#+236]
ldrh r6, [r0,#+122]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #-2]
strh r4, [r0,#+112]
ldrh r4, [r0,#+124]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #0]
vldrw.u32 Q3, [Q2, #124]
strh r14, [r0,#+114]
ldrh r14, [r0,#+126]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #2]
strh r12, [r0,#+116]
ldrh r12, [r0,#+128]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #4]
strh r10, [r0,#+118]
ldrh r10, [r0,#+130]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #6]
strh r8, [r0,#+120]
ldrh r8, [r0,#+132]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #8]
strh r6, [r0,#+122]
ldrh r6, [r0,#+134]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #10]
strh r4, [r0,#+124]
ldrh r4, [r0,#+136]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #12]
strh r14, [r0,#+126]
ldrh r14, [r0,#+138]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #14]
vldrw.u32 Q4, [Q2, #124]
strh r12, [r0,#+128]
ldrh r12, [r0,#+140]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #16]
strh r10, [r0,#+130]
ldrh r10, [r0,#+142]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #18]
strh r8, [r0,#+132]
ldrh r8, [r0,#+144]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #20]
strh r6, [r0,#+134]
ldrh r6, [r0,#+146]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #22]
strh r4, [r0,#+136]
ldrh r4, [r0,#+148]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #24]
strh r14, [r0,#+138]
ldrh r14, [r0,#+150]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #26]
strh r12, [r0,#+140]
ldrh r12, [r0,#+152]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #28]
vldrw.u32 Q5, [Q2, #124]
strh r10, [r0,#+142]
ldrh r10, [r0,#+154]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #30]
strh r8, [r0,#+144]
ldrh r8, [r0,#+156]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #32]
strh r6, [r0,#+146]
ldrh r6, [r0,#+158]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #34]
strh r4, [r0,#+148]
ldrh r4, [r0,#+160]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #36]
strh r14, [r0,#+150]
ldrh r14, [r0,#+162]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #38]
strh r12, [r0,#+152]
ldrh r12, [r0,#+164]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #40]
strh r10, [r0,#+154]
ldrh r10, [r0,#+166]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #42]
vldrw.u32 Q6, [Q2, #124]
strh r8, [r0,#+156]
ldrh r8, [r0,#+168]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #44]
strh r6, [r0,#+158]
ldrh r6, [r0,#+170]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #46]
strh r4, [r0,#+160]
ldrh r4, [r0,#+172]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #48]
strh r14, [r0,#+162]
ldrh r14, [r0,#+174]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #50]
strh r12, [r0,#+164]
ldrh r12, [r0,#+176]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #52]
strh r10, [r0,#+166]
ldrh r10, [r0,#+178]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #54]
strh r8, [r0,#+168]
ldrh r8, [r0,#+180]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #56]
vldrw.u32 Q7, [Q2, #124]
strh r6, [r0,#+170]
ldrh r6, [r0,#+182]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #58]
strh r4, [r0,#+172]
ldrh r4, [r0,#+184]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #60]
strh r14, [r0,#+174]
ldrh r14, [r0,#+186]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #62]
strh r12, [r0,#+176]
ldrh r12, [r0,#+188]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #64]
strh r10, [r0,#+178]
ldrh r10, [r0,#+190]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #66]
strh r8, [r0,#+180]
ldrh r8, [r0,#+192]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #68]
strh r6, [r0,#+182]
ldrh r6, [r0,#+194]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #70]
vldrw.u32 Q0, [Q2, #124]
strh r4, [r0,#+184]
ldrh r4, [r0,#+196]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #72]
strh r14, [r0,#+186]
ldrh r14, [r0,#+198]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #74]
strh r12, [r0,#+188]
ldrh r12, [r0,#+200]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #76]
strh r10, [r0,#+190]
ldrh r10, [r0,#+202]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #78]
strh r8, [r0,#+192]
ldrh r8, [r0,#+204]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #80]
strh r6, [r0,#+194]
ldrh r6, [r0,#+206]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #82]
strh r4, [r0,#+196]
ldrh r4, [r0,#+208]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #84]
vldrw.u32 Q1, [Q2, #124]
strh r14, [r0,#+198]
ldrh r14, [r0,#+210]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #86]
strh r12, [r0,#+200]
ldrh r12, [r0,#+212]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #88]
strh r10, [r0,#+202]
ldrh r10, [r0,#+214]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #90]
strh r8, [r0,#+204]
ldrh r8, [r0,#+216]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #92]
strh r6, [r0,#+206]
ldrh r6, [r0,#+218]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #94]
strh r4, [r0,#+208]
ldrh r4, [r0,#+220]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #96]
strh r14, [r0,#+210]
ldrh r14, [r0,#+222]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #98]
vldrw.u32 Q3, [Q2, #124]
strh r12, [r0,#+212]
ldrh r12, [r0,#+224]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #100]
strh r10, [r0,#+214]
ldrh r10, [r0,#+226]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #102]
strh r8, [r0,#+216]
ldrh r8, [r0,#+228]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #104]
strh r6, [r0,#+218]
ldrh r6, [r0,#+230]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #106]
strh r4, [r0,#+220]
ldrh r4, [r0,#+232]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #108]
strh r14, [r0,#+222]
ldrh r14, [r0,#+234]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #110]
strh r12, [r0,#+224]
ldrh r12, [r0,#+236]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #112]
vldrw.u32 Q4, [Q2, #124]
strh r10, [r0,#+226]
vmladavx.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #114]
strh r8, [r0,#+228]
vmladavx.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #116]
strh r6, [r0,#+230]
vmladavx.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #118]
strh r4, [r0,#+232]
vmladavx.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #120]
strh r14, [r0,#+234]
vmladavx.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #122]
strh r12, [r0,#+236]
vmladavx.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #124]
strh r10, [r0,#+238]
vmladavx.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #126]
vldrw.u32 Q5, [Q2, #124]
strh r8, [r0,#+240]
vmladavx.s16 r8, Q4, Q5
strh r6, [r0,#+242]
strh r4, [r0,#+244]
strh r14, [r0,#+246]
strh r12, [r0,#+248]
strh r10, [r0,#+250]
strh r8, [r0,#+252]
pop {r4-r11,lr}
bx lr