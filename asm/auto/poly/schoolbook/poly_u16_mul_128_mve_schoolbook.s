.syntax unified
.type poly_u16_mul_128_schoolbook_mve, %function
.global poly_u16_mul_128_schoolbook_mve
poly_u16_mul_128_schoolbook_mve:
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
vldrh.u16 Q6, [r1, #128]
strh r4, [r0,#+130]
vmladavx.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #130]
strh r14, [r0,#+132]
vmladavx.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #132]
strh r12, [r0,#+134]
vmladavx.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #134]
strh r10, [r0,#+136]
vmladavx.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #136]
strh r8, [r0,#+138]
vmladavx.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #138]
strh r6, [r0,#+140]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #140]
vldrw.u32 Q6, [Q2, #12]
strh r4, [r0,#+142]
vmladavx.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #142]
strh r14, [r0,#+144]
vmladavx.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #144]
strh r12, [r0,#+146]
vmladavx.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #146]
strh r10, [r0,#+148]
vmladavx.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #148]
strh r8, [r0,#+150]
vmladavx.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #150]
strh r6, [r0,#+152]
vmladavx.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #152]
strh r4, [r0,#+154]
vmladavx.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #154]
vldrw.u32 Q7, [Q2, #12]
strh r14, [r0,#+156]
vmladavx.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #156]
strh r12, [r0,#+158]
vmladavx.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #158]
strh r10, [r0,#+160]
vmladavx.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #160]
strh r8, [r0,#+162]
vmladavx.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #162]
strh r6, [r0,#+164]
vmladavx.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #164]
strh r4, [r0,#+166]
vmladavx.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #166]
strh r14, [r0,#+168]
vmladavx.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #168]
vldrw.u32 Q0, [Q2, #12]
strh r12, [r0,#+170]
vmladavx.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #170]
strh r10, [r0,#+172]
vmladavx.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #172]
strh r8, [r0,#+174]
vmladavx.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #174]
strh r6, [r0,#+176]
vmladavx.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #176]
strh r4, [r0,#+178]
vmladavx.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #178]
strh r14, [r0,#+180]
vmladavx.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #180]
strh r12, [r0,#+182]
vmladavx.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #182]
vldrw.u32 Q1, [Q2, #12]
strh r10, [r0,#+184]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #184]
strh r8, [r0,#+186]
vmladavx.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #186]
strh r6, [r0,#+188]
vmladavx.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #188]
strh r4, [r0,#+190]
vmladavx.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #190]
strh r14, [r0,#+192]
vmladavx.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #192]
strh r12, [r0,#+194]
vmladavx.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #194]
strh r10, [r0,#+196]
vmladavx.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #196]
vldrw.u32 Q3, [Q2, #12]
strh r8, [r0,#+198]
vmladavx.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #198]
strh r6, [r0,#+200]
vmladavx.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #200]
strh r4, [r0,#+202]
vmladavx.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #202]
strh r14, [r0,#+204]
vmladavx.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #204]
strh r12, [r0,#+206]
vmladavx.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #206]
strh r10, [r0,#+208]
vmladavx.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #208]
strh r8, [r0,#+210]
vmladavx.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #210]
vldrw.u32 Q4, [Q2, #12]
strh r6, [r0,#+212]
vmladavx.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #212]
strh r4, [r0,#+214]
vmladavx.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #214]
strh r14, [r0,#+216]
vmladavx.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #216]
strh r12, [r0,#+218]
vmladavx.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #218]
strh r10, [r0,#+220]
vmladavx.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #220]
strh r8, [r0,#+222]
vmladavx.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #222]
strh r6, [r0,#+224]
vmladavx.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #224]
vldrw.u32 Q5, [Q2, #12]
strh r4, [r0,#+226]
vmladavx.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #226]
strh r14, [r0,#+228]
vmladavx.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #228]
strh r12, [r0,#+230]
vmladavx.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #230]
strh r10, [r0,#+232]
vmladavx.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #232]
strh r8, [r0,#+234]
vmladavx.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #234]
strh r6, [r0,#+236]
vmladavx.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #236]
strh r4, [r0,#+238]
vmladavx.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #238]
vldrw.u32 Q6, [Q2, #12]
strh r14, [r0,#+240]
vmladavx.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #240]
strh r12, [r0,#+242]
vmladavx.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #242]
strh r10, [r0,#+244]
vmladavx.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #244]
strh r8, [r0,#+246]
vmladavx.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #246]
strh r6, [r0,#+248]
vmladavx.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #248]
strh r4, [r0,#+250]
vmladavx.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #250]
strh r14, [r0,#+252]
vmladavx.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #252]
vldrw.u32 Q7, [Q2, #12]
strh r12, [r0,#+254]
vmladavx.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #254]
strh r10, [r0,#+256]
vmladavx.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #-14]
vldrw.u32 Q3, [Q2, #28]
strh r8, [r0,#+258]
ldrh r8, [r0,#+16]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #-12]
strh r6, [r0,#+260]
ldrh r6, [r0,#+18]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #-10]
strh r4, [r0,#+262]
ldrh r4, [r0,#+20]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #-8]
strh r14, [r0,#+264]
ldrh r14, [r0,#+22]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #-6]
strh r12, [r0,#+266]
ldrh r12, [r0,#+24]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #-4]
strh r10, [r0,#+268]
ldrh r10, [r0,#+26]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #-2]
strh r8, [r0,#+16]
ldrh r8, [r0,#+28]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #0]
vldrw.u32 Q4, [Q2, #28]
strh r6, [r0,#+18]
ldrh r6, [r0,#+30]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #2]
strh r4, [r0,#+20]
ldrh r4, [r0,#+32]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #4]
strh r14, [r0,#+22]
ldrh r14, [r0,#+34]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #6]
strh r12, [r0,#+24]
ldrh r12, [r0,#+36]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #8]
strh r10, [r0,#+26]
ldrh r10, [r0,#+38]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #10]
strh r8, [r0,#+28]
ldrh r8, [r0,#+40]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #12]
strh r6, [r0,#+30]
ldrh r6, [r0,#+42]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #14]
vldrw.u32 Q5, [Q2, #28]
strh r4, [r0,#+32]
ldrh r4, [r0,#+44]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #16]
strh r14, [r0,#+34]
ldrh r14, [r0,#+46]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #18]
strh r12, [r0,#+36]
ldrh r12, [r0,#+48]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #20]
strh r10, [r0,#+38]
ldrh r10, [r0,#+50]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #22]
strh r8, [r0,#+40]
ldrh r8, [r0,#+52]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #24]
strh r6, [r0,#+42]
ldrh r6, [r0,#+54]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #26]
strh r4, [r0,#+44]
ldrh r4, [r0,#+56]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #28]
vldrw.u32 Q6, [Q2, #28]
strh r14, [r0,#+46]
ldrh r14, [r0,#+58]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #30]
strh r12, [r0,#+48]
ldrh r12, [r0,#+60]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #32]
strh r10, [r0,#+50]
ldrh r10, [r0,#+62]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #34]
strh r8, [r0,#+52]
ldrh r8, [r0,#+64]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #36]
strh r6, [r0,#+54]
ldrh r6, [r0,#+66]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #38]
strh r4, [r0,#+56]
ldrh r4, [r0,#+68]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #40]
strh r14, [r0,#+58]
ldrh r14, [r0,#+70]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #42]
vldrw.u32 Q7, [Q2, #28]
strh r12, [r0,#+60]
ldrh r12, [r0,#+72]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #44]
strh r10, [r0,#+62]
ldrh r10, [r0,#+74]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #46]
strh r8, [r0,#+64]
ldrh r8, [r0,#+76]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #48]
strh r6, [r0,#+66]
ldrh r6, [r0,#+78]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #50]
strh r4, [r0,#+68]
ldrh r4, [r0,#+80]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #52]
strh r14, [r0,#+70]
ldrh r14, [r0,#+82]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #54]
strh r12, [r0,#+72]
ldrh r12, [r0,#+84]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #56]
vldrw.u32 Q0, [Q2, #28]
strh r10, [r0,#+74]
ldrh r10, [r0,#+86]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #58]
strh r8, [r0,#+76]
ldrh r8, [r0,#+88]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #60]
strh r6, [r0,#+78]
ldrh r6, [r0,#+90]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #62]
strh r4, [r0,#+80]
ldrh r4, [r0,#+92]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #64]
strh r14, [r0,#+82]
ldrh r14, [r0,#+94]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #66]
strh r12, [r0,#+84]
ldrh r12, [r0,#+96]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #68]
strh r10, [r0,#+86]
ldrh r10, [r0,#+98]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #70]
vldrw.u32 Q1, [Q2, #28]
strh r8, [r0,#+88]
ldrh r8, [r0,#+100]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #72]
strh r6, [r0,#+90]
ldrh r6, [r0,#+102]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #74]
strh r4, [r0,#+92]
ldrh r4, [r0,#+104]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #76]
strh r14, [r0,#+94]
ldrh r14, [r0,#+106]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #78]
strh r12, [r0,#+96]
ldrh r12, [r0,#+108]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #80]
strh r10, [r0,#+98]
ldrh r10, [r0,#+110]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #82]
strh r8, [r0,#+100]
ldrh r8, [r0,#+112]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #84]
vldrw.u32 Q3, [Q2, #28]
strh r6, [r0,#+102]
ldrh r6, [r0,#+114]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #86]
strh r4, [r0,#+104]
ldrh r4, [r0,#+116]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #88]
strh r14, [r0,#+106]
ldrh r14, [r0,#+118]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #90]
strh r12, [r0,#+108]
ldrh r12, [r0,#+120]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #92]
strh r10, [r0,#+110]
ldrh r10, [r0,#+122]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #94]
strh r8, [r0,#+112]
ldrh r8, [r0,#+124]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #96]
strh r6, [r0,#+114]
ldrh r6, [r0,#+126]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #98]
vldrw.u32 Q4, [Q2, #28]
strh r4, [r0,#+116]
ldrh r4, [r0,#+128]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #100]
strh r14, [r0,#+118]
ldrh r14, [r0,#+130]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #102]
strh r12, [r0,#+120]
ldrh r12, [r0,#+132]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #104]
strh r10, [r0,#+122]
ldrh r10, [r0,#+134]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #106]
strh r8, [r0,#+124]
ldrh r8, [r0,#+136]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #108]
strh r6, [r0,#+126]
ldrh r6, [r0,#+138]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #110]
strh r4, [r0,#+128]
ldrh r4, [r0,#+140]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #112]
vldrw.u32 Q5, [Q2, #28]
strh r14, [r0,#+130]
ldrh r14, [r0,#+142]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #114]
strh r12, [r0,#+132]
ldrh r12, [r0,#+144]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #116]
strh r10, [r0,#+134]
ldrh r10, [r0,#+146]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #118]
strh r8, [r0,#+136]
ldrh r8, [r0,#+148]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #120]
strh r6, [r0,#+138]
ldrh r6, [r0,#+150]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #122]
strh r4, [r0,#+140]
ldrh r4, [r0,#+152]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #124]
strh r14, [r0,#+142]
ldrh r14, [r0,#+154]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #126]
vldrw.u32 Q6, [Q2, #28]
strh r12, [r0,#+144]
ldrh r12, [r0,#+156]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #128]
strh r10, [r0,#+146]
ldrh r10, [r0,#+158]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #130]
strh r8, [r0,#+148]
ldrh r8, [r0,#+160]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #132]
strh r6, [r0,#+150]
ldrh r6, [r0,#+162]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #134]
strh r4, [r0,#+152]
ldrh r4, [r0,#+164]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #136]
strh r14, [r0,#+154]
ldrh r14, [r0,#+166]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #138]
strh r12, [r0,#+156]
ldrh r12, [r0,#+168]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #140]
vldrw.u32 Q7, [Q2, #28]
strh r10, [r0,#+158]
ldrh r10, [r0,#+170]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #142]
strh r8, [r0,#+160]
ldrh r8, [r0,#+172]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #144]
strh r6, [r0,#+162]
ldrh r6, [r0,#+174]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #146]
strh r4, [r0,#+164]
ldrh r4, [r0,#+176]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #148]
strh r14, [r0,#+166]
ldrh r14, [r0,#+178]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #150]
strh r12, [r0,#+168]
ldrh r12, [r0,#+180]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #152]
strh r10, [r0,#+170]
ldrh r10, [r0,#+182]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #154]
vldrw.u32 Q0, [Q2, #28]
strh r8, [r0,#+172]
ldrh r8, [r0,#+184]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #156]
strh r6, [r0,#+174]
ldrh r6, [r0,#+186]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #158]
strh r4, [r0,#+176]
ldrh r4, [r0,#+188]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #160]
strh r14, [r0,#+178]
ldrh r14, [r0,#+190]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #162]
strh r12, [r0,#+180]
ldrh r12, [r0,#+192]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #164]
strh r10, [r0,#+182]
ldrh r10, [r0,#+194]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #166]
strh r8, [r0,#+184]
ldrh r8, [r0,#+196]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #168]
vldrw.u32 Q1, [Q2, #28]
strh r6, [r0,#+186]
ldrh r6, [r0,#+198]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #170]
strh r4, [r0,#+188]
ldrh r4, [r0,#+200]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #172]
strh r14, [r0,#+190]
ldrh r14, [r0,#+202]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #174]
strh r12, [r0,#+192]
ldrh r12, [r0,#+204]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #176]
strh r10, [r0,#+194]
ldrh r10, [r0,#+206]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #178]
strh r8, [r0,#+196]
ldrh r8, [r0,#+208]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #180]
strh r6, [r0,#+198]
ldrh r6, [r0,#+210]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #182]
vldrw.u32 Q3, [Q2, #28]
strh r4, [r0,#+200]
ldrh r4, [r0,#+212]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #184]
strh r14, [r0,#+202]
ldrh r14, [r0,#+214]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #186]
strh r12, [r0,#+204]
ldrh r12, [r0,#+216]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #188]
strh r10, [r0,#+206]
ldrh r10, [r0,#+218]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #190]
strh r8, [r0,#+208]
ldrh r8, [r0,#+220]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #192]
strh r6, [r0,#+210]
ldrh r6, [r0,#+222]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #194]
strh r4, [r0,#+212]
ldrh r4, [r0,#+224]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #196]
vldrw.u32 Q4, [Q2, #28]
strh r14, [r0,#+214]
ldrh r14, [r0,#+226]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #198]
strh r12, [r0,#+216]
ldrh r12, [r0,#+228]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #200]
strh r10, [r0,#+218]
ldrh r10, [r0,#+230]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #202]
strh r8, [r0,#+220]
ldrh r8, [r0,#+232]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #204]
strh r6, [r0,#+222]
ldrh r6, [r0,#+234]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #206]
strh r4, [r0,#+224]
ldrh r4, [r0,#+236]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #208]
strh r14, [r0,#+226]
ldrh r14, [r0,#+238]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #210]
vldrw.u32 Q5, [Q2, #28]
strh r12, [r0,#+228]
ldrh r12, [r0,#+240]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #212]
strh r10, [r0,#+230]
ldrh r10, [r0,#+242]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #214]
strh r8, [r0,#+232]
ldrh r8, [r0,#+244]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #216]
strh r6, [r0,#+234]
ldrh r6, [r0,#+246]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #218]
strh r4, [r0,#+236]
ldrh r4, [r0,#+248]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #220]
strh r14, [r0,#+238]
ldrh r14, [r0,#+250]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #222]
strh r12, [r0,#+240]
ldrh r12, [r0,#+252]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #224]
vldrw.u32 Q6, [Q2, #28]
strh r10, [r0,#+242]
ldrh r10, [r0,#+254]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #226]
strh r8, [r0,#+244]
ldrh r8, [r0,#+256]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #228]
strh r6, [r0,#+246]
ldrh r6, [r0,#+258]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #230]
strh r4, [r0,#+248]
ldrh r4, [r0,#+260]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #232]
strh r14, [r0,#+250]
ldrh r14, [r0,#+262]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #234]
strh r12, [r0,#+252]
ldrh r12, [r0,#+264]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #236]
strh r10, [r0,#+254]
ldrh r10, [r0,#+266]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #238]
vldrw.u32 Q7, [Q2, #28]
strh r8, [r0,#+256]
ldrh r8, [r0,#+268]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #240]
strh r6, [r0,#+258]
vmladavx.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #242]
strh r4, [r0,#+260]
vmladavx.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #244]
strh r14, [r0,#+262]
vmladavx.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #246]
strh r12, [r0,#+264]
vmladavx.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #248]
strh r10, [r0,#+266]
vmladavx.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #250]
strh r8, [r0,#+268]
vmladavx.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #252]
vldrw.u32 Q0, [Q2, #28]
strh r6, [r0,#+270]
vmladavx.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #254]
strh r4, [r0,#+272]
vmladavx.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #-14]
vldrw.u32 Q4, [Q2, #44]
strh r14, [r0,#+274]
ldrh r14, [r0,#+32]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #-12]
strh r12, [r0,#+276]
ldrh r12, [r0,#+34]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #-10]
strh r10, [r0,#+278]
ldrh r10, [r0,#+36]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #-8]
strh r8, [r0,#+280]
ldrh r8, [r0,#+38]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #-6]
strh r6, [r0,#+282]
ldrh r6, [r0,#+40]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #-4]
strh r4, [r0,#+284]
ldrh r4, [r0,#+42]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #-2]
strh r14, [r0,#+32]
ldrh r14, [r0,#+44]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #0]
vldrw.u32 Q5, [Q2, #44]
strh r12, [r0,#+34]
ldrh r12, [r0,#+46]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #2]
strh r10, [r0,#+36]
ldrh r10, [r0,#+48]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #4]
strh r8, [r0,#+38]
ldrh r8, [r0,#+50]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #6]
strh r6, [r0,#+40]
ldrh r6, [r0,#+52]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #8]
strh r4, [r0,#+42]
ldrh r4, [r0,#+54]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #10]
strh r14, [r0,#+44]
ldrh r14, [r0,#+56]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #12]
strh r12, [r0,#+46]
ldrh r12, [r0,#+58]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #14]
vldrw.u32 Q6, [Q2, #44]
strh r10, [r0,#+48]
ldrh r10, [r0,#+60]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #16]
strh r8, [r0,#+50]
ldrh r8, [r0,#+62]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #18]
strh r6, [r0,#+52]
ldrh r6, [r0,#+64]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #20]
strh r4, [r0,#+54]
ldrh r4, [r0,#+66]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #22]
strh r14, [r0,#+56]
ldrh r14, [r0,#+68]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #24]
strh r12, [r0,#+58]
ldrh r12, [r0,#+70]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #26]
strh r10, [r0,#+60]
ldrh r10, [r0,#+72]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #28]
vldrw.u32 Q7, [Q2, #44]
strh r8, [r0,#+62]
ldrh r8, [r0,#+74]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #30]
strh r6, [r0,#+64]
ldrh r6, [r0,#+76]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #32]
strh r4, [r0,#+66]
ldrh r4, [r0,#+78]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #34]
strh r14, [r0,#+68]
ldrh r14, [r0,#+80]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #36]
strh r12, [r0,#+70]
ldrh r12, [r0,#+82]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #38]
strh r10, [r0,#+72]
ldrh r10, [r0,#+84]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #40]
strh r8, [r0,#+74]
ldrh r8, [r0,#+86]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #42]
vldrw.u32 Q0, [Q2, #44]
strh r6, [r0,#+76]
ldrh r6, [r0,#+88]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #44]
strh r4, [r0,#+78]
ldrh r4, [r0,#+90]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #46]
strh r14, [r0,#+80]
ldrh r14, [r0,#+92]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #48]
strh r12, [r0,#+82]
ldrh r12, [r0,#+94]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #50]
strh r10, [r0,#+84]
ldrh r10, [r0,#+96]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #52]
strh r8, [r0,#+86]
ldrh r8, [r0,#+98]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #54]
strh r6, [r0,#+88]
ldrh r6, [r0,#+100]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #56]
vldrw.u32 Q1, [Q2, #44]
strh r4, [r0,#+90]
ldrh r4, [r0,#+102]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #58]
strh r14, [r0,#+92]
ldrh r14, [r0,#+104]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #60]
strh r12, [r0,#+94]
ldrh r12, [r0,#+106]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #62]
strh r10, [r0,#+96]
ldrh r10, [r0,#+108]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #64]
strh r8, [r0,#+98]
ldrh r8, [r0,#+110]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #66]
strh r6, [r0,#+100]
ldrh r6, [r0,#+112]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #68]
strh r4, [r0,#+102]
ldrh r4, [r0,#+114]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #70]
vldrw.u32 Q3, [Q2, #44]
strh r14, [r0,#+104]
ldrh r14, [r0,#+116]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #72]
strh r12, [r0,#+106]
ldrh r12, [r0,#+118]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #74]
strh r10, [r0,#+108]
ldrh r10, [r0,#+120]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #76]
strh r8, [r0,#+110]
ldrh r8, [r0,#+122]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #78]
strh r6, [r0,#+112]
ldrh r6, [r0,#+124]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #80]
strh r4, [r0,#+114]
ldrh r4, [r0,#+126]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #82]
strh r14, [r0,#+116]
ldrh r14, [r0,#+128]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #84]
vldrw.u32 Q4, [Q2, #44]
strh r12, [r0,#+118]
ldrh r12, [r0,#+130]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #86]
strh r10, [r0,#+120]
ldrh r10, [r0,#+132]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #88]
strh r8, [r0,#+122]
ldrh r8, [r0,#+134]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #90]
strh r6, [r0,#+124]
ldrh r6, [r0,#+136]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #92]
strh r4, [r0,#+126]
ldrh r4, [r0,#+138]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #94]
strh r14, [r0,#+128]
ldrh r14, [r0,#+140]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #96]
strh r12, [r0,#+130]
ldrh r12, [r0,#+142]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #98]
vldrw.u32 Q5, [Q2, #44]
strh r10, [r0,#+132]
ldrh r10, [r0,#+144]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #100]
strh r8, [r0,#+134]
ldrh r8, [r0,#+146]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #102]
strh r6, [r0,#+136]
ldrh r6, [r0,#+148]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #104]
strh r4, [r0,#+138]
ldrh r4, [r0,#+150]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #106]
strh r14, [r0,#+140]
ldrh r14, [r0,#+152]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #108]
strh r12, [r0,#+142]
ldrh r12, [r0,#+154]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #110]
strh r10, [r0,#+144]
ldrh r10, [r0,#+156]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #112]
vldrw.u32 Q6, [Q2, #44]
strh r8, [r0,#+146]
ldrh r8, [r0,#+158]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #114]
strh r6, [r0,#+148]
ldrh r6, [r0,#+160]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #116]
strh r4, [r0,#+150]
ldrh r4, [r0,#+162]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #118]
strh r14, [r0,#+152]
ldrh r14, [r0,#+164]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #120]
strh r12, [r0,#+154]
ldrh r12, [r0,#+166]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #122]
strh r10, [r0,#+156]
ldrh r10, [r0,#+168]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #124]
strh r8, [r0,#+158]
ldrh r8, [r0,#+170]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #126]
vldrw.u32 Q7, [Q2, #44]
strh r6, [r0,#+160]
ldrh r6, [r0,#+172]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #128]
strh r4, [r0,#+162]
ldrh r4, [r0,#+174]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #130]
strh r14, [r0,#+164]
ldrh r14, [r0,#+176]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #132]
strh r12, [r0,#+166]
ldrh r12, [r0,#+178]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #134]
strh r10, [r0,#+168]
ldrh r10, [r0,#+180]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #136]
strh r8, [r0,#+170]
ldrh r8, [r0,#+182]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #138]
strh r6, [r0,#+172]
ldrh r6, [r0,#+184]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #140]
vldrw.u32 Q0, [Q2, #44]
strh r4, [r0,#+174]
ldrh r4, [r0,#+186]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #142]
strh r14, [r0,#+176]
ldrh r14, [r0,#+188]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #144]
strh r12, [r0,#+178]
ldrh r12, [r0,#+190]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #146]
strh r10, [r0,#+180]
ldrh r10, [r0,#+192]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #148]
strh r8, [r0,#+182]
ldrh r8, [r0,#+194]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #150]
strh r6, [r0,#+184]
ldrh r6, [r0,#+196]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #152]
strh r4, [r0,#+186]
ldrh r4, [r0,#+198]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #154]
vldrw.u32 Q1, [Q2, #44]
strh r14, [r0,#+188]
ldrh r14, [r0,#+200]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #156]
strh r12, [r0,#+190]
ldrh r12, [r0,#+202]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #158]
strh r10, [r0,#+192]
ldrh r10, [r0,#+204]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #160]
strh r8, [r0,#+194]
ldrh r8, [r0,#+206]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #162]
strh r6, [r0,#+196]
ldrh r6, [r0,#+208]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #164]
strh r4, [r0,#+198]
ldrh r4, [r0,#+210]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #166]
strh r14, [r0,#+200]
ldrh r14, [r0,#+212]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #168]
vldrw.u32 Q3, [Q2, #44]
strh r12, [r0,#+202]
ldrh r12, [r0,#+214]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #170]
strh r10, [r0,#+204]
ldrh r10, [r0,#+216]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #172]
strh r8, [r0,#+206]
ldrh r8, [r0,#+218]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #174]
strh r6, [r0,#+208]
ldrh r6, [r0,#+220]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #176]
strh r4, [r0,#+210]
ldrh r4, [r0,#+222]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #178]
strh r14, [r0,#+212]
ldrh r14, [r0,#+224]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #180]
strh r12, [r0,#+214]
ldrh r12, [r0,#+226]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #182]
vldrw.u32 Q4, [Q2, #44]
strh r10, [r0,#+216]
ldrh r10, [r0,#+228]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #184]
strh r8, [r0,#+218]
ldrh r8, [r0,#+230]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #186]
strh r6, [r0,#+220]
ldrh r6, [r0,#+232]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #188]
strh r4, [r0,#+222]
ldrh r4, [r0,#+234]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #190]
strh r14, [r0,#+224]
ldrh r14, [r0,#+236]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #192]
strh r12, [r0,#+226]
ldrh r12, [r0,#+238]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #194]
strh r10, [r0,#+228]
ldrh r10, [r0,#+240]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #196]
vldrw.u32 Q5, [Q2, #44]
strh r8, [r0,#+230]
ldrh r8, [r0,#+242]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #198]
strh r6, [r0,#+232]
ldrh r6, [r0,#+244]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #200]
strh r4, [r0,#+234]
ldrh r4, [r0,#+246]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #202]
strh r14, [r0,#+236]
ldrh r14, [r0,#+248]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #204]
strh r12, [r0,#+238]
ldrh r12, [r0,#+250]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #206]
strh r10, [r0,#+240]
ldrh r10, [r0,#+252]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #208]
strh r8, [r0,#+242]
ldrh r8, [r0,#+254]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #210]
vldrw.u32 Q6, [Q2, #44]
strh r6, [r0,#+244]
ldrh r6, [r0,#+256]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #212]
strh r4, [r0,#+246]
ldrh r4, [r0,#+258]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #214]
strh r14, [r0,#+248]
ldrh r14, [r0,#+260]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #216]
strh r12, [r0,#+250]
ldrh r12, [r0,#+262]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #218]
strh r10, [r0,#+252]
ldrh r10, [r0,#+264]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #220]
strh r8, [r0,#+254]
ldrh r8, [r0,#+266]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #222]
strh r6, [r0,#+256]
ldrh r6, [r0,#+268]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #224]
vldrw.u32 Q7, [Q2, #44]
strh r4, [r0,#+258]
ldrh r4, [r0,#+270]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #226]
strh r14, [r0,#+260]
ldrh r14, [r0,#+272]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #228]
strh r12, [r0,#+262]
ldrh r12, [r0,#+274]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #230]
strh r10, [r0,#+264]
ldrh r10, [r0,#+276]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #232]
strh r8, [r0,#+266]
ldrh r8, [r0,#+278]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #234]
strh r6, [r0,#+268]
ldrh r6, [r0,#+280]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #236]
strh r4, [r0,#+270]
ldrh r4, [r0,#+282]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #238]
vldrw.u32 Q0, [Q2, #44]
strh r14, [r0,#+272]
ldrh r14, [r0,#+284]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #240]
strh r12, [r0,#+274]
vmladavx.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #242]
strh r10, [r0,#+276]
vmladavx.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #244]
strh r8, [r0,#+278]
vmladavx.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #246]
strh r6, [r0,#+280]
vmladavx.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #248]
strh r4, [r0,#+282]
vmladavx.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #250]
strh r14, [r0,#+284]
vmladavx.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #252]
vldrw.u32 Q1, [Q2, #44]
strh r12, [r0,#+286]
vmladavx.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #254]
strh r10, [r0,#+288]
vmladavx.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #60]
strh r8, [r0,#+290]
ldrh r8, [r0,#+48]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #-12]
strh r6, [r0,#+292]
ldrh r6, [r0,#+50]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #-10]
strh r4, [r0,#+294]
ldrh r4, [r0,#+52]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #-8]
strh r14, [r0,#+296]
ldrh r14, [r0,#+54]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #-6]
strh r12, [r0,#+298]
ldrh r12, [r0,#+56]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #-4]
strh r10, [r0,#+300]
ldrh r10, [r0,#+58]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #-2]
strh r8, [r0,#+48]
ldrh r8, [r0,#+60]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #0]
vldrw.u32 Q6, [Q2, #60]
strh r6, [r0,#+50]
ldrh r6, [r0,#+62]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #2]
strh r4, [r0,#+52]
ldrh r4, [r0,#+64]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #4]
strh r14, [r0,#+54]
ldrh r14, [r0,#+66]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #6]
strh r12, [r0,#+56]
ldrh r12, [r0,#+68]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #8]
strh r10, [r0,#+58]
ldrh r10, [r0,#+70]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #10]
strh r8, [r0,#+60]
ldrh r8, [r0,#+72]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #12]
strh r6, [r0,#+62]
ldrh r6, [r0,#+74]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #14]
vldrw.u32 Q7, [Q2, #60]
strh r4, [r0,#+64]
ldrh r4, [r0,#+76]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #16]
strh r14, [r0,#+66]
ldrh r14, [r0,#+78]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #18]
strh r12, [r0,#+68]
ldrh r12, [r0,#+80]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #20]
strh r10, [r0,#+70]
ldrh r10, [r0,#+82]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #22]
strh r8, [r0,#+72]
ldrh r8, [r0,#+84]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #24]
strh r6, [r0,#+74]
ldrh r6, [r0,#+86]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #26]
strh r4, [r0,#+76]
ldrh r4, [r0,#+88]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #28]
vldrw.u32 Q0, [Q2, #60]
strh r14, [r0,#+78]
ldrh r14, [r0,#+90]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #30]
strh r12, [r0,#+80]
ldrh r12, [r0,#+92]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #32]
strh r10, [r0,#+82]
ldrh r10, [r0,#+94]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #34]
strh r8, [r0,#+84]
ldrh r8, [r0,#+96]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #36]
strh r6, [r0,#+86]
ldrh r6, [r0,#+98]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #38]
strh r4, [r0,#+88]
ldrh r4, [r0,#+100]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #40]
strh r14, [r0,#+90]
ldrh r14, [r0,#+102]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #42]
vldrw.u32 Q1, [Q2, #60]
strh r12, [r0,#+92]
ldrh r12, [r0,#+104]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #44]
strh r10, [r0,#+94]
ldrh r10, [r0,#+106]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #46]
strh r8, [r0,#+96]
ldrh r8, [r0,#+108]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #48]
strh r6, [r0,#+98]
ldrh r6, [r0,#+110]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #50]
strh r4, [r0,#+100]
ldrh r4, [r0,#+112]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #52]
strh r14, [r0,#+102]
ldrh r14, [r0,#+114]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #54]
strh r12, [r0,#+104]
ldrh r12, [r0,#+116]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #56]
vldrw.u32 Q3, [Q2, #60]
strh r10, [r0,#+106]
ldrh r10, [r0,#+118]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #58]
strh r8, [r0,#+108]
ldrh r8, [r0,#+120]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #60]
strh r6, [r0,#+110]
ldrh r6, [r0,#+122]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #62]
strh r4, [r0,#+112]
ldrh r4, [r0,#+124]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #64]
strh r14, [r0,#+114]
ldrh r14, [r0,#+126]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #66]
strh r12, [r0,#+116]
ldrh r12, [r0,#+128]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #68]
strh r10, [r0,#+118]
ldrh r10, [r0,#+130]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #70]
vldrw.u32 Q4, [Q2, #60]
strh r8, [r0,#+120]
ldrh r8, [r0,#+132]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #72]
strh r6, [r0,#+122]
ldrh r6, [r0,#+134]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #74]
strh r4, [r0,#+124]
ldrh r4, [r0,#+136]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #76]
strh r14, [r0,#+126]
ldrh r14, [r0,#+138]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #78]
strh r12, [r0,#+128]
ldrh r12, [r0,#+140]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #80]
strh r10, [r0,#+130]
ldrh r10, [r0,#+142]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #82]
strh r8, [r0,#+132]
ldrh r8, [r0,#+144]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #84]
vldrw.u32 Q5, [Q2, #60]
strh r6, [r0,#+134]
ldrh r6, [r0,#+146]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #86]
strh r4, [r0,#+136]
ldrh r4, [r0,#+148]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #88]
strh r14, [r0,#+138]
ldrh r14, [r0,#+150]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #90]
strh r12, [r0,#+140]
ldrh r12, [r0,#+152]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #92]
strh r10, [r0,#+142]
ldrh r10, [r0,#+154]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #94]
strh r8, [r0,#+144]
ldrh r8, [r0,#+156]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #96]
strh r6, [r0,#+146]
ldrh r6, [r0,#+158]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #98]
vldrw.u32 Q6, [Q2, #60]
strh r4, [r0,#+148]
ldrh r4, [r0,#+160]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #100]
strh r14, [r0,#+150]
ldrh r14, [r0,#+162]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #102]
strh r12, [r0,#+152]
ldrh r12, [r0,#+164]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #104]
strh r10, [r0,#+154]
ldrh r10, [r0,#+166]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #106]
strh r8, [r0,#+156]
ldrh r8, [r0,#+168]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #108]
strh r6, [r0,#+158]
ldrh r6, [r0,#+170]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #110]
strh r4, [r0,#+160]
ldrh r4, [r0,#+172]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #112]
vldrw.u32 Q7, [Q2, #60]
strh r14, [r0,#+162]
ldrh r14, [r0,#+174]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #114]
strh r12, [r0,#+164]
ldrh r12, [r0,#+176]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #116]
strh r10, [r0,#+166]
ldrh r10, [r0,#+178]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #118]
strh r8, [r0,#+168]
ldrh r8, [r0,#+180]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #120]
strh r6, [r0,#+170]
ldrh r6, [r0,#+182]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #122]
strh r4, [r0,#+172]
ldrh r4, [r0,#+184]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #124]
strh r14, [r0,#+174]
ldrh r14, [r0,#+186]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #126]
vldrw.u32 Q0, [Q2, #60]
strh r12, [r0,#+176]
ldrh r12, [r0,#+188]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #128]
strh r10, [r0,#+178]
ldrh r10, [r0,#+190]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #130]
strh r8, [r0,#+180]
ldrh r8, [r0,#+192]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #132]
strh r6, [r0,#+182]
ldrh r6, [r0,#+194]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #134]
strh r4, [r0,#+184]
ldrh r4, [r0,#+196]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #136]
strh r14, [r0,#+186]
ldrh r14, [r0,#+198]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #138]
strh r12, [r0,#+188]
ldrh r12, [r0,#+200]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #140]
vldrw.u32 Q1, [Q2, #60]
strh r10, [r0,#+190]
ldrh r10, [r0,#+202]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #142]
strh r8, [r0,#+192]
ldrh r8, [r0,#+204]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #144]
strh r6, [r0,#+194]
ldrh r6, [r0,#+206]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #146]
strh r4, [r0,#+196]
ldrh r4, [r0,#+208]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #148]
strh r14, [r0,#+198]
ldrh r14, [r0,#+210]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #150]
strh r12, [r0,#+200]
ldrh r12, [r0,#+212]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #152]
strh r10, [r0,#+202]
ldrh r10, [r0,#+214]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #154]
vldrw.u32 Q3, [Q2, #60]
strh r8, [r0,#+204]
ldrh r8, [r0,#+216]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #156]
strh r6, [r0,#+206]
ldrh r6, [r0,#+218]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #158]
strh r4, [r0,#+208]
ldrh r4, [r0,#+220]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #160]
strh r14, [r0,#+210]
ldrh r14, [r0,#+222]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #162]
strh r12, [r0,#+212]
ldrh r12, [r0,#+224]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #164]
strh r10, [r0,#+214]
ldrh r10, [r0,#+226]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #166]
strh r8, [r0,#+216]
ldrh r8, [r0,#+228]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #168]
vldrw.u32 Q4, [Q2, #60]
strh r6, [r0,#+218]
ldrh r6, [r0,#+230]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #170]
strh r4, [r0,#+220]
ldrh r4, [r0,#+232]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #172]
strh r14, [r0,#+222]
ldrh r14, [r0,#+234]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #174]
strh r12, [r0,#+224]
ldrh r12, [r0,#+236]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #176]
strh r10, [r0,#+226]
ldrh r10, [r0,#+238]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #178]
strh r8, [r0,#+228]
ldrh r8, [r0,#+240]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #180]
strh r6, [r0,#+230]
ldrh r6, [r0,#+242]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #182]
vldrw.u32 Q5, [Q2, #60]
strh r4, [r0,#+232]
ldrh r4, [r0,#+244]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #184]
strh r14, [r0,#+234]
ldrh r14, [r0,#+246]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #186]
strh r12, [r0,#+236]
ldrh r12, [r0,#+248]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #188]
strh r10, [r0,#+238]
ldrh r10, [r0,#+250]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #190]
strh r8, [r0,#+240]
ldrh r8, [r0,#+252]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #192]
strh r6, [r0,#+242]
ldrh r6, [r0,#+254]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #194]
strh r4, [r0,#+244]
ldrh r4, [r0,#+256]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #196]
vldrw.u32 Q6, [Q2, #60]
strh r14, [r0,#+246]
ldrh r14, [r0,#+258]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #198]
strh r12, [r0,#+248]
ldrh r12, [r0,#+260]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #200]
strh r10, [r0,#+250]
ldrh r10, [r0,#+262]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #202]
strh r8, [r0,#+252]
ldrh r8, [r0,#+264]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #204]
strh r6, [r0,#+254]
ldrh r6, [r0,#+266]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #206]
strh r4, [r0,#+256]
ldrh r4, [r0,#+268]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #208]
strh r14, [r0,#+258]
ldrh r14, [r0,#+270]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #210]
vldrw.u32 Q7, [Q2, #60]
strh r12, [r0,#+260]
ldrh r12, [r0,#+272]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #212]
strh r10, [r0,#+262]
ldrh r10, [r0,#+274]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #214]
strh r8, [r0,#+264]
ldrh r8, [r0,#+276]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #216]
strh r6, [r0,#+266]
ldrh r6, [r0,#+278]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #218]
strh r4, [r0,#+268]
ldrh r4, [r0,#+280]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #220]
strh r14, [r0,#+270]
ldrh r14, [r0,#+282]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #222]
strh r12, [r0,#+272]
ldrh r12, [r0,#+284]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #224]
vldrw.u32 Q0, [Q2, #60]
strh r10, [r0,#+274]
ldrh r10, [r0,#+286]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #226]
strh r8, [r0,#+276]
ldrh r8, [r0,#+288]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #228]
strh r6, [r0,#+278]
ldrh r6, [r0,#+290]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #230]
strh r4, [r0,#+280]
ldrh r4, [r0,#+292]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #232]
strh r14, [r0,#+282]
ldrh r14, [r0,#+294]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #234]
strh r12, [r0,#+284]
ldrh r12, [r0,#+296]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #236]
strh r10, [r0,#+286]
ldrh r10, [r0,#+298]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #238]
vldrw.u32 Q1, [Q2, #60]
strh r8, [r0,#+288]
ldrh r8, [r0,#+300]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #240]
strh r6, [r0,#+290]
vmladavx.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #242]
strh r4, [r0,#+292]
vmladavx.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #244]
strh r14, [r0,#+294]
vmladavx.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #246]
strh r12, [r0,#+296]
vmladavx.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #248]
strh r10, [r0,#+298]
vmladavx.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #250]
strh r8, [r0,#+300]
vmladavx.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #252]
vldrw.u32 Q3, [Q2, #60]
strh r6, [r0,#+302]
vmladavx.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #254]
strh r4, [r0,#+304]
vmladavx.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #-14]
vldrw.u32 Q6, [Q2, #76]
strh r14, [r0,#+306]
ldrh r14, [r0,#+64]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #-12]
strh r12, [r0,#+308]
ldrh r12, [r0,#+66]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #-10]
strh r10, [r0,#+310]
ldrh r10, [r0,#+68]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #-8]
strh r8, [r0,#+312]
ldrh r8, [r0,#+70]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #-6]
strh r6, [r0,#+314]
ldrh r6, [r0,#+72]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #-4]
strh r4, [r0,#+316]
ldrh r4, [r0,#+74]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #-2]
strh r14, [r0,#+64]
ldrh r14, [r0,#+76]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #0]
vldrw.u32 Q7, [Q2, #76]
strh r12, [r0,#+66]
ldrh r12, [r0,#+78]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #2]
strh r10, [r0,#+68]
ldrh r10, [r0,#+80]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #4]
strh r8, [r0,#+70]
ldrh r8, [r0,#+82]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #6]
strh r6, [r0,#+72]
ldrh r6, [r0,#+84]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #8]
strh r4, [r0,#+74]
ldrh r4, [r0,#+86]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #10]
strh r14, [r0,#+76]
ldrh r14, [r0,#+88]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #12]
strh r12, [r0,#+78]
ldrh r12, [r0,#+90]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #14]
vldrw.u32 Q0, [Q2, #76]
strh r10, [r0,#+80]
ldrh r10, [r0,#+92]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #16]
strh r8, [r0,#+82]
ldrh r8, [r0,#+94]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #18]
strh r6, [r0,#+84]
ldrh r6, [r0,#+96]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #20]
strh r4, [r0,#+86]
ldrh r4, [r0,#+98]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #22]
strh r14, [r0,#+88]
ldrh r14, [r0,#+100]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #24]
strh r12, [r0,#+90]
ldrh r12, [r0,#+102]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #26]
strh r10, [r0,#+92]
ldrh r10, [r0,#+104]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #28]
vldrw.u32 Q1, [Q2, #76]
strh r8, [r0,#+94]
ldrh r8, [r0,#+106]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #30]
strh r6, [r0,#+96]
ldrh r6, [r0,#+108]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #32]
strh r4, [r0,#+98]
ldrh r4, [r0,#+110]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #34]
strh r14, [r0,#+100]
ldrh r14, [r0,#+112]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #36]
strh r12, [r0,#+102]
ldrh r12, [r0,#+114]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #38]
strh r10, [r0,#+104]
ldrh r10, [r0,#+116]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #40]
strh r8, [r0,#+106]
ldrh r8, [r0,#+118]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #42]
vldrw.u32 Q3, [Q2, #76]
strh r6, [r0,#+108]
ldrh r6, [r0,#+120]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #44]
strh r4, [r0,#+110]
ldrh r4, [r0,#+122]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #46]
strh r14, [r0,#+112]
ldrh r14, [r0,#+124]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #48]
strh r12, [r0,#+114]
ldrh r12, [r0,#+126]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #50]
strh r10, [r0,#+116]
ldrh r10, [r0,#+128]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #52]
strh r8, [r0,#+118]
ldrh r8, [r0,#+130]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #54]
strh r6, [r0,#+120]
ldrh r6, [r0,#+132]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #56]
vldrw.u32 Q4, [Q2, #76]
strh r4, [r0,#+122]
ldrh r4, [r0,#+134]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #58]
strh r14, [r0,#+124]
ldrh r14, [r0,#+136]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #60]
strh r12, [r0,#+126]
ldrh r12, [r0,#+138]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #62]
strh r10, [r0,#+128]
ldrh r10, [r0,#+140]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #64]
strh r8, [r0,#+130]
ldrh r8, [r0,#+142]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #66]
strh r6, [r0,#+132]
ldrh r6, [r0,#+144]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #68]
strh r4, [r0,#+134]
ldrh r4, [r0,#+146]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #70]
vldrw.u32 Q5, [Q2, #76]
strh r14, [r0,#+136]
ldrh r14, [r0,#+148]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #72]
strh r12, [r0,#+138]
ldrh r12, [r0,#+150]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #74]
strh r10, [r0,#+140]
ldrh r10, [r0,#+152]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #76]
strh r8, [r0,#+142]
ldrh r8, [r0,#+154]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #78]
strh r6, [r0,#+144]
ldrh r6, [r0,#+156]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #80]
strh r4, [r0,#+146]
ldrh r4, [r0,#+158]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #82]
strh r14, [r0,#+148]
ldrh r14, [r0,#+160]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #84]
vldrw.u32 Q6, [Q2, #76]
strh r12, [r0,#+150]
ldrh r12, [r0,#+162]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #86]
strh r10, [r0,#+152]
ldrh r10, [r0,#+164]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #88]
strh r8, [r0,#+154]
ldrh r8, [r0,#+166]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #90]
strh r6, [r0,#+156]
ldrh r6, [r0,#+168]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #92]
strh r4, [r0,#+158]
ldrh r4, [r0,#+170]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #94]
strh r14, [r0,#+160]
ldrh r14, [r0,#+172]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #96]
strh r12, [r0,#+162]
ldrh r12, [r0,#+174]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #98]
vldrw.u32 Q7, [Q2, #76]
strh r10, [r0,#+164]
ldrh r10, [r0,#+176]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #100]
strh r8, [r0,#+166]
ldrh r8, [r0,#+178]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #102]
strh r6, [r0,#+168]
ldrh r6, [r0,#+180]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #104]
strh r4, [r0,#+170]
ldrh r4, [r0,#+182]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #106]
strh r14, [r0,#+172]
ldrh r14, [r0,#+184]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #108]
strh r12, [r0,#+174]
ldrh r12, [r0,#+186]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #110]
strh r10, [r0,#+176]
ldrh r10, [r0,#+188]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #112]
vldrw.u32 Q0, [Q2, #76]
strh r8, [r0,#+178]
ldrh r8, [r0,#+190]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #114]
strh r6, [r0,#+180]
ldrh r6, [r0,#+192]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #116]
strh r4, [r0,#+182]
ldrh r4, [r0,#+194]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #118]
strh r14, [r0,#+184]
ldrh r14, [r0,#+196]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #120]
strh r12, [r0,#+186]
ldrh r12, [r0,#+198]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #122]
strh r10, [r0,#+188]
ldrh r10, [r0,#+200]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #124]
strh r8, [r0,#+190]
ldrh r8, [r0,#+202]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #126]
vldrw.u32 Q1, [Q2, #76]
strh r6, [r0,#+192]
ldrh r6, [r0,#+204]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #128]
strh r4, [r0,#+194]
ldrh r4, [r0,#+206]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #130]
strh r14, [r0,#+196]
ldrh r14, [r0,#+208]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #132]
strh r12, [r0,#+198]
ldrh r12, [r0,#+210]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #134]
strh r10, [r0,#+200]
ldrh r10, [r0,#+212]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #136]
strh r8, [r0,#+202]
ldrh r8, [r0,#+214]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #138]
strh r6, [r0,#+204]
ldrh r6, [r0,#+216]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #140]
vldrw.u32 Q3, [Q2, #76]
strh r4, [r0,#+206]
ldrh r4, [r0,#+218]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #142]
strh r14, [r0,#+208]
ldrh r14, [r0,#+220]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #144]
strh r12, [r0,#+210]
ldrh r12, [r0,#+222]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #146]
strh r10, [r0,#+212]
ldrh r10, [r0,#+224]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #148]
strh r8, [r0,#+214]
ldrh r8, [r0,#+226]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #150]
strh r6, [r0,#+216]
ldrh r6, [r0,#+228]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #152]
strh r4, [r0,#+218]
ldrh r4, [r0,#+230]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #154]
vldrw.u32 Q4, [Q2, #76]
strh r14, [r0,#+220]
ldrh r14, [r0,#+232]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #156]
strh r12, [r0,#+222]
ldrh r12, [r0,#+234]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #158]
strh r10, [r0,#+224]
ldrh r10, [r0,#+236]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #160]
strh r8, [r0,#+226]
ldrh r8, [r0,#+238]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #162]
strh r6, [r0,#+228]
ldrh r6, [r0,#+240]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #164]
strh r4, [r0,#+230]
ldrh r4, [r0,#+242]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #166]
strh r14, [r0,#+232]
ldrh r14, [r0,#+244]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #168]
vldrw.u32 Q5, [Q2, #76]
strh r12, [r0,#+234]
ldrh r12, [r0,#+246]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #170]
strh r10, [r0,#+236]
ldrh r10, [r0,#+248]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #172]
strh r8, [r0,#+238]
ldrh r8, [r0,#+250]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #174]
strh r6, [r0,#+240]
ldrh r6, [r0,#+252]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #176]
strh r4, [r0,#+242]
ldrh r4, [r0,#+254]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #178]
strh r14, [r0,#+244]
ldrh r14, [r0,#+256]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #180]
strh r12, [r0,#+246]
ldrh r12, [r0,#+258]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #182]
vldrw.u32 Q6, [Q2, #76]
strh r10, [r0,#+248]
ldrh r10, [r0,#+260]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #184]
strh r8, [r0,#+250]
ldrh r8, [r0,#+262]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #186]
strh r6, [r0,#+252]
ldrh r6, [r0,#+264]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #188]
strh r4, [r0,#+254]
ldrh r4, [r0,#+266]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #190]
strh r14, [r0,#+256]
ldrh r14, [r0,#+268]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #192]
strh r12, [r0,#+258]
ldrh r12, [r0,#+270]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #194]
strh r10, [r0,#+260]
ldrh r10, [r0,#+272]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #196]
vldrw.u32 Q7, [Q2, #76]
strh r8, [r0,#+262]
ldrh r8, [r0,#+274]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #198]
strh r6, [r0,#+264]
ldrh r6, [r0,#+276]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #200]
strh r4, [r0,#+266]
ldrh r4, [r0,#+278]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #202]
strh r14, [r0,#+268]
ldrh r14, [r0,#+280]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #204]
strh r12, [r0,#+270]
ldrh r12, [r0,#+282]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #206]
strh r10, [r0,#+272]
ldrh r10, [r0,#+284]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #208]
strh r8, [r0,#+274]
ldrh r8, [r0,#+286]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #210]
vldrw.u32 Q0, [Q2, #76]
strh r6, [r0,#+276]
ldrh r6, [r0,#+288]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #212]
strh r4, [r0,#+278]
ldrh r4, [r0,#+290]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #214]
strh r14, [r0,#+280]
ldrh r14, [r0,#+292]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #216]
strh r12, [r0,#+282]
ldrh r12, [r0,#+294]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #218]
strh r10, [r0,#+284]
ldrh r10, [r0,#+296]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #220]
strh r8, [r0,#+286]
ldrh r8, [r0,#+298]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #222]
strh r6, [r0,#+288]
ldrh r6, [r0,#+300]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #224]
vldrw.u32 Q1, [Q2, #76]
strh r4, [r0,#+290]
ldrh r4, [r0,#+302]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #226]
strh r14, [r0,#+292]
ldrh r14, [r0,#+304]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #228]
strh r12, [r0,#+294]
ldrh r12, [r0,#+306]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #230]
strh r10, [r0,#+296]
ldrh r10, [r0,#+308]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #232]
strh r8, [r0,#+298]
ldrh r8, [r0,#+310]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #234]
strh r6, [r0,#+300]
ldrh r6, [r0,#+312]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #236]
strh r4, [r0,#+302]
ldrh r4, [r0,#+314]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #238]
vldrw.u32 Q3, [Q2, #76]
strh r14, [r0,#+304]
ldrh r14, [r0,#+316]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #240]
strh r12, [r0,#+306]
vmladavx.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #242]
strh r10, [r0,#+308]
vmladavx.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #244]
strh r8, [r0,#+310]
vmladavx.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #246]
strh r6, [r0,#+312]
vmladavx.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #248]
strh r4, [r0,#+314]
vmladavx.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #250]
strh r14, [r0,#+316]
vmladavx.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #252]
vldrw.u32 Q4, [Q2, #76]
strh r12, [r0,#+318]
vmladavx.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #254]
strh r10, [r0,#+320]
vmladavx.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #-14]
vldrw.u32 Q7, [Q2, #92]
strh r8, [r0,#+322]
ldrh r8, [r0,#+80]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #-12]
strh r6, [r0,#+324]
ldrh r6, [r0,#+82]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #-10]
strh r4, [r0,#+326]
ldrh r4, [r0,#+84]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #-8]
strh r14, [r0,#+328]
ldrh r14, [r0,#+86]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #-6]
strh r12, [r0,#+330]
ldrh r12, [r0,#+88]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #-4]
strh r10, [r0,#+332]
ldrh r10, [r0,#+90]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #-2]
strh r8, [r0,#+80]
ldrh r8, [r0,#+92]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #0]
vldrw.u32 Q0, [Q2, #92]
strh r6, [r0,#+82]
ldrh r6, [r0,#+94]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #2]
strh r4, [r0,#+84]
ldrh r4, [r0,#+96]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #4]
strh r14, [r0,#+86]
ldrh r14, [r0,#+98]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #6]
strh r12, [r0,#+88]
ldrh r12, [r0,#+100]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #8]
strh r10, [r0,#+90]
ldrh r10, [r0,#+102]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #10]
strh r8, [r0,#+92]
ldrh r8, [r0,#+104]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #12]
strh r6, [r0,#+94]
ldrh r6, [r0,#+106]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #14]
vldrw.u32 Q1, [Q2, #92]
strh r4, [r0,#+96]
ldrh r4, [r0,#+108]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #16]
strh r14, [r0,#+98]
ldrh r14, [r0,#+110]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #18]
strh r12, [r0,#+100]
ldrh r12, [r0,#+112]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #20]
strh r10, [r0,#+102]
ldrh r10, [r0,#+114]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #22]
strh r8, [r0,#+104]
ldrh r8, [r0,#+116]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #24]
strh r6, [r0,#+106]
ldrh r6, [r0,#+118]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #26]
strh r4, [r0,#+108]
ldrh r4, [r0,#+120]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #28]
vldrw.u32 Q3, [Q2, #92]
strh r14, [r0,#+110]
ldrh r14, [r0,#+122]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #30]
strh r12, [r0,#+112]
ldrh r12, [r0,#+124]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #32]
strh r10, [r0,#+114]
ldrh r10, [r0,#+126]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #34]
strh r8, [r0,#+116]
ldrh r8, [r0,#+128]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #36]
strh r6, [r0,#+118]
ldrh r6, [r0,#+130]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #38]
strh r4, [r0,#+120]
ldrh r4, [r0,#+132]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #40]
strh r14, [r0,#+122]
ldrh r14, [r0,#+134]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #42]
vldrw.u32 Q4, [Q2, #92]
strh r12, [r0,#+124]
ldrh r12, [r0,#+136]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #44]
strh r10, [r0,#+126]
ldrh r10, [r0,#+138]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #46]
strh r8, [r0,#+128]
ldrh r8, [r0,#+140]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #48]
strh r6, [r0,#+130]
ldrh r6, [r0,#+142]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #50]
strh r4, [r0,#+132]
ldrh r4, [r0,#+144]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #52]
strh r14, [r0,#+134]
ldrh r14, [r0,#+146]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #54]
strh r12, [r0,#+136]
ldrh r12, [r0,#+148]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #56]
vldrw.u32 Q5, [Q2, #92]
strh r10, [r0,#+138]
ldrh r10, [r0,#+150]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #58]
strh r8, [r0,#+140]
ldrh r8, [r0,#+152]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #60]
strh r6, [r0,#+142]
ldrh r6, [r0,#+154]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #62]
strh r4, [r0,#+144]
ldrh r4, [r0,#+156]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #64]
strh r14, [r0,#+146]
ldrh r14, [r0,#+158]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #66]
strh r12, [r0,#+148]
ldrh r12, [r0,#+160]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #68]
strh r10, [r0,#+150]
ldrh r10, [r0,#+162]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #70]
vldrw.u32 Q6, [Q2, #92]
strh r8, [r0,#+152]
ldrh r8, [r0,#+164]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #72]
strh r6, [r0,#+154]
ldrh r6, [r0,#+166]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #74]
strh r4, [r0,#+156]
ldrh r4, [r0,#+168]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #76]
strh r14, [r0,#+158]
ldrh r14, [r0,#+170]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #78]
strh r12, [r0,#+160]
ldrh r12, [r0,#+172]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #80]
strh r10, [r0,#+162]
ldrh r10, [r0,#+174]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #82]
strh r8, [r0,#+164]
ldrh r8, [r0,#+176]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #84]
vldrw.u32 Q7, [Q2, #92]
strh r6, [r0,#+166]
ldrh r6, [r0,#+178]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #86]
strh r4, [r0,#+168]
ldrh r4, [r0,#+180]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #88]
strh r14, [r0,#+170]
ldrh r14, [r0,#+182]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #90]
strh r12, [r0,#+172]
ldrh r12, [r0,#+184]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #92]
strh r10, [r0,#+174]
ldrh r10, [r0,#+186]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #94]
strh r8, [r0,#+176]
ldrh r8, [r0,#+188]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #96]
strh r6, [r0,#+178]
ldrh r6, [r0,#+190]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #98]
vldrw.u32 Q0, [Q2, #92]
strh r4, [r0,#+180]
ldrh r4, [r0,#+192]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #100]
strh r14, [r0,#+182]
ldrh r14, [r0,#+194]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #102]
strh r12, [r0,#+184]
ldrh r12, [r0,#+196]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #104]
strh r10, [r0,#+186]
ldrh r10, [r0,#+198]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #106]
strh r8, [r0,#+188]
ldrh r8, [r0,#+200]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #108]
strh r6, [r0,#+190]
ldrh r6, [r0,#+202]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #110]
strh r4, [r0,#+192]
ldrh r4, [r0,#+204]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #112]
vldrw.u32 Q1, [Q2, #92]
strh r14, [r0,#+194]
ldrh r14, [r0,#+206]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #114]
strh r12, [r0,#+196]
ldrh r12, [r0,#+208]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #116]
strh r10, [r0,#+198]
ldrh r10, [r0,#+210]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #118]
strh r8, [r0,#+200]
ldrh r8, [r0,#+212]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #120]
strh r6, [r0,#+202]
ldrh r6, [r0,#+214]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #122]
strh r4, [r0,#+204]
ldrh r4, [r0,#+216]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #124]
strh r14, [r0,#+206]
ldrh r14, [r0,#+218]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #126]
vldrw.u32 Q3, [Q2, #92]
strh r12, [r0,#+208]
ldrh r12, [r0,#+220]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #128]
strh r10, [r0,#+210]
ldrh r10, [r0,#+222]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #130]
strh r8, [r0,#+212]
ldrh r8, [r0,#+224]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #132]
strh r6, [r0,#+214]
ldrh r6, [r0,#+226]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #134]
strh r4, [r0,#+216]
ldrh r4, [r0,#+228]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #136]
strh r14, [r0,#+218]
ldrh r14, [r0,#+230]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #138]
strh r12, [r0,#+220]
ldrh r12, [r0,#+232]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #140]
vldrw.u32 Q4, [Q2, #92]
strh r10, [r0,#+222]
ldrh r10, [r0,#+234]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #142]
strh r8, [r0,#+224]
ldrh r8, [r0,#+236]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #144]
strh r6, [r0,#+226]
ldrh r6, [r0,#+238]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #146]
strh r4, [r0,#+228]
ldrh r4, [r0,#+240]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #148]
strh r14, [r0,#+230]
ldrh r14, [r0,#+242]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #150]
strh r12, [r0,#+232]
ldrh r12, [r0,#+244]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #152]
strh r10, [r0,#+234]
ldrh r10, [r0,#+246]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #154]
vldrw.u32 Q5, [Q2, #92]
strh r8, [r0,#+236]
ldrh r8, [r0,#+248]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #156]
strh r6, [r0,#+238]
ldrh r6, [r0,#+250]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #158]
strh r4, [r0,#+240]
ldrh r4, [r0,#+252]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #160]
strh r14, [r0,#+242]
ldrh r14, [r0,#+254]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #162]
strh r12, [r0,#+244]
ldrh r12, [r0,#+256]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #164]
strh r10, [r0,#+246]
ldrh r10, [r0,#+258]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #166]
strh r8, [r0,#+248]
ldrh r8, [r0,#+260]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #168]
vldrw.u32 Q6, [Q2, #92]
strh r6, [r0,#+250]
ldrh r6, [r0,#+262]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #170]
strh r4, [r0,#+252]
ldrh r4, [r0,#+264]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #172]
strh r14, [r0,#+254]
ldrh r14, [r0,#+266]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #174]
strh r12, [r0,#+256]
ldrh r12, [r0,#+268]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #176]
strh r10, [r0,#+258]
ldrh r10, [r0,#+270]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #178]
strh r8, [r0,#+260]
ldrh r8, [r0,#+272]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #180]
strh r6, [r0,#+262]
ldrh r6, [r0,#+274]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #182]
vldrw.u32 Q7, [Q2, #92]
strh r4, [r0,#+264]
ldrh r4, [r0,#+276]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #184]
strh r14, [r0,#+266]
ldrh r14, [r0,#+278]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #186]
strh r12, [r0,#+268]
ldrh r12, [r0,#+280]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #188]
strh r10, [r0,#+270]
ldrh r10, [r0,#+282]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #190]
strh r8, [r0,#+272]
ldrh r8, [r0,#+284]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #192]
strh r6, [r0,#+274]
ldrh r6, [r0,#+286]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #194]
strh r4, [r0,#+276]
ldrh r4, [r0,#+288]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #196]
vldrw.u32 Q0, [Q2, #92]
strh r14, [r0,#+278]
ldrh r14, [r0,#+290]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #198]
strh r12, [r0,#+280]
ldrh r12, [r0,#+292]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #200]
strh r10, [r0,#+282]
ldrh r10, [r0,#+294]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #202]
strh r8, [r0,#+284]
ldrh r8, [r0,#+296]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #204]
strh r6, [r0,#+286]
ldrh r6, [r0,#+298]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #206]
strh r4, [r0,#+288]
ldrh r4, [r0,#+300]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #208]
strh r14, [r0,#+290]
ldrh r14, [r0,#+302]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #210]
vldrw.u32 Q1, [Q2, #92]
strh r12, [r0,#+292]
ldrh r12, [r0,#+304]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #212]
strh r10, [r0,#+294]
ldrh r10, [r0,#+306]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #214]
strh r8, [r0,#+296]
ldrh r8, [r0,#+308]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #216]
strh r6, [r0,#+298]
ldrh r6, [r0,#+310]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #218]
strh r4, [r0,#+300]
ldrh r4, [r0,#+312]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #220]
strh r14, [r0,#+302]
ldrh r14, [r0,#+314]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #222]
strh r12, [r0,#+304]
ldrh r12, [r0,#+316]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #224]
vldrw.u32 Q3, [Q2, #92]
strh r10, [r0,#+306]
ldrh r10, [r0,#+318]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #226]
strh r8, [r0,#+308]
ldrh r8, [r0,#+320]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #228]
strh r6, [r0,#+310]
ldrh r6, [r0,#+322]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #230]
strh r4, [r0,#+312]
ldrh r4, [r0,#+324]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #232]
strh r14, [r0,#+314]
ldrh r14, [r0,#+326]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #234]
strh r12, [r0,#+316]
ldrh r12, [r0,#+328]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #236]
strh r10, [r0,#+318]
ldrh r10, [r0,#+330]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #238]
vldrw.u32 Q4, [Q2, #92]
strh r8, [r0,#+320]
ldrh r8, [r0,#+332]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #240]
strh r6, [r0,#+322]
vmladavx.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #242]
strh r4, [r0,#+324]
vmladavx.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #244]
strh r14, [r0,#+326]
vmladavx.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #246]
strh r12, [r0,#+328]
vmladavx.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #248]
strh r10, [r0,#+330]
vmladavx.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #250]
strh r8, [r0,#+332]
vmladavx.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #252]
vldrw.u32 Q5, [Q2, #92]
strh r6, [r0,#+334]
vmladavx.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #254]
strh r4, [r0,#+336]
vmladavx.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #-14]
vldrw.u32 Q0, [Q2, #108]
strh r14, [r0,#+338]
ldrh r14, [r0,#+96]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #-12]
strh r12, [r0,#+340]
ldrh r12, [r0,#+98]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #-10]
strh r10, [r0,#+342]
ldrh r10, [r0,#+100]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #-8]
strh r8, [r0,#+344]
ldrh r8, [r0,#+102]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #-6]
strh r6, [r0,#+346]
ldrh r6, [r0,#+104]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #-4]
strh r4, [r0,#+348]
ldrh r4, [r0,#+106]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #-2]
strh r14, [r0,#+96]
ldrh r14, [r0,#+108]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #0]
vldrw.u32 Q1, [Q2, #108]
strh r12, [r0,#+98]
ldrh r12, [r0,#+110]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #2]
strh r10, [r0,#+100]
ldrh r10, [r0,#+112]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #4]
strh r8, [r0,#+102]
ldrh r8, [r0,#+114]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #6]
strh r6, [r0,#+104]
ldrh r6, [r0,#+116]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #8]
strh r4, [r0,#+106]
ldrh r4, [r0,#+118]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #10]
strh r14, [r0,#+108]
ldrh r14, [r0,#+120]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #12]
strh r12, [r0,#+110]
ldrh r12, [r0,#+122]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #14]
vldrw.u32 Q3, [Q2, #108]
strh r10, [r0,#+112]
ldrh r10, [r0,#+124]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #16]
strh r8, [r0,#+114]
ldrh r8, [r0,#+126]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #18]
strh r6, [r0,#+116]
ldrh r6, [r0,#+128]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #20]
strh r4, [r0,#+118]
ldrh r4, [r0,#+130]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #22]
strh r14, [r0,#+120]
ldrh r14, [r0,#+132]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #24]
strh r12, [r0,#+122]
ldrh r12, [r0,#+134]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #26]
strh r10, [r0,#+124]
ldrh r10, [r0,#+136]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #28]
vldrw.u32 Q4, [Q2, #108]
strh r8, [r0,#+126]
ldrh r8, [r0,#+138]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #30]
strh r6, [r0,#+128]
ldrh r6, [r0,#+140]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #32]
strh r4, [r0,#+130]
ldrh r4, [r0,#+142]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #34]
strh r14, [r0,#+132]
ldrh r14, [r0,#+144]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #36]
strh r12, [r0,#+134]
ldrh r12, [r0,#+146]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #38]
strh r10, [r0,#+136]
ldrh r10, [r0,#+148]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #40]
strh r8, [r0,#+138]
ldrh r8, [r0,#+150]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #42]
vldrw.u32 Q5, [Q2, #108]
strh r6, [r0,#+140]
ldrh r6, [r0,#+152]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #44]
strh r4, [r0,#+142]
ldrh r4, [r0,#+154]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #46]
strh r14, [r0,#+144]
ldrh r14, [r0,#+156]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #48]
strh r12, [r0,#+146]
ldrh r12, [r0,#+158]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #50]
strh r10, [r0,#+148]
ldrh r10, [r0,#+160]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #52]
strh r8, [r0,#+150]
ldrh r8, [r0,#+162]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #54]
strh r6, [r0,#+152]
ldrh r6, [r0,#+164]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #56]
vldrw.u32 Q6, [Q2, #108]
strh r4, [r0,#+154]
ldrh r4, [r0,#+166]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #58]
strh r14, [r0,#+156]
ldrh r14, [r0,#+168]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #60]
strh r12, [r0,#+158]
ldrh r12, [r0,#+170]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #62]
strh r10, [r0,#+160]
ldrh r10, [r0,#+172]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #64]
strh r8, [r0,#+162]
ldrh r8, [r0,#+174]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #66]
strh r6, [r0,#+164]
ldrh r6, [r0,#+176]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #68]
strh r4, [r0,#+166]
ldrh r4, [r0,#+178]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #70]
vldrw.u32 Q7, [Q2, #108]
strh r14, [r0,#+168]
ldrh r14, [r0,#+180]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #72]
strh r12, [r0,#+170]
ldrh r12, [r0,#+182]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #74]
strh r10, [r0,#+172]
ldrh r10, [r0,#+184]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #76]
strh r8, [r0,#+174]
ldrh r8, [r0,#+186]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #78]
strh r6, [r0,#+176]
ldrh r6, [r0,#+188]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #80]
strh r4, [r0,#+178]
ldrh r4, [r0,#+190]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #82]
strh r14, [r0,#+180]
ldrh r14, [r0,#+192]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #84]
vldrw.u32 Q0, [Q2, #108]
strh r12, [r0,#+182]
ldrh r12, [r0,#+194]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #86]
strh r10, [r0,#+184]
ldrh r10, [r0,#+196]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #88]
strh r8, [r0,#+186]
ldrh r8, [r0,#+198]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #90]
strh r6, [r0,#+188]
ldrh r6, [r0,#+200]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #92]
strh r4, [r0,#+190]
ldrh r4, [r0,#+202]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #94]
strh r14, [r0,#+192]
ldrh r14, [r0,#+204]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #96]
strh r12, [r0,#+194]
ldrh r12, [r0,#+206]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #98]
vldrw.u32 Q1, [Q2, #108]
strh r10, [r0,#+196]
ldrh r10, [r0,#+208]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #100]
strh r8, [r0,#+198]
ldrh r8, [r0,#+210]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #102]
strh r6, [r0,#+200]
ldrh r6, [r0,#+212]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #104]
strh r4, [r0,#+202]
ldrh r4, [r0,#+214]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #106]
strh r14, [r0,#+204]
ldrh r14, [r0,#+216]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #108]
strh r12, [r0,#+206]
ldrh r12, [r0,#+218]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #110]
strh r10, [r0,#+208]
ldrh r10, [r0,#+220]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #112]
vldrw.u32 Q3, [Q2, #108]
strh r8, [r0,#+210]
ldrh r8, [r0,#+222]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #114]
strh r6, [r0,#+212]
ldrh r6, [r0,#+224]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #116]
strh r4, [r0,#+214]
ldrh r4, [r0,#+226]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #118]
strh r14, [r0,#+216]
ldrh r14, [r0,#+228]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #120]
strh r12, [r0,#+218]
ldrh r12, [r0,#+230]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #122]
strh r10, [r0,#+220]
ldrh r10, [r0,#+232]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #124]
strh r8, [r0,#+222]
ldrh r8, [r0,#+234]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #126]
vldrw.u32 Q4, [Q2, #108]
strh r6, [r0,#+224]
ldrh r6, [r0,#+236]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #128]
strh r4, [r0,#+226]
ldrh r4, [r0,#+238]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #130]
strh r14, [r0,#+228]
ldrh r14, [r0,#+240]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #132]
strh r12, [r0,#+230]
ldrh r12, [r0,#+242]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #134]
strh r10, [r0,#+232]
ldrh r10, [r0,#+244]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #136]
strh r8, [r0,#+234]
ldrh r8, [r0,#+246]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #138]
strh r6, [r0,#+236]
ldrh r6, [r0,#+248]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #140]
vldrw.u32 Q5, [Q2, #108]
strh r4, [r0,#+238]
ldrh r4, [r0,#+250]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #142]
strh r14, [r0,#+240]
ldrh r14, [r0,#+252]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #144]
strh r12, [r0,#+242]
ldrh r12, [r0,#+254]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #146]
strh r10, [r0,#+244]
ldrh r10, [r0,#+256]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #148]
strh r8, [r0,#+246]
ldrh r8, [r0,#+258]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #150]
strh r6, [r0,#+248]
ldrh r6, [r0,#+260]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #152]
strh r4, [r0,#+250]
ldrh r4, [r0,#+262]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #154]
vldrw.u32 Q6, [Q2, #108]
strh r14, [r0,#+252]
ldrh r14, [r0,#+264]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #156]
strh r12, [r0,#+254]
ldrh r12, [r0,#+266]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #158]
strh r10, [r0,#+256]
ldrh r10, [r0,#+268]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #160]
strh r8, [r0,#+258]
ldrh r8, [r0,#+270]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #162]
strh r6, [r0,#+260]
ldrh r6, [r0,#+272]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #164]
strh r4, [r0,#+262]
ldrh r4, [r0,#+274]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #166]
strh r14, [r0,#+264]
ldrh r14, [r0,#+276]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #168]
vldrw.u32 Q7, [Q2, #108]
strh r12, [r0,#+266]
ldrh r12, [r0,#+278]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #170]
strh r10, [r0,#+268]
ldrh r10, [r0,#+280]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #172]
strh r8, [r0,#+270]
ldrh r8, [r0,#+282]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #174]
strh r6, [r0,#+272]
ldrh r6, [r0,#+284]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #176]
strh r4, [r0,#+274]
ldrh r4, [r0,#+286]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #178]
strh r14, [r0,#+276]
ldrh r14, [r0,#+288]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #180]
strh r12, [r0,#+278]
ldrh r12, [r0,#+290]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #182]
vldrw.u32 Q0, [Q2, #108]
strh r10, [r0,#+280]
ldrh r10, [r0,#+292]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #184]
strh r8, [r0,#+282]
ldrh r8, [r0,#+294]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #186]
strh r6, [r0,#+284]
ldrh r6, [r0,#+296]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #188]
strh r4, [r0,#+286]
ldrh r4, [r0,#+298]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #190]
strh r14, [r0,#+288]
ldrh r14, [r0,#+300]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #192]
strh r12, [r0,#+290]
ldrh r12, [r0,#+302]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #194]
strh r10, [r0,#+292]
ldrh r10, [r0,#+304]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #196]
vldrw.u32 Q1, [Q2, #108]
strh r8, [r0,#+294]
ldrh r8, [r0,#+306]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #198]
strh r6, [r0,#+296]
ldrh r6, [r0,#+308]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #200]
strh r4, [r0,#+298]
ldrh r4, [r0,#+310]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #202]
strh r14, [r0,#+300]
ldrh r14, [r0,#+312]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #204]
strh r12, [r0,#+302]
ldrh r12, [r0,#+314]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #206]
strh r10, [r0,#+304]
ldrh r10, [r0,#+316]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #208]
strh r8, [r0,#+306]
ldrh r8, [r0,#+318]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #210]
vldrw.u32 Q3, [Q2, #108]
strh r6, [r0,#+308]
ldrh r6, [r0,#+320]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #212]
strh r4, [r0,#+310]
ldrh r4, [r0,#+322]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #214]
strh r14, [r0,#+312]
ldrh r14, [r0,#+324]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #216]
strh r12, [r0,#+314]
ldrh r12, [r0,#+326]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #218]
strh r10, [r0,#+316]
ldrh r10, [r0,#+328]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #220]
strh r8, [r0,#+318]
ldrh r8, [r0,#+330]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #222]
strh r6, [r0,#+320]
ldrh r6, [r0,#+332]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #224]
vldrw.u32 Q4, [Q2, #108]
strh r4, [r0,#+322]
ldrh r4, [r0,#+334]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #226]
strh r14, [r0,#+324]
ldrh r14, [r0,#+336]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #228]
strh r12, [r0,#+326]
ldrh r12, [r0,#+338]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #230]
strh r10, [r0,#+328]
ldrh r10, [r0,#+340]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #232]
strh r8, [r0,#+330]
ldrh r8, [r0,#+342]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #234]
strh r6, [r0,#+332]
ldrh r6, [r0,#+344]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #236]
strh r4, [r0,#+334]
ldrh r4, [r0,#+346]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #238]
vldrw.u32 Q5, [Q2, #108]
strh r14, [r0,#+336]
ldrh r14, [r0,#+348]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #240]
strh r12, [r0,#+338]
vmladavx.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #242]
strh r10, [r0,#+340]
vmladavx.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #244]
strh r8, [r0,#+342]
vmladavx.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #246]
strh r6, [r0,#+344]
vmladavx.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #248]
strh r4, [r0,#+346]
vmladavx.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #250]
strh r14, [r0,#+348]
vmladavx.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #252]
vldrw.u32 Q6, [Q2, #108]
strh r12, [r0,#+350]
vmladavx.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #254]
strh r10, [r0,#+352]
vmladavx.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #-14]
vldrw.u32 Q1, [Q2, #124]
strh r8, [r0,#+354]
ldrh r8, [r0,#+112]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #-12]
strh r6, [r0,#+356]
ldrh r6, [r0,#+114]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #-10]
strh r4, [r0,#+358]
ldrh r4, [r0,#+116]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #-8]
strh r14, [r0,#+360]
ldrh r14, [r0,#+118]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #-6]
strh r12, [r0,#+362]
ldrh r12, [r0,#+120]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #-4]
strh r10, [r0,#+364]
ldrh r10, [r0,#+122]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #-2]
strh r8, [r0,#+112]
ldrh r8, [r0,#+124]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #0]
vldrw.u32 Q3, [Q2, #124]
strh r6, [r0,#+114]
ldrh r6, [r0,#+126]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #2]
strh r4, [r0,#+116]
ldrh r4, [r0,#+128]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #4]
strh r14, [r0,#+118]
ldrh r14, [r0,#+130]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #6]
strh r12, [r0,#+120]
ldrh r12, [r0,#+132]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #8]
strh r10, [r0,#+122]
ldrh r10, [r0,#+134]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #10]
strh r8, [r0,#+124]
ldrh r8, [r0,#+136]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #12]
strh r6, [r0,#+126]
ldrh r6, [r0,#+138]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #14]
vldrw.u32 Q4, [Q2, #124]
strh r4, [r0,#+128]
ldrh r4, [r0,#+140]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #16]
strh r14, [r0,#+130]
ldrh r14, [r0,#+142]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #18]
strh r12, [r0,#+132]
ldrh r12, [r0,#+144]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #20]
strh r10, [r0,#+134]
ldrh r10, [r0,#+146]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #22]
strh r8, [r0,#+136]
ldrh r8, [r0,#+148]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #24]
strh r6, [r0,#+138]
ldrh r6, [r0,#+150]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #26]
strh r4, [r0,#+140]
ldrh r4, [r0,#+152]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #28]
vldrw.u32 Q5, [Q2, #124]
strh r14, [r0,#+142]
ldrh r14, [r0,#+154]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #30]
strh r12, [r0,#+144]
ldrh r12, [r0,#+156]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #32]
strh r10, [r0,#+146]
ldrh r10, [r0,#+158]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #34]
strh r8, [r0,#+148]
ldrh r8, [r0,#+160]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #36]
strh r6, [r0,#+150]
ldrh r6, [r0,#+162]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #38]
strh r4, [r0,#+152]
ldrh r4, [r0,#+164]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #40]
strh r14, [r0,#+154]
ldrh r14, [r0,#+166]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #42]
vldrw.u32 Q6, [Q2, #124]
strh r12, [r0,#+156]
ldrh r12, [r0,#+168]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #44]
strh r10, [r0,#+158]
ldrh r10, [r0,#+170]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #46]
strh r8, [r0,#+160]
ldrh r8, [r0,#+172]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #48]
strh r6, [r0,#+162]
ldrh r6, [r0,#+174]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #50]
strh r4, [r0,#+164]
ldrh r4, [r0,#+176]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #52]
strh r14, [r0,#+166]
ldrh r14, [r0,#+178]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #54]
strh r12, [r0,#+168]
ldrh r12, [r0,#+180]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #56]
vldrw.u32 Q7, [Q2, #124]
strh r10, [r0,#+170]
ldrh r10, [r0,#+182]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #58]
strh r8, [r0,#+172]
ldrh r8, [r0,#+184]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #60]
strh r6, [r0,#+174]
ldrh r6, [r0,#+186]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #62]
strh r4, [r0,#+176]
ldrh r4, [r0,#+188]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #64]
strh r14, [r0,#+178]
ldrh r14, [r0,#+190]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #66]
strh r12, [r0,#+180]
ldrh r12, [r0,#+192]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #68]
strh r10, [r0,#+182]
ldrh r10, [r0,#+194]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #70]
vldrw.u32 Q0, [Q2, #124]
strh r8, [r0,#+184]
ldrh r8, [r0,#+196]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #72]
strh r6, [r0,#+186]
ldrh r6, [r0,#+198]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #74]
strh r4, [r0,#+188]
ldrh r4, [r0,#+200]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #76]
strh r14, [r0,#+190]
ldrh r14, [r0,#+202]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #78]
strh r12, [r0,#+192]
ldrh r12, [r0,#+204]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #80]
strh r10, [r0,#+194]
ldrh r10, [r0,#+206]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #82]
strh r8, [r0,#+196]
ldrh r8, [r0,#+208]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #84]
vldrw.u32 Q1, [Q2, #124]
strh r6, [r0,#+198]
ldrh r6, [r0,#+210]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #86]
strh r4, [r0,#+200]
ldrh r4, [r0,#+212]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #88]
strh r14, [r0,#+202]
ldrh r14, [r0,#+214]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #90]
strh r12, [r0,#+204]
ldrh r12, [r0,#+216]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #92]
strh r10, [r0,#+206]
ldrh r10, [r0,#+218]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #94]
strh r8, [r0,#+208]
ldrh r8, [r0,#+220]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #96]
strh r6, [r0,#+210]
ldrh r6, [r0,#+222]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #98]
vldrw.u32 Q3, [Q2, #124]
strh r4, [r0,#+212]
ldrh r4, [r0,#+224]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #100]
strh r14, [r0,#+214]
ldrh r14, [r0,#+226]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #102]
strh r12, [r0,#+216]
ldrh r12, [r0,#+228]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #104]
strh r10, [r0,#+218]
ldrh r10, [r0,#+230]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #106]
strh r8, [r0,#+220]
ldrh r8, [r0,#+232]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #108]
strh r6, [r0,#+222]
ldrh r6, [r0,#+234]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #110]
strh r4, [r0,#+224]
ldrh r4, [r0,#+236]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #112]
vldrw.u32 Q4, [Q2, #124]
strh r14, [r0,#+226]
ldrh r14, [r0,#+238]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #114]
strh r12, [r0,#+228]
ldrh r12, [r0,#+240]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #116]
strh r10, [r0,#+230]
ldrh r10, [r0,#+242]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #118]
strh r8, [r0,#+232]
ldrh r8, [r0,#+244]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #120]
strh r6, [r0,#+234]
ldrh r6, [r0,#+246]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #122]
strh r4, [r0,#+236]
ldrh r4, [r0,#+248]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #124]
strh r14, [r0,#+238]
ldrh r14, [r0,#+250]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #126]
vldrw.u32 Q5, [Q2, #124]
strh r12, [r0,#+240]
ldrh r12, [r0,#+252]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #128]
strh r10, [r0,#+242]
ldrh r10, [r0,#+254]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #130]
strh r8, [r0,#+244]
ldrh r8, [r0,#+256]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #132]
strh r6, [r0,#+246]
ldrh r6, [r0,#+258]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #134]
strh r4, [r0,#+248]
ldrh r4, [r0,#+260]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #136]
strh r14, [r0,#+250]
ldrh r14, [r0,#+262]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #138]
strh r12, [r0,#+252]
ldrh r12, [r0,#+264]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #140]
vldrw.u32 Q6, [Q2, #124]
strh r10, [r0,#+254]
ldrh r10, [r0,#+266]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #142]
strh r8, [r0,#+256]
ldrh r8, [r0,#+268]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #144]
strh r6, [r0,#+258]
ldrh r6, [r0,#+270]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #146]
strh r4, [r0,#+260]
ldrh r4, [r0,#+272]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #148]
strh r14, [r0,#+262]
ldrh r14, [r0,#+274]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #150]
strh r12, [r0,#+264]
ldrh r12, [r0,#+276]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #152]
strh r10, [r0,#+266]
ldrh r10, [r0,#+278]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #154]
vldrw.u32 Q7, [Q2, #124]
strh r8, [r0,#+268]
ldrh r8, [r0,#+280]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #156]
strh r6, [r0,#+270]
ldrh r6, [r0,#+282]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #158]
strh r4, [r0,#+272]
ldrh r4, [r0,#+284]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #160]
strh r14, [r0,#+274]
ldrh r14, [r0,#+286]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #162]
strh r12, [r0,#+276]
ldrh r12, [r0,#+288]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #164]
strh r10, [r0,#+278]
ldrh r10, [r0,#+290]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #166]
strh r8, [r0,#+280]
ldrh r8, [r0,#+292]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #168]
vldrw.u32 Q0, [Q2, #124]
strh r6, [r0,#+282]
ldrh r6, [r0,#+294]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #170]
strh r4, [r0,#+284]
ldrh r4, [r0,#+296]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #172]
strh r14, [r0,#+286]
ldrh r14, [r0,#+298]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #174]
strh r12, [r0,#+288]
ldrh r12, [r0,#+300]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #176]
strh r10, [r0,#+290]
ldrh r10, [r0,#+302]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #178]
strh r8, [r0,#+292]
ldrh r8, [r0,#+304]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #180]
strh r6, [r0,#+294]
ldrh r6, [r0,#+306]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #182]
vldrw.u32 Q1, [Q2, #124]
strh r4, [r0,#+296]
ldrh r4, [r0,#+308]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #184]
strh r14, [r0,#+298]
ldrh r14, [r0,#+310]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #186]
strh r12, [r0,#+300]
ldrh r12, [r0,#+312]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #188]
strh r10, [r0,#+302]
ldrh r10, [r0,#+314]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #190]
strh r8, [r0,#+304]
ldrh r8, [r0,#+316]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #192]
strh r6, [r0,#+306]
ldrh r6, [r0,#+318]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #194]
strh r4, [r0,#+308]
ldrh r4, [r0,#+320]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #196]
vldrw.u32 Q3, [Q2, #124]
strh r14, [r0,#+310]
ldrh r14, [r0,#+322]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #198]
strh r12, [r0,#+312]
ldrh r12, [r0,#+324]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #200]
strh r10, [r0,#+314]
ldrh r10, [r0,#+326]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #202]
strh r8, [r0,#+316]
ldrh r8, [r0,#+328]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #204]
strh r6, [r0,#+318]
ldrh r6, [r0,#+330]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #206]
strh r4, [r0,#+320]
ldrh r4, [r0,#+332]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #208]
strh r14, [r0,#+322]
ldrh r14, [r0,#+334]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #210]
vldrw.u32 Q4, [Q2, #124]
strh r12, [r0,#+324]
ldrh r12, [r0,#+336]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #212]
strh r10, [r0,#+326]
ldrh r10, [r0,#+338]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #214]
strh r8, [r0,#+328]
ldrh r8, [r0,#+340]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #216]
strh r6, [r0,#+330]
ldrh r6, [r0,#+342]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #218]
strh r4, [r0,#+332]
ldrh r4, [r0,#+344]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #220]
strh r14, [r0,#+334]
ldrh r14, [r0,#+346]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #222]
strh r12, [r0,#+336]
ldrh r12, [r0,#+348]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #224]
vldrw.u32 Q5, [Q2, #124]
strh r10, [r0,#+338]
ldrh r10, [r0,#+350]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #226]
strh r8, [r0,#+340]
ldrh r8, [r0,#+352]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #228]
strh r6, [r0,#+342]
ldrh r6, [r0,#+354]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #230]
strh r4, [r0,#+344]
ldrh r4, [r0,#+356]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #232]
strh r14, [r0,#+346]
ldrh r14, [r0,#+358]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #234]
strh r12, [r0,#+348]
ldrh r12, [r0,#+360]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #236]
strh r10, [r0,#+350]
ldrh r10, [r0,#+362]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #238]
vldrw.u32 Q6, [Q2, #124]
strh r8, [r0,#+352]
ldrh r8, [r0,#+364]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #240]
strh r6, [r0,#+354]
vmladavx.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #242]
strh r4, [r0,#+356]
vmladavx.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #244]
strh r14, [r0,#+358]
vmladavx.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #246]
strh r12, [r0,#+360]
vmladavx.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #248]
strh r10, [r0,#+362]
vmladavx.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #250]
strh r8, [r0,#+364]
vmladavx.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #252]
vldrw.u32 Q7, [Q2, #124]
strh r6, [r0,#+366]
vmladavx.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #254]
strh r4, [r0,#+368]
vmladavx.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #-14]
vldrw.u32 Q3, [Q2, #140]
strh r14, [r0,#+370]
ldrh r14, [r0,#+128]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #-12]
strh r12, [r0,#+372]
ldrh r12, [r0,#+130]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #-10]
strh r10, [r0,#+374]
ldrh r10, [r0,#+132]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #-8]
strh r8, [r0,#+376]
ldrh r8, [r0,#+134]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #-6]
strh r6, [r0,#+378]
ldrh r6, [r0,#+136]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #-4]
strh r4, [r0,#+380]
ldrh r4, [r0,#+138]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #-2]
strh r14, [r0,#+128]
ldrh r14, [r0,#+140]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #0]
vldrw.u32 Q4, [Q2, #140]
strh r12, [r0,#+130]
ldrh r12, [r0,#+142]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #2]
strh r10, [r0,#+132]
ldrh r10, [r0,#+144]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #4]
strh r8, [r0,#+134]
ldrh r8, [r0,#+146]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #6]
strh r6, [r0,#+136]
ldrh r6, [r0,#+148]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #8]
strh r4, [r0,#+138]
ldrh r4, [r0,#+150]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #10]
strh r14, [r0,#+140]
ldrh r14, [r0,#+152]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #12]
strh r12, [r0,#+142]
ldrh r12, [r0,#+154]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #14]
vldrw.u32 Q5, [Q2, #140]
strh r10, [r0,#+144]
ldrh r10, [r0,#+156]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #16]
strh r8, [r0,#+146]
ldrh r8, [r0,#+158]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #18]
strh r6, [r0,#+148]
ldrh r6, [r0,#+160]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #20]
strh r4, [r0,#+150]
ldrh r4, [r0,#+162]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #22]
strh r14, [r0,#+152]
ldrh r14, [r0,#+164]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #24]
strh r12, [r0,#+154]
ldrh r12, [r0,#+166]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #26]
strh r10, [r0,#+156]
ldrh r10, [r0,#+168]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #28]
vldrw.u32 Q6, [Q2, #140]
strh r8, [r0,#+158]
ldrh r8, [r0,#+170]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #30]
strh r6, [r0,#+160]
ldrh r6, [r0,#+172]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #32]
strh r4, [r0,#+162]
ldrh r4, [r0,#+174]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #34]
strh r14, [r0,#+164]
ldrh r14, [r0,#+176]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #36]
strh r12, [r0,#+166]
ldrh r12, [r0,#+178]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #38]
strh r10, [r0,#+168]
ldrh r10, [r0,#+180]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #40]
strh r8, [r0,#+170]
ldrh r8, [r0,#+182]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #42]
vldrw.u32 Q7, [Q2, #140]
strh r6, [r0,#+172]
ldrh r6, [r0,#+184]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #44]
strh r4, [r0,#+174]
ldrh r4, [r0,#+186]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #46]
strh r14, [r0,#+176]
ldrh r14, [r0,#+188]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #48]
strh r12, [r0,#+178]
ldrh r12, [r0,#+190]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #50]
strh r10, [r0,#+180]
ldrh r10, [r0,#+192]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #52]
strh r8, [r0,#+182]
ldrh r8, [r0,#+194]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #54]
strh r6, [r0,#+184]
ldrh r6, [r0,#+196]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #56]
vldrw.u32 Q0, [Q2, #140]
strh r4, [r0,#+186]
ldrh r4, [r0,#+198]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #58]
strh r14, [r0,#+188]
ldrh r14, [r0,#+200]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #60]
strh r12, [r0,#+190]
ldrh r12, [r0,#+202]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #62]
strh r10, [r0,#+192]
ldrh r10, [r0,#+204]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #64]
strh r8, [r0,#+194]
ldrh r8, [r0,#+206]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #66]
strh r6, [r0,#+196]
ldrh r6, [r0,#+208]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #68]
strh r4, [r0,#+198]
ldrh r4, [r0,#+210]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #70]
vldrw.u32 Q1, [Q2, #140]
strh r14, [r0,#+200]
ldrh r14, [r0,#+212]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #72]
strh r12, [r0,#+202]
ldrh r12, [r0,#+214]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #74]
strh r10, [r0,#+204]
ldrh r10, [r0,#+216]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #76]
strh r8, [r0,#+206]
ldrh r8, [r0,#+218]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #78]
strh r6, [r0,#+208]
ldrh r6, [r0,#+220]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #80]
strh r4, [r0,#+210]
ldrh r4, [r0,#+222]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #82]
strh r14, [r0,#+212]
ldrh r14, [r0,#+224]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #84]
vldrw.u32 Q3, [Q2, #140]
strh r12, [r0,#+214]
ldrh r12, [r0,#+226]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #86]
strh r10, [r0,#+216]
ldrh r10, [r0,#+228]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #88]
strh r8, [r0,#+218]
ldrh r8, [r0,#+230]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #90]
strh r6, [r0,#+220]
ldrh r6, [r0,#+232]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #92]
strh r4, [r0,#+222]
ldrh r4, [r0,#+234]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #94]
strh r14, [r0,#+224]
ldrh r14, [r0,#+236]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #96]
strh r12, [r0,#+226]
ldrh r12, [r0,#+238]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #98]
vldrw.u32 Q4, [Q2, #140]
strh r10, [r0,#+228]
ldrh r10, [r0,#+240]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #100]
strh r8, [r0,#+230]
ldrh r8, [r0,#+242]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #102]
strh r6, [r0,#+232]
ldrh r6, [r0,#+244]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #104]
strh r4, [r0,#+234]
ldrh r4, [r0,#+246]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #106]
strh r14, [r0,#+236]
ldrh r14, [r0,#+248]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #108]
strh r12, [r0,#+238]
ldrh r12, [r0,#+250]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #110]
strh r10, [r0,#+240]
ldrh r10, [r0,#+252]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #112]
vldrw.u32 Q5, [Q2, #140]
strh r8, [r0,#+242]
ldrh r8, [r0,#+254]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #114]
strh r6, [r0,#+244]
ldrh r6, [r0,#+256]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #116]
strh r4, [r0,#+246]
ldrh r4, [r0,#+258]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #118]
strh r14, [r0,#+248]
ldrh r14, [r0,#+260]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #120]
strh r12, [r0,#+250]
ldrh r12, [r0,#+262]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #122]
strh r10, [r0,#+252]
ldrh r10, [r0,#+264]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #124]
strh r8, [r0,#+254]
ldrh r8, [r0,#+266]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #126]
vldrw.u32 Q6, [Q2, #140]
strh r6, [r0,#+256]
ldrh r6, [r0,#+268]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #128]
strh r4, [r0,#+258]
ldrh r4, [r0,#+270]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #130]
strh r14, [r0,#+260]
ldrh r14, [r0,#+272]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #132]
strh r12, [r0,#+262]
ldrh r12, [r0,#+274]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #134]
strh r10, [r0,#+264]
ldrh r10, [r0,#+276]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #136]
strh r8, [r0,#+266]
ldrh r8, [r0,#+278]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #138]
strh r6, [r0,#+268]
ldrh r6, [r0,#+280]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #140]
vldrw.u32 Q7, [Q2, #140]
strh r4, [r0,#+270]
ldrh r4, [r0,#+282]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #142]
strh r14, [r0,#+272]
ldrh r14, [r0,#+284]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #144]
strh r12, [r0,#+274]
ldrh r12, [r0,#+286]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #146]
strh r10, [r0,#+276]
ldrh r10, [r0,#+288]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #148]
strh r8, [r0,#+278]
ldrh r8, [r0,#+290]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #150]
strh r6, [r0,#+280]
ldrh r6, [r0,#+292]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #152]
strh r4, [r0,#+282]
ldrh r4, [r0,#+294]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #154]
vldrw.u32 Q0, [Q2, #140]
strh r14, [r0,#+284]
ldrh r14, [r0,#+296]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #156]
strh r12, [r0,#+286]
ldrh r12, [r0,#+298]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #158]
strh r10, [r0,#+288]
ldrh r10, [r0,#+300]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #160]
strh r8, [r0,#+290]
ldrh r8, [r0,#+302]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #162]
strh r6, [r0,#+292]
ldrh r6, [r0,#+304]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #164]
strh r4, [r0,#+294]
ldrh r4, [r0,#+306]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #166]
strh r14, [r0,#+296]
ldrh r14, [r0,#+308]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #168]
vldrw.u32 Q1, [Q2, #140]
strh r12, [r0,#+298]
ldrh r12, [r0,#+310]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #170]
strh r10, [r0,#+300]
ldrh r10, [r0,#+312]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #172]
strh r8, [r0,#+302]
ldrh r8, [r0,#+314]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #174]
strh r6, [r0,#+304]
ldrh r6, [r0,#+316]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #176]
strh r4, [r0,#+306]
ldrh r4, [r0,#+318]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #178]
strh r14, [r0,#+308]
ldrh r14, [r0,#+320]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #180]
strh r12, [r0,#+310]
ldrh r12, [r0,#+322]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #182]
vldrw.u32 Q3, [Q2, #140]
strh r10, [r0,#+312]
ldrh r10, [r0,#+324]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #184]
strh r8, [r0,#+314]
ldrh r8, [r0,#+326]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #186]
strh r6, [r0,#+316]
ldrh r6, [r0,#+328]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #188]
strh r4, [r0,#+318]
ldrh r4, [r0,#+330]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #190]
strh r14, [r0,#+320]
ldrh r14, [r0,#+332]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #192]
strh r12, [r0,#+322]
ldrh r12, [r0,#+334]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #194]
strh r10, [r0,#+324]
ldrh r10, [r0,#+336]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #196]
vldrw.u32 Q4, [Q2, #140]
strh r8, [r0,#+326]
ldrh r8, [r0,#+338]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #198]
strh r6, [r0,#+328]
ldrh r6, [r0,#+340]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #200]
strh r4, [r0,#+330]
ldrh r4, [r0,#+342]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #202]
strh r14, [r0,#+332]
ldrh r14, [r0,#+344]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #204]
strh r12, [r0,#+334]
ldrh r12, [r0,#+346]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #206]
strh r10, [r0,#+336]
ldrh r10, [r0,#+348]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #208]
strh r8, [r0,#+338]
ldrh r8, [r0,#+350]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #210]
vldrw.u32 Q5, [Q2, #140]
strh r6, [r0,#+340]
ldrh r6, [r0,#+352]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #212]
strh r4, [r0,#+342]
ldrh r4, [r0,#+354]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #214]
strh r14, [r0,#+344]
ldrh r14, [r0,#+356]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #216]
strh r12, [r0,#+346]
ldrh r12, [r0,#+358]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #218]
strh r10, [r0,#+348]
ldrh r10, [r0,#+360]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #220]
strh r8, [r0,#+350]
ldrh r8, [r0,#+362]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #222]
strh r6, [r0,#+352]
ldrh r6, [r0,#+364]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #224]
vldrw.u32 Q6, [Q2, #140]
strh r4, [r0,#+354]
ldrh r4, [r0,#+366]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #226]
strh r14, [r0,#+356]
ldrh r14, [r0,#+368]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #228]
strh r12, [r0,#+358]
ldrh r12, [r0,#+370]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #230]
strh r10, [r0,#+360]
ldrh r10, [r0,#+372]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #232]
strh r8, [r0,#+362]
ldrh r8, [r0,#+374]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #234]
strh r6, [r0,#+364]
ldrh r6, [r0,#+376]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #236]
strh r4, [r0,#+366]
ldrh r4, [r0,#+378]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #238]
vldrw.u32 Q7, [Q2, #140]
strh r14, [r0,#+368]
ldrh r14, [r0,#+380]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #240]
strh r12, [r0,#+370]
vmladavx.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #242]
strh r10, [r0,#+372]
vmladavx.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #244]
strh r8, [r0,#+374]
vmladavx.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #246]
strh r6, [r0,#+376]
vmladavx.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #248]
strh r4, [r0,#+378]
vmladavx.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #250]
strh r14, [r0,#+380]
vmladavx.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #252]
vldrw.u32 Q0, [Q2, #140]
strh r12, [r0,#+382]
vmladavx.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #254]
strh r10, [r0,#+384]
vmladavx.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #-14]
vldrw.u32 Q4, [Q2, #156]
strh r8, [r0,#+386]
ldrh r8, [r0,#+144]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #-12]
strh r6, [r0,#+388]
ldrh r6, [r0,#+146]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #-10]
strh r4, [r0,#+390]
ldrh r4, [r0,#+148]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #-8]
strh r14, [r0,#+392]
ldrh r14, [r0,#+150]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #-6]
strh r12, [r0,#+394]
ldrh r12, [r0,#+152]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #-4]
strh r10, [r0,#+396]
ldrh r10, [r0,#+154]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #-2]
strh r8, [r0,#+144]
ldrh r8, [r0,#+156]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #0]
vldrw.u32 Q5, [Q2, #156]
strh r6, [r0,#+146]
ldrh r6, [r0,#+158]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #2]
strh r4, [r0,#+148]
ldrh r4, [r0,#+160]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #4]
strh r14, [r0,#+150]
ldrh r14, [r0,#+162]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #6]
strh r12, [r0,#+152]
ldrh r12, [r0,#+164]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #8]
strh r10, [r0,#+154]
ldrh r10, [r0,#+166]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #10]
strh r8, [r0,#+156]
ldrh r8, [r0,#+168]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #12]
strh r6, [r0,#+158]
ldrh r6, [r0,#+170]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #14]
vldrw.u32 Q6, [Q2, #156]
strh r4, [r0,#+160]
ldrh r4, [r0,#+172]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #16]
strh r14, [r0,#+162]
ldrh r14, [r0,#+174]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #18]
strh r12, [r0,#+164]
ldrh r12, [r0,#+176]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #20]
strh r10, [r0,#+166]
ldrh r10, [r0,#+178]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #22]
strh r8, [r0,#+168]
ldrh r8, [r0,#+180]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #24]
strh r6, [r0,#+170]
ldrh r6, [r0,#+182]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #26]
strh r4, [r0,#+172]
ldrh r4, [r0,#+184]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #28]
vldrw.u32 Q7, [Q2, #156]
strh r14, [r0,#+174]
ldrh r14, [r0,#+186]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #30]
strh r12, [r0,#+176]
ldrh r12, [r0,#+188]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #32]
strh r10, [r0,#+178]
ldrh r10, [r0,#+190]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #34]
strh r8, [r0,#+180]
ldrh r8, [r0,#+192]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #36]
strh r6, [r0,#+182]
ldrh r6, [r0,#+194]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #38]
strh r4, [r0,#+184]
ldrh r4, [r0,#+196]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #40]
strh r14, [r0,#+186]
ldrh r14, [r0,#+198]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #42]
vldrw.u32 Q0, [Q2, #156]
strh r12, [r0,#+188]
ldrh r12, [r0,#+200]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #44]
strh r10, [r0,#+190]
ldrh r10, [r0,#+202]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #46]
strh r8, [r0,#+192]
ldrh r8, [r0,#+204]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #48]
strh r6, [r0,#+194]
ldrh r6, [r0,#+206]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #50]
strh r4, [r0,#+196]
ldrh r4, [r0,#+208]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #52]
strh r14, [r0,#+198]
ldrh r14, [r0,#+210]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #54]
strh r12, [r0,#+200]
ldrh r12, [r0,#+212]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #56]
vldrw.u32 Q1, [Q2, #156]
strh r10, [r0,#+202]
ldrh r10, [r0,#+214]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #58]
strh r8, [r0,#+204]
ldrh r8, [r0,#+216]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #60]
strh r6, [r0,#+206]
ldrh r6, [r0,#+218]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #62]
strh r4, [r0,#+208]
ldrh r4, [r0,#+220]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #64]
strh r14, [r0,#+210]
ldrh r14, [r0,#+222]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #66]
strh r12, [r0,#+212]
ldrh r12, [r0,#+224]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #68]
strh r10, [r0,#+214]
ldrh r10, [r0,#+226]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #70]
vldrw.u32 Q3, [Q2, #156]
strh r8, [r0,#+216]
ldrh r8, [r0,#+228]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #72]
strh r6, [r0,#+218]
ldrh r6, [r0,#+230]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #74]
strh r4, [r0,#+220]
ldrh r4, [r0,#+232]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #76]
strh r14, [r0,#+222]
ldrh r14, [r0,#+234]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #78]
strh r12, [r0,#+224]
ldrh r12, [r0,#+236]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #80]
strh r10, [r0,#+226]
ldrh r10, [r0,#+238]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #82]
strh r8, [r0,#+228]
ldrh r8, [r0,#+240]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #84]
vldrw.u32 Q4, [Q2, #156]
strh r6, [r0,#+230]
ldrh r6, [r0,#+242]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #86]
strh r4, [r0,#+232]
ldrh r4, [r0,#+244]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #88]
strh r14, [r0,#+234]
ldrh r14, [r0,#+246]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #90]
strh r12, [r0,#+236]
ldrh r12, [r0,#+248]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #92]
strh r10, [r0,#+238]
ldrh r10, [r0,#+250]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #94]
strh r8, [r0,#+240]
ldrh r8, [r0,#+252]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #96]
strh r6, [r0,#+242]
ldrh r6, [r0,#+254]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #98]
vldrw.u32 Q5, [Q2, #156]
strh r4, [r0,#+244]
ldrh r4, [r0,#+256]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #100]
strh r14, [r0,#+246]
ldrh r14, [r0,#+258]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #102]
strh r12, [r0,#+248]
ldrh r12, [r0,#+260]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #104]
strh r10, [r0,#+250]
ldrh r10, [r0,#+262]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #106]
strh r8, [r0,#+252]
ldrh r8, [r0,#+264]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #108]
strh r6, [r0,#+254]
ldrh r6, [r0,#+266]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #110]
strh r4, [r0,#+256]
ldrh r4, [r0,#+268]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #112]
vldrw.u32 Q6, [Q2, #156]
strh r14, [r0,#+258]
ldrh r14, [r0,#+270]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #114]
strh r12, [r0,#+260]
ldrh r12, [r0,#+272]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #116]
strh r10, [r0,#+262]
ldrh r10, [r0,#+274]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #118]
strh r8, [r0,#+264]
ldrh r8, [r0,#+276]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #120]
strh r6, [r0,#+266]
ldrh r6, [r0,#+278]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #122]
strh r4, [r0,#+268]
ldrh r4, [r0,#+280]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #124]
strh r14, [r0,#+270]
ldrh r14, [r0,#+282]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #126]
vldrw.u32 Q7, [Q2, #156]
strh r12, [r0,#+272]
ldrh r12, [r0,#+284]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #128]
strh r10, [r0,#+274]
ldrh r10, [r0,#+286]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #130]
strh r8, [r0,#+276]
ldrh r8, [r0,#+288]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #132]
strh r6, [r0,#+278]
ldrh r6, [r0,#+290]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #134]
strh r4, [r0,#+280]
ldrh r4, [r0,#+292]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #136]
strh r14, [r0,#+282]
ldrh r14, [r0,#+294]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #138]
strh r12, [r0,#+284]
ldrh r12, [r0,#+296]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #140]
vldrw.u32 Q0, [Q2, #156]
strh r10, [r0,#+286]
ldrh r10, [r0,#+298]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #142]
strh r8, [r0,#+288]
ldrh r8, [r0,#+300]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #144]
strh r6, [r0,#+290]
ldrh r6, [r0,#+302]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #146]
strh r4, [r0,#+292]
ldrh r4, [r0,#+304]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #148]
strh r14, [r0,#+294]
ldrh r14, [r0,#+306]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #150]
strh r12, [r0,#+296]
ldrh r12, [r0,#+308]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #152]
strh r10, [r0,#+298]
ldrh r10, [r0,#+310]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #154]
vldrw.u32 Q1, [Q2, #156]
strh r8, [r0,#+300]
ldrh r8, [r0,#+312]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #156]
strh r6, [r0,#+302]
ldrh r6, [r0,#+314]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #158]
strh r4, [r0,#+304]
ldrh r4, [r0,#+316]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #160]
strh r14, [r0,#+306]
ldrh r14, [r0,#+318]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #162]
strh r12, [r0,#+308]
ldrh r12, [r0,#+320]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #164]
strh r10, [r0,#+310]
ldrh r10, [r0,#+322]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #166]
strh r8, [r0,#+312]
ldrh r8, [r0,#+324]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #168]
vldrw.u32 Q3, [Q2, #156]
strh r6, [r0,#+314]
ldrh r6, [r0,#+326]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #170]
strh r4, [r0,#+316]
ldrh r4, [r0,#+328]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #172]
strh r14, [r0,#+318]
ldrh r14, [r0,#+330]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #174]
strh r12, [r0,#+320]
ldrh r12, [r0,#+332]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #176]
strh r10, [r0,#+322]
ldrh r10, [r0,#+334]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #178]
strh r8, [r0,#+324]
ldrh r8, [r0,#+336]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #180]
strh r6, [r0,#+326]
ldrh r6, [r0,#+338]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #182]
vldrw.u32 Q4, [Q2, #156]
strh r4, [r0,#+328]
ldrh r4, [r0,#+340]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #184]
strh r14, [r0,#+330]
ldrh r14, [r0,#+342]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #186]
strh r12, [r0,#+332]
ldrh r12, [r0,#+344]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #188]
strh r10, [r0,#+334]
ldrh r10, [r0,#+346]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #190]
strh r8, [r0,#+336]
ldrh r8, [r0,#+348]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #192]
strh r6, [r0,#+338]
ldrh r6, [r0,#+350]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #194]
strh r4, [r0,#+340]
ldrh r4, [r0,#+352]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #196]
vldrw.u32 Q5, [Q2, #156]
strh r14, [r0,#+342]
ldrh r14, [r0,#+354]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #198]
strh r12, [r0,#+344]
ldrh r12, [r0,#+356]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #200]
strh r10, [r0,#+346]
ldrh r10, [r0,#+358]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #202]
strh r8, [r0,#+348]
ldrh r8, [r0,#+360]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #204]
strh r6, [r0,#+350]
ldrh r6, [r0,#+362]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #206]
strh r4, [r0,#+352]
ldrh r4, [r0,#+364]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #208]
strh r14, [r0,#+354]
ldrh r14, [r0,#+366]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #210]
vldrw.u32 Q6, [Q2, #156]
strh r12, [r0,#+356]
ldrh r12, [r0,#+368]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #212]
strh r10, [r0,#+358]
ldrh r10, [r0,#+370]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #214]
strh r8, [r0,#+360]
ldrh r8, [r0,#+372]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #216]
strh r6, [r0,#+362]
ldrh r6, [r0,#+374]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #218]
strh r4, [r0,#+364]
ldrh r4, [r0,#+376]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #220]
strh r14, [r0,#+366]
ldrh r14, [r0,#+378]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #222]
strh r12, [r0,#+368]
ldrh r12, [r0,#+380]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #224]
vldrw.u32 Q7, [Q2, #156]
strh r10, [r0,#+370]
ldrh r10, [r0,#+382]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #226]
strh r8, [r0,#+372]
ldrh r8, [r0,#+384]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #228]
strh r6, [r0,#+374]
ldrh r6, [r0,#+386]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #230]
strh r4, [r0,#+376]
ldrh r4, [r0,#+388]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #232]
strh r14, [r0,#+378]
ldrh r14, [r0,#+390]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #234]
strh r12, [r0,#+380]
ldrh r12, [r0,#+392]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #236]
strh r10, [r0,#+382]
ldrh r10, [r0,#+394]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #238]
vldrw.u32 Q0, [Q2, #156]
strh r8, [r0,#+384]
ldrh r8, [r0,#+396]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #240]
strh r6, [r0,#+386]
vmladavx.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #242]
strh r4, [r0,#+388]
vmladavx.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #244]
strh r14, [r0,#+390]
vmladavx.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #246]
strh r12, [r0,#+392]
vmladavx.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #248]
strh r10, [r0,#+394]
vmladavx.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #250]
strh r8, [r0,#+396]
vmladavx.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #252]
vldrw.u32 Q1, [Q2, #156]
strh r6, [r0,#+398]
vmladavx.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #254]
strh r4, [r0,#+400]
vmladavx.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #-14]
vldrw.u32 Q5, [Q2, #172]
strh r14, [r0,#+402]
ldrh r14, [r0,#+160]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #-12]
strh r12, [r0,#+404]
ldrh r12, [r0,#+162]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #-10]
strh r10, [r0,#+406]
ldrh r10, [r0,#+164]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #-8]
strh r8, [r0,#+408]
ldrh r8, [r0,#+166]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #-6]
strh r6, [r0,#+410]
ldrh r6, [r0,#+168]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #-4]
strh r4, [r0,#+412]
ldrh r4, [r0,#+170]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #-2]
strh r14, [r0,#+160]
ldrh r14, [r0,#+172]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #0]
vldrw.u32 Q6, [Q2, #172]
strh r12, [r0,#+162]
ldrh r12, [r0,#+174]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #2]
strh r10, [r0,#+164]
ldrh r10, [r0,#+176]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #4]
strh r8, [r0,#+166]
ldrh r8, [r0,#+178]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #6]
strh r6, [r0,#+168]
ldrh r6, [r0,#+180]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #8]
strh r4, [r0,#+170]
ldrh r4, [r0,#+182]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #10]
strh r14, [r0,#+172]
ldrh r14, [r0,#+184]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #12]
strh r12, [r0,#+174]
ldrh r12, [r0,#+186]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #14]
vldrw.u32 Q7, [Q2, #172]
strh r10, [r0,#+176]
ldrh r10, [r0,#+188]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #16]
strh r8, [r0,#+178]
ldrh r8, [r0,#+190]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #18]
strh r6, [r0,#+180]
ldrh r6, [r0,#+192]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #20]
strh r4, [r0,#+182]
ldrh r4, [r0,#+194]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #22]
strh r14, [r0,#+184]
ldrh r14, [r0,#+196]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #24]
strh r12, [r0,#+186]
ldrh r12, [r0,#+198]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #26]
strh r10, [r0,#+188]
ldrh r10, [r0,#+200]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #28]
vldrw.u32 Q0, [Q2, #172]
strh r8, [r0,#+190]
ldrh r8, [r0,#+202]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #30]
strh r6, [r0,#+192]
ldrh r6, [r0,#+204]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #32]
strh r4, [r0,#+194]
ldrh r4, [r0,#+206]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #34]
strh r14, [r0,#+196]
ldrh r14, [r0,#+208]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #36]
strh r12, [r0,#+198]
ldrh r12, [r0,#+210]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #38]
strh r10, [r0,#+200]
ldrh r10, [r0,#+212]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #40]
strh r8, [r0,#+202]
ldrh r8, [r0,#+214]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #42]
vldrw.u32 Q1, [Q2, #172]
strh r6, [r0,#+204]
ldrh r6, [r0,#+216]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #44]
strh r4, [r0,#+206]
ldrh r4, [r0,#+218]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #46]
strh r14, [r0,#+208]
ldrh r14, [r0,#+220]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #48]
strh r12, [r0,#+210]
ldrh r12, [r0,#+222]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #50]
strh r10, [r0,#+212]
ldrh r10, [r0,#+224]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #52]
strh r8, [r0,#+214]
ldrh r8, [r0,#+226]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #54]
strh r6, [r0,#+216]
ldrh r6, [r0,#+228]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #56]
vldrw.u32 Q3, [Q2, #172]
strh r4, [r0,#+218]
ldrh r4, [r0,#+230]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #58]
strh r14, [r0,#+220]
ldrh r14, [r0,#+232]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #60]
strh r12, [r0,#+222]
ldrh r12, [r0,#+234]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #62]
strh r10, [r0,#+224]
ldrh r10, [r0,#+236]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #64]
strh r8, [r0,#+226]
ldrh r8, [r0,#+238]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #66]
strh r6, [r0,#+228]
ldrh r6, [r0,#+240]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #68]
strh r4, [r0,#+230]
ldrh r4, [r0,#+242]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #70]
vldrw.u32 Q4, [Q2, #172]
strh r14, [r0,#+232]
ldrh r14, [r0,#+244]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #72]
strh r12, [r0,#+234]
ldrh r12, [r0,#+246]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #74]
strh r10, [r0,#+236]
ldrh r10, [r0,#+248]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #76]
strh r8, [r0,#+238]
ldrh r8, [r0,#+250]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #78]
strh r6, [r0,#+240]
ldrh r6, [r0,#+252]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #80]
strh r4, [r0,#+242]
ldrh r4, [r0,#+254]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #82]
strh r14, [r0,#+244]
ldrh r14, [r0,#+256]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #84]
vldrw.u32 Q5, [Q2, #172]
strh r12, [r0,#+246]
ldrh r12, [r0,#+258]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #86]
strh r10, [r0,#+248]
ldrh r10, [r0,#+260]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #88]
strh r8, [r0,#+250]
ldrh r8, [r0,#+262]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #90]
strh r6, [r0,#+252]
ldrh r6, [r0,#+264]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #92]
strh r4, [r0,#+254]
ldrh r4, [r0,#+266]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #94]
strh r14, [r0,#+256]
ldrh r14, [r0,#+268]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #96]
strh r12, [r0,#+258]
ldrh r12, [r0,#+270]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #98]
vldrw.u32 Q6, [Q2, #172]
strh r10, [r0,#+260]
ldrh r10, [r0,#+272]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #100]
strh r8, [r0,#+262]
ldrh r8, [r0,#+274]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #102]
strh r6, [r0,#+264]
ldrh r6, [r0,#+276]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #104]
strh r4, [r0,#+266]
ldrh r4, [r0,#+278]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #106]
strh r14, [r0,#+268]
ldrh r14, [r0,#+280]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #108]
strh r12, [r0,#+270]
ldrh r12, [r0,#+282]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #110]
strh r10, [r0,#+272]
ldrh r10, [r0,#+284]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #112]
vldrw.u32 Q7, [Q2, #172]
strh r8, [r0,#+274]
ldrh r8, [r0,#+286]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #114]
strh r6, [r0,#+276]
ldrh r6, [r0,#+288]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #116]
strh r4, [r0,#+278]
ldrh r4, [r0,#+290]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #118]
strh r14, [r0,#+280]
ldrh r14, [r0,#+292]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #120]
strh r12, [r0,#+282]
ldrh r12, [r0,#+294]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #122]
strh r10, [r0,#+284]
ldrh r10, [r0,#+296]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #124]
strh r8, [r0,#+286]
ldrh r8, [r0,#+298]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #126]
vldrw.u32 Q0, [Q2, #172]
strh r6, [r0,#+288]
ldrh r6, [r0,#+300]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #128]
strh r4, [r0,#+290]
ldrh r4, [r0,#+302]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #130]
strh r14, [r0,#+292]
ldrh r14, [r0,#+304]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #132]
strh r12, [r0,#+294]
ldrh r12, [r0,#+306]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #134]
strh r10, [r0,#+296]
ldrh r10, [r0,#+308]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #136]
strh r8, [r0,#+298]
ldrh r8, [r0,#+310]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #138]
strh r6, [r0,#+300]
ldrh r6, [r0,#+312]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #140]
vldrw.u32 Q1, [Q2, #172]
strh r4, [r0,#+302]
ldrh r4, [r0,#+314]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #142]
strh r14, [r0,#+304]
ldrh r14, [r0,#+316]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #144]
strh r12, [r0,#+306]
ldrh r12, [r0,#+318]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #146]
strh r10, [r0,#+308]
ldrh r10, [r0,#+320]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #148]
strh r8, [r0,#+310]
ldrh r8, [r0,#+322]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #150]
strh r6, [r0,#+312]
ldrh r6, [r0,#+324]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #152]
strh r4, [r0,#+314]
ldrh r4, [r0,#+326]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #154]
vldrw.u32 Q3, [Q2, #172]
strh r14, [r0,#+316]
ldrh r14, [r0,#+328]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #156]
strh r12, [r0,#+318]
ldrh r12, [r0,#+330]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #158]
strh r10, [r0,#+320]
ldrh r10, [r0,#+332]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #160]
strh r8, [r0,#+322]
ldrh r8, [r0,#+334]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #162]
strh r6, [r0,#+324]
ldrh r6, [r0,#+336]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #164]
strh r4, [r0,#+326]
ldrh r4, [r0,#+338]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #166]
strh r14, [r0,#+328]
ldrh r14, [r0,#+340]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #168]
vldrw.u32 Q4, [Q2, #172]
strh r12, [r0,#+330]
ldrh r12, [r0,#+342]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #170]
strh r10, [r0,#+332]
ldrh r10, [r0,#+344]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #172]
strh r8, [r0,#+334]
ldrh r8, [r0,#+346]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #174]
strh r6, [r0,#+336]
ldrh r6, [r0,#+348]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #176]
strh r4, [r0,#+338]
ldrh r4, [r0,#+350]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #178]
strh r14, [r0,#+340]
ldrh r14, [r0,#+352]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #180]
strh r12, [r0,#+342]
ldrh r12, [r0,#+354]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #182]
vldrw.u32 Q5, [Q2, #172]
strh r10, [r0,#+344]
ldrh r10, [r0,#+356]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #184]
strh r8, [r0,#+346]
ldrh r8, [r0,#+358]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #186]
strh r6, [r0,#+348]
ldrh r6, [r0,#+360]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #188]
strh r4, [r0,#+350]
ldrh r4, [r0,#+362]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #190]
strh r14, [r0,#+352]
ldrh r14, [r0,#+364]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #192]
strh r12, [r0,#+354]
ldrh r12, [r0,#+366]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #194]
strh r10, [r0,#+356]
ldrh r10, [r0,#+368]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #196]
vldrw.u32 Q6, [Q2, #172]
strh r8, [r0,#+358]
ldrh r8, [r0,#+370]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #198]
strh r6, [r0,#+360]
ldrh r6, [r0,#+372]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #200]
strh r4, [r0,#+362]
ldrh r4, [r0,#+374]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #202]
strh r14, [r0,#+364]
ldrh r14, [r0,#+376]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #204]
strh r12, [r0,#+366]
ldrh r12, [r0,#+378]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #206]
strh r10, [r0,#+368]
ldrh r10, [r0,#+380]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #208]
strh r8, [r0,#+370]
ldrh r8, [r0,#+382]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #210]
vldrw.u32 Q7, [Q2, #172]
strh r6, [r0,#+372]
ldrh r6, [r0,#+384]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #212]
strh r4, [r0,#+374]
ldrh r4, [r0,#+386]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #214]
strh r14, [r0,#+376]
ldrh r14, [r0,#+388]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #216]
strh r12, [r0,#+378]
ldrh r12, [r0,#+390]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #218]
strh r10, [r0,#+380]
ldrh r10, [r0,#+392]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #220]
strh r8, [r0,#+382]
ldrh r8, [r0,#+394]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #222]
strh r6, [r0,#+384]
ldrh r6, [r0,#+396]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #224]
vldrw.u32 Q0, [Q2, #172]
strh r4, [r0,#+386]
ldrh r4, [r0,#+398]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #226]
strh r14, [r0,#+388]
ldrh r14, [r0,#+400]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #228]
strh r12, [r0,#+390]
ldrh r12, [r0,#+402]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #230]
strh r10, [r0,#+392]
ldrh r10, [r0,#+404]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #232]
strh r8, [r0,#+394]
ldrh r8, [r0,#+406]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #234]
strh r6, [r0,#+396]
ldrh r6, [r0,#+408]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #236]
strh r4, [r0,#+398]
ldrh r4, [r0,#+410]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #238]
vldrw.u32 Q1, [Q2, #172]
strh r14, [r0,#+400]
ldrh r14, [r0,#+412]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #240]
strh r12, [r0,#+402]
vmladavx.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #242]
strh r10, [r0,#+404]
vmladavx.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #244]
strh r8, [r0,#+406]
vmladavx.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #246]
strh r6, [r0,#+408]
vmladavx.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #248]
strh r4, [r0,#+410]
vmladavx.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #250]
strh r14, [r0,#+412]
vmladavx.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #252]
vldrw.u32 Q3, [Q2, #172]
strh r12, [r0,#+414]
vmladavx.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #254]
strh r10, [r0,#+416]
vmladavx.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #-14]
vldrw.u32 Q6, [Q2, #188]
strh r8, [r0,#+418]
ldrh r8, [r0,#+176]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #-12]
strh r6, [r0,#+420]
ldrh r6, [r0,#+178]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #-10]
strh r4, [r0,#+422]
ldrh r4, [r0,#+180]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #-8]
strh r14, [r0,#+424]
ldrh r14, [r0,#+182]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #-6]
strh r12, [r0,#+426]
ldrh r12, [r0,#+184]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #-4]
strh r10, [r0,#+428]
ldrh r10, [r0,#+186]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #-2]
strh r8, [r0,#+176]
ldrh r8, [r0,#+188]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #0]
vldrw.u32 Q7, [Q2, #188]
strh r6, [r0,#+178]
ldrh r6, [r0,#+190]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #2]
strh r4, [r0,#+180]
ldrh r4, [r0,#+192]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #4]
strh r14, [r0,#+182]
ldrh r14, [r0,#+194]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #6]
strh r12, [r0,#+184]
ldrh r12, [r0,#+196]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #8]
strh r10, [r0,#+186]
ldrh r10, [r0,#+198]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #10]
strh r8, [r0,#+188]
ldrh r8, [r0,#+200]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #12]
strh r6, [r0,#+190]
ldrh r6, [r0,#+202]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #14]
vldrw.u32 Q0, [Q2, #188]
strh r4, [r0,#+192]
ldrh r4, [r0,#+204]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #16]
strh r14, [r0,#+194]
ldrh r14, [r0,#+206]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #18]
strh r12, [r0,#+196]
ldrh r12, [r0,#+208]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #20]
strh r10, [r0,#+198]
ldrh r10, [r0,#+210]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #22]
strh r8, [r0,#+200]
ldrh r8, [r0,#+212]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #24]
strh r6, [r0,#+202]
ldrh r6, [r0,#+214]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #26]
strh r4, [r0,#+204]
ldrh r4, [r0,#+216]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #28]
vldrw.u32 Q1, [Q2, #188]
strh r14, [r0,#+206]
ldrh r14, [r0,#+218]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #30]
strh r12, [r0,#+208]
ldrh r12, [r0,#+220]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #32]
strh r10, [r0,#+210]
ldrh r10, [r0,#+222]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #34]
strh r8, [r0,#+212]
ldrh r8, [r0,#+224]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #36]
strh r6, [r0,#+214]
ldrh r6, [r0,#+226]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #38]
strh r4, [r0,#+216]
ldrh r4, [r0,#+228]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #40]
strh r14, [r0,#+218]
ldrh r14, [r0,#+230]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #42]
vldrw.u32 Q3, [Q2, #188]
strh r12, [r0,#+220]
ldrh r12, [r0,#+232]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #44]
strh r10, [r0,#+222]
ldrh r10, [r0,#+234]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #46]
strh r8, [r0,#+224]
ldrh r8, [r0,#+236]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #48]
strh r6, [r0,#+226]
ldrh r6, [r0,#+238]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #50]
strh r4, [r0,#+228]
ldrh r4, [r0,#+240]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #52]
strh r14, [r0,#+230]
ldrh r14, [r0,#+242]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #54]
strh r12, [r0,#+232]
ldrh r12, [r0,#+244]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #56]
vldrw.u32 Q4, [Q2, #188]
strh r10, [r0,#+234]
ldrh r10, [r0,#+246]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #58]
strh r8, [r0,#+236]
ldrh r8, [r0,#+248]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #60]
strh r6, [r0,#+238]
ldrh r6, [r0,#+250]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #62]
strh r4, [r0,#+240]
ldrh r4, [r0,#+252]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #64]
strh r14, [r0,#+242]
ldrh r14, [r0,#+254]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #66]
strh r12, [r0,#+244]
ldrh r12, [r0,#+256]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #68]
strh r10, [r0,#+246]
ldrh r10, [r0,#+258]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #70]
vldrw.u32 Q5, [Q2, #188]
strh r8, [r0,#+248]
ldrh r8, [r0,#+260]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #72]
strh r6, [r0,#+250]
ldrh r6, [r0,#+262]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #74]
strh r4, [r0,#+252]
ldrh r4, [r0,#+264]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #76]
strh r14, [r0,#+254]
ldrh r14, [r0,#+266]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #78]
strh r12, [r0,#+256]
ldrh r12, [r0,#+268]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #80]
strh r10, [r0,#+258]
ldrh r10, [r0,#+270]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #82]
strh r8, [r0,#+260]
ldrh r8, [r0,#+272]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #84]
vldrw.u32 Q6, [Q2, #188]
strh r6, [r0,#+262]
ldrh r6, [r0,#+274]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #86]
strh r4, [r0,#+264]
ldrh r4, [r0,#+276]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #88]
strh r14, [r0,#+266]
ldrh r14, [r0,#+278]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #90]
strh r12, [r0,#+268]
ldrh r12, [r0,#+280]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #92]
strh r10, [r0,#+270]
ldrh r10, [r0,#+282]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #94]
strh r8, [r0,#+272]
ldrh r8, [r0,#+284]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #96]
strh r6, [r0,#+274]
ldrh r6, [r0,#+286]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #98]
vldrw.u32 Q7, [Q2, #188]
strh r4, [r0,#+276]
ldrh r4, [r0,#+288]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #100]
strh r14, [r0,#+278]
ldrh r14, [r0,#+290]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #102]
strh r12, [r0,#+280]
ldrh r12, [r0,#+292]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #104]
strh r10, [r0,#+282]
ldrh r10, [r0,#+294]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #106]
strh r8, [r0,#+284]
ldrh r8, [r0,#+296]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #108]
strh r6, [r0,#+286]
ldrh r6, [r0,#+298]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #110]
strh r4, [r0,#+288]
ldrh r4, [r0,#+300]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #112]
vldrw.u32 Q0, [Q2, #188]
strh r14, [r0,#+290]
ldrh r14, [r0,#+302]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #114]
strh r12, [r0,#+292]
ldrh r12, [r0,#+304]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #116]
strh r10, [r0,#+294]
ldrh r10, [r0,#+306]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #118]
strh r8, [r0,#+296]
ldrh r8, [r0,#+308]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #120]
strh r6, [r0,#+298]
ldrh r6, [r0,#+310]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #122]
strh r4, [r0,#+300]
ldrh r4, [r0,#+312]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #124]
strh r14, [r0,#+302]
ldrh r14, [r0,#+314]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #126]
vldrw.u32 Q1, [Q2, #188]
strh r12, [r0,#+304]
ldrh r12, [r0,#+316]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #128]
strh r10, [r0,#+306]
ldrh r10, [r0,#+318]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #130]
strh r8, [r0,#+308]
ldrh r8, [r0,#+320]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #132]
strh r6, [r0,#+310]
ldrh r6, [r0,#+322]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #134]
strh r4, [r0,#+312]
ldrh r4, [r0,#+324]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #136]
strh r14, [r0,#+314]
ldrh r14, [r0,#+326]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #138]
strh r12, [r0,#+316]
ldrh r12, [r0,#+328]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #140]
vldrw.u32 Q3, [Q2, #188]
strh r10, [r0,#+318]
ldrh r10, [r0,#+330]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #142]
strh r8, [r0,#+320]
ldrh r8, [r0,#+332]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #144]
strh r6, [r0,#+322]
ldrh r6, [r0,#+334]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #146]
strh r4, [r0,#+324]
ldrh r4, [r0,#+336]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #148]
strh r14, [r0,#+326]
ldrh r14, [r0,#+338]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #150]
strh r12, [r0,#+328]
ldrh r12, [r0,#+340]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #152]
strh r10, [r0,#+330]
ldrh r10, [r0,#+342]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #154]
vldrw.u32 Q4, [Q2, #188]
strh r8, [r0,#+332]
ldrh r8, [r0,#+344]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #156]
strh r6, [r0,#+334]
ldrh r6, [r0,#+346]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #158]
strh r4, [r0,#+336]
ldrh r4, [r0,#+348]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #160]
strh r14, [r0,#+338]
ldrh r14, [r0,#+350]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #162]
strh r12, [r0,#+340]
ldrh r12, [r0,#+352]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #164]
strh r10, [r0,#+342]
ldrh r10, [r0,#+354]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #166]
strh r8, [r0,#+344]
ldrh r8, [r0,#+356]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #168]
vldrw.u32 Q5, [Q2, #188]
strh r6, [r0,#+346]
ldrh r6, [r0,#+358]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #170]
strh r4, [r0,#+348]
ldrh r4, [r0,#+360]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #172]
strh r14, [r0,#+350]
ldrh r14, [r0,#+362]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #174]
strh r12, [r0,#+352]
ldrh r12, [r0,#+364]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #176]
strh r10, [r0,#+354]
ldrh r10, [r0,#+366]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #178]
strh r8, [r0,#+356]
ldrh r8, [r0,#+368]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #180]
strh r6, [r0,#+358]
ldrh r6, [r0,#+370]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #182]
vldrw.u32 Q6, [Q2, #188]
strh r4, [r0,#+360]
ldrh r4, [r0,#+372]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #184]
strh r14, [r0,#+362]
ldrh r14, [r0,#+374]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #186]
strh r12, [r0,#+364]
ldrh r12, [r0,#+376]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #188]
strh r10, [r0,#+366]
ldrh r10, [r0,#+378]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #190]
strh r8, [r0,#+368]
ldrh r8, [r0,#+380]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #192]
strh r6, [r0,#+370]
ldrh r6, [r0,#+382]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #194]
strh r4, [r0,#+372]
ldrh r4, [r0,#+384]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #196]
vldrw.u32 Q7, [Q2, #188]
strh r14, [r0,#+374]
ldrh r14, [r0,#+386]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #198]
strh r12, [r0,#+376]
ldrh r12, [r0,#+388]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #200]
strh r10, [r0,#+378]
ldrh r10, [r0,#+390]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #202]
strh r8, [r0,#+380]
ldrh r8, [r0,#+392]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #204]
strh r6, [r0,#+382]
ldrh r6, [r0,#+394]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #206]
strh r4, [r0,#+384]
ldrh r4, [r0,#+396]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #208]
strh r14, [r0,#+386]
ldrh r14, [r0,#+398]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #210]
vldrw.u32 Q0, [Q2, #188]
strh r12, [r0,#+388]
ldrh r12, [r0,#+400]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #212]
strh r10, [r0,#+390]
ldrh r10, [r0,#+402]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #214]
strh r8, [r0,#+392]
ldrh r8, [r0,#+404]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #216]
strh r6, [r0,#+394]
ldrh r6, [r0,#+406]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #218]
strh r4, [r0,#+396]
ldrh r4, [r0,#+408]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #220]
strh r14, [r0,#+398]
ldrh r14, [r0,#+410]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #222]
strh r12, [r0,#+400]
ldrh r12, [r0,#+412]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #224]
vldrw.u32 Q1, [Q2, #188]
strh r10, [r0,#+402]
ldrh r10, [r0,#+414]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #226]
strh r8, [r0,#+404]
ldrh r8, [r0,#+416]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #228]
strh r6, [r0,#+406]
ldrh r6, [r0,#+418]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #230]
strh r4, [r0,#+408]
ldrh r4, [r0,#+420]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #232]
strh r14, [r0,#+410]
ldrh r14, [r0,#+422]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #234]
strh r12, [r0,#+412]
ldrh r12, [r0,#+424]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #236]
strh r10, [r0,#+414]
ldrh r10, [r0,#+426]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #238]
vldrw.u32 Q3, [Q2, #188]
strh r8, [r0,#+416]
ldrh r8, [r0,#+428]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #240]
strh r6, [r0,#+418]
vmladavx.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #242]
strh r4, [r0,#+420]
vmladavx.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #244]
strh r14, [r0,#+422]
vmladavx.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #246]
strh r12, [r0,#+424]
vmladavx.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #248]
strh r10, [r0,#+426]
vmladavx.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #250]
strh r8, [r0,#+428]
vmladavx.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #252]
vldrw.u32 Q4, [Q2, #188]
strh r6, [r0,#+430]
vmladavx.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #254]
strh r4, [r0,#+432]
vmladavx.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #-14]
vldrw.u32 Q7, [Q2, #204]
strh r14, [r0,#+434]
ldrh r14, [r0,#+192]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #-12]
strh r12, [r0,#+436]
ldrh r12, [r0,#+194]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #-10]
strh r10, [r0,#+438]
ldrh r10, [r0,#+196]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #-8]
strh r8, [r0,#+440]
ldrh r8, [r0,#+198]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #-6]
strh r6, [r0,#+442]
ldrh r6, [r0,#+200]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #-4]
strh r4, [r0,#+444]
ldrh r4, [r0,#+202]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #-2]
strh r14, [r0,#+192]
ldrh r14, [r0,#+204]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #0]
vldrw.u32 Q0, [Q2, #204]
strh r12, [r0,#+194]
ldrh r12, [r0,#+206]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #2]
strh r10, [r0,#+196]
ldrh r10, [r0,#+208]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #4]
strh r8, [r0,#+198]
ldrh r8, [r0,#+210]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #6]
strh r6, [r0,#+200]
ldrh r6, [r0,#+212]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #8]
strh r4, [r0,#+202]
ldrh r4, [r0,#+214]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #10]
strh r14, [r0,#+204]
ldrh r14, [r0,#+216]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #12]
strh r12, [r0,#+206]
ldrh r12, [r0,#+218]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #14]
vldrw.u32 Q1, [Q2, #204]
strh r10, [r0,#+208]
ldrh r10, [r0,#+220]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #16]
strh r8, [r0,#+210]
ldrh r8, [r0,#+222]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #18]
strh r6, [r0,#+212]
ldrh r6, [r0,#+224]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #20]
strh r4, [r0,#+214]
ldrh r4, [r0,#+226]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #22]
strh r14, [r0,#+216]
ldrh r14, [r0,#+228]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #24]
strh r12, [r0,#+218]
ldrh r12, [r0,#+230]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #26]
strh r10, [r0,#+220]
ldrh r10, [r0,#+232]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #28]
vldrw.u32 Q3, [Q2, #204]
strh r8, [r0,#+222]
ldrh r8, [r0,#+234]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #30]
strh r6, [r0,#+224]
ldrh r6, [r0,#+236]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #32]
strh r4, [r0,#+226]
ldrh r4, [r0,#+238]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #34]
strh r14, [r0,#+228]
ldrh r14, [r0,#+240]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #36]
strh r12, [r0,#+230]
ldrh r12, [r0,#+242]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #38]
strh r10, [r0,#+232]
ldrh r10, [r0,#+244]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #40]
strh r8, [r0,#+234]
ldrh r8, [r0,#+246]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #42]
vldrw.u32 Q4, [Q2, #204]
strh r6, [r0,#+236]
ldrh r6, [r0,#+248]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #44]
strh r4, [r0,#+238]
ldrh r4, [r0,#+250]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #46]
strh r14, [r0,#+240]
ldrh r14, [r0,#+252]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #48]
strh r12, [r0,#+242]
ldrh r12, [r0,#+254]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #50]
strh r10, [r0,#+244]
ldrh r10, [r0,#+256]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #52]
strh r8, [r0,#+246]
ldrh r8, [r0,#+258]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #54]
strh r6, [r0,#+248]
ldrh r6, [r0,#+260]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #56]
vldrw.u32 Q5, [Q2, #204]
strh r4, [r0,#+250]
ldrh r4, [r0,#+262]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #58]
strh r14, [r0,#+252]
ldrh r14, [r0,#+264]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #60]
strh r12, [r0,#+254]
ldrh r12, [r0,#+266]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #62]
strh r10, [r0,#+256]
ldrh r10, [r0,#+268]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #64]
strh r8, [r0,#+258]
ldrh r8, [r0,#+270]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #66]
strh r6, [r0,#+260]
ldrh r6, [r0,#+272]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #68]
strh r4, [r0,#+262]
ldrh r4, [r0,#+274]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #70]
vldrw.u32 Q6, [Q2, #204]
strh r14, [r0,#+264]
ldrh r14, [r0,#+276]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #72]
strh r12, [r0,#+266]
ldrh r12, [r0,#+278]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #74]
strh r10, [r0,#+268]
ldrh r10, [r0,#+280]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #76]
strh r8, [r0,#+270]
ldrh r8, [r0,#+282]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #78]
strh r6, [r0,#+272]
ldrh r6, [r0,#+284]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #80]
strh r4, [r0,#+274]
ldrh r4, [r0,#+286]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #82]
strh r14, [r0,#+276]
ldrh r14, [r0,#+288]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #84]
vldrw.u32 Q7, [Q2, #204]
strh r12, [r0,#+278]
ldrh r12, [r0,#+290]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #86]
strh r10, [r0,#+280]
ldrh r10, [r0,#+292]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #88]
strh r8, [r0,#+282]
ldrh r8, [r0,#+294]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #90]
strh r6, [r0,#+284]
ldrh r6, [r0,#+296]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #92]
strh r4, [r0,#+286]
ldrh r4, [r0,#+298]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #94]
strh r14, [r0,#+288]
ldrh r14, [r0,#+300]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #96]
strh r12, [r0,#+290]
ldrh r12, [r0,#+302]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #98]
vldrw.u32 Q0, [Q2, #204]
strh r10, [r0,#+292]
ldrh r10, [r0,#+304]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #100]
strh r8, [r0,#+294]
ldrh r8, [r0,#+306]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #102]
strh r6, [r0,#+296]
ldrh r6, [r0,#+308]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #104]
strh r4, [r0,#+298]
ldrh r4, [r0,#+310]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #106]
strh r14, [r0,#+300]
ldrh r14, [r0,#+312]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #108]
strh r12, [r0,#+302]
ldrh r12, [r0,#+314]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #110]
strh r10, [r0,#+304]
ldrh r10, [r0,#+316]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #112]
vldrw.u32 Q1, [Q2, #204]
strh r8, [r0,#+306]
ldrh r8, [r0,#+318]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #114]
strh r6, [r0,#+308]
ldrh r6, [r0,#+320]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #116]
strh r4, [r0,#+310]
ldrh r4, [r0,#+322]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #118]
strh r14, [r0,#+312]
ldrh r14, [r0,#+324]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #120]
strh r12, [r0,#+314]
ldrh r12, [r0,#+326]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #122]
strh r10, [r0,#+316]
ldrh r10, [r0,#+328]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #124]
strh r8, [r0,#+318]
ldrh r8, [r0,#+330]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #126]
vldrw.u32 Q3, [Q2, #204]
strh r6, [r0,#+320]
ldrh r6, [r0,#+332]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #128]
strh r4, [r0,#+322]
ldrh r4, [r0,#+334]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #130]
strh r14, [r0,#+324]
ldrh r14, [r0,#+336]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #132]
strh r12, [r0,#+326]
ldrh r12, [r0,#+338]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #134]
strh r10, [r0,#+328]
ldrh r10, [r0,#+340]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #136]
strh r8, [r0,#+330]
ldrh r8, [r0,#+342]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #138]
strh r6, [r0,#+332]
ldrh r6, [r0,#+344]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #140]
vldrw.u32 Q4, [Q2, #204]
strh r4, [r0,#+334]
ldrh r4, [r0,#+346]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #142]
strh r14, [r0,#+336]
ldrh r14, [r0,#+348]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #144]
strh r12, [r0,#+338]
ldrh r12, [r0,#+350]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #146]
strh r10, [r0,#+340]
ldrh r10, [r0,#+352]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #148]
strh r8, [r0,#+342]
ldrh r8, [r0,#+354]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #150]
strh r6, [r0,#+344]
ldrh r6, [r0,#+356]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #152]
strh r4, [r0,#+346]
ldrh r4, [r0,#+358]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #154]
vldrw.u32 Q5, [Q2, #204]
strh r14, [r0,#+348]
ldrh r14, [r0,#+360]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #156]
strh r12, [r0,#+350]
ldrh r12, [r0,#+362]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #158]
strh r10, [r0,#+352]
ldrh r10, [r0,#+364]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #160]
strh r8, [r0,#+354]
ldrh r8, [r0,#+366]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #162]
strh r6, [r0,#+356]
ldrh r6, [r0,#+368]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #164]
strh r4, [r0,#+358]
ldrh r4, [r0,#+370]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #166]
strh r14, [r0,#+360]
ldrh r14, [r0,#+372]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #168]
vldrw.u32 Q6, [Q2, #204]
strh r12, [r0,#+362]
ldrh r12, [r0,#+374]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #170]
strh r10, [r0,#+364]
ldrh r10, [r0,#+376]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #172]
strh r8, [r0,#+366]
ldrh r8, [r0,#+378]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #174]
strh r6, [r0,#+368]
ldrh r6, [r0,#+380]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #176]
strh r4, [r0,#+370]
ldrh r4, [r0,#+382]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #178]
strh r14, [r0,#+372]
ldrh r14, [r0,#+384]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #180]
strh r12, [r0,#+374]
ldrh r12, [r0,#+386]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #182]
vldrw.u32 Q7, [Q2, #204]
strh r10, [r0,#+376]
ldrh r10, [r0,#+388]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #184]
strh r8, [r0,#+378]
ldrh r8, [r0,#+390]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #186]
strh r6, [r0,#+380]
ldrh r6, [r0,#+392]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #188]
strh r4, [r0,#+382]
ldrh r4, [r0,#+394]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #190]
strh r14, [r0,#+384]
ldrh r14, [r0,#+396]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #192]
strh r12, [r0,#+386]
ldrh r12, [r0,#+398]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #194]
strh r10, [r0,#+388]
ldrh r10, [r0,#+400]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #196]
vldrw.u32 Q0, [Q2, #204]
strh r8, [r0,#+390]
ldrh r8, [r0,#+402]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #198]
strh r6, [r0,#+392]
ldrh r6, [r0,#+404]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #200]
strh r4, [r0,#+394]
ldrh r4, [r0,#+406]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #202]
strh r14, [r0,#+396]
ldrh r14, [r0,#+408]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #204]
strh r12, [r0,#+398]
ldrh r12, [r0,#+410]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #206]
strh r10, [r0,#+400]
ldrh r10, [r0,#+412]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #208]
strh r8, [r0,#+402]
ldrh r8, [r0,#+414]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #210]
vldrw.u32 Q1, [Q2, #204]
strh r6, [r0,#+404]
ldrh r6, [r0,#+416]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #212]
strh r4, [r0,#+406]
ldrh r4, [r0,#+418]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #214]
strh r14, [r0,#+408]
ldrh r14, [r0,#+420]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #216]
strh r12, [r0,#+410]
ldrh r12, [r0,#+422]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #218]
strh r10, [r0,#+412]
ldrh r10, [r0,#+424]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #220]
strh r8, [r0,#+414]
ldrh r8, [r0,#+426]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #222]
strh r6, [r0,#+416]
ldrh r6, [r0,#+428]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #224]
vldrw.u32 Q3, [Q2, #204]
strh r4, [r0,#+418]
ldrh r4, [r0,#+430]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #226]
strh r14, [r0,#+420]
ldrh r14, [r0,#+432]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #228]
strh r12, [r0,#+422]
ldrh r12, [r0,#+434]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #230]
strh r10, [r0,#+424]
ldrh r10, [r0,#+436]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #232]
strh r8, [r0,#+426]
ldrh r8, [r0,#+438]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #234]
strh r6, [r0,#+428]
ldrh r6, [r0,#+440]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #236]
strh r4, [r0,#+430]
ldrh r4, [r0,#+442]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #238]
vldrw.u32 Q4, [Q2, #204]
strh r14, [r0,#+432]
ldrh r14, [r0,#+444]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #240]
strh r12, [r0,#+434]
vmladavx.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #242]
strh r10, [r0,#+436]
vmladavx.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #244]
strh r8, [r0,#+438]
vmladavx.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #246]
strh r6, [r0,#+440]
vmladavx.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #248]
strh r4, [r0,#+442]
vmladavx.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #250]
strh r14, [r0,#+444]
vmladavx.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #252]
vldrw.u32 Q5, [Q2, #204]
strh r12, [r0,#+446]
vmladavx.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #254]
strh r10, [r0,#+448]
vmladavx.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #-14]
vldrw.u32 Q0, [Q2, #220]
strh r8, [r0,#+450]
ldrh r8, [r0,#+208]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #-12]
strh r6, [r0,#+452]
ldrh r6, [r0,#+210]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #-10]
strh r4, [r0,#+454]
ldrh r4, [r0,#+212]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #-8]
strh r14, [r0,#+456]
ldrh r14, [r0,#+214]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #-6]
strh r12, [r0,#+458]
ldrh r12, [r0,#+216]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #-4]
strh r10, [r0,#+460]
ldrh r10, [r0,#+218]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #-2]
strh r8, [r0,#+208]
ldrh r8, [r0,#+220]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #0]
vldrw.u32 Q1, [Q2, #220]
strh r6, [r0,#+210]
ldrh r6, [r0,#+222]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #2]
strh r4, [r0,#+212]
ldrh r4, [r0,#+224]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #4]
strh r14, [r0,#+214]
ldrh r14, [r0,#+226]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #6]
strh r12, [r0,#+216]
ldrh r12, [r0,#+228]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #8]
strh r10, [r0,#+218]
ldrh r10, [r0,#+230]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #10]
strh r8, [r0,#+220]
ldrh r8, [r0,#+232]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #12]
strh r6, [r0,#+222]
ldrh r6, [r0,#+234]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #14]
vldrw.u32 Q3, [Q2, #220]
strh r4, [r0,#+224]
ldrh r4, [r0,#+236]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #16]
strh r14, [r0,#+226]
ldrh r14, [r0,#+238]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #18]
strh r12, [r0,#+228]
ldrh r12, [r0,#+240]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #20]
strh r10, [r0,#+230]
ldrh r10, [r0,#+242]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #22]
strh r8, [r0,#+232]
ldrh r8, [r0,#+244]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #24]
strh r6, [r0,#+234]
ldrh r6, [r0,#+246]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #26]
strh r4, [r0,#+236]
ldrh r4, [r0,#+248]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #28]
vldrw.u32 Q4, [Q2, #220]
strh r14, [r0,#+238]
ldrh r14, [r0,#+250]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #30]
strh r12, [r0,#+240]
ldrh r12, [r0,#+252]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #32]
strh r10, [r0,#+242]
ldrh r10, [r0,#+254]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #34]
strh r8, [r0,#+244]
ldrh r8, [r0,#+256]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #36]
strh r6, [r0,#+246]
ldrh r6, [r0,#+258]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #38]
strh r4, [r0,#+248]
ldrh r4, [r0,#+260]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #40]
strh r14, [r0,#+250]
ldrh r14, [r0,#+262]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #42]
vldrw.u32 Q5, [Q2, #220]
strh r12, [r0,#+252]
ldrh r12, [r0,#+264]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #44]
strh r10, [r0,#+254]
ldrh r10, [r0,#+266]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #46]
strh r8, [r0,#+256]
ldrh r8, [r0,#+268]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #48]
strh r6, [r0,#+258]
ldrh r6, [r0,#+270]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #50]
strh r4, [r0,#+260]
ldrh r4, [r0,#+272]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #52]
strh r14, [r0,#+262]
ldrh r14, [r0,#+274]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #54]
strh r12, [r0,#+264]
ldrh r12, [r0,#+276]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #56]
vldrw.u32 Q6, [Q2, #220]
strh r10, [r0,#+266]
ldrh r10, [r0,#+278]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #58]
strh r8, [r0,#+268]
ldrh r8, [r0,#+280]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #60]
strh r6, [r0,#+270]
ldrh r6, [r0,#+282]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #62]
strh r4, [r0,#+272]
ldrh r4, [r0,#+284]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #64]
strh r14, [r0,#+274]
ldrh r14, [r0,#+286]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #66]
strh r12, [r0,#+276]
ldrh r12, [r0,#+288]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #68]
strh r10, [r0,#+278]
ldrh r10, [r0,#+290]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #70]
vldrw.u32 Q7, [Q2, #220]
strh r8, [r0,#+280]
ldrh r8, [r0,#+292]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #72]
strh r6, [r0,#+282]
ldrh r6, [r0,#+294]
vmladavax.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #74]
strh r4, [r0,#+284]
ldrh r4, [r0,#+296]
vmladavax.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #76]
strh r14, [r0,#+286]
ldrh r14, [r0,#+298]
vmladavax.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #78]
strh r12, [r0,#+288]
ldrh r12, [r0,#+300]
vmladavax.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #80]
strh r10, [r0,#+290]
ldrh r10, [r0,#+302]
vmladavax.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #82]
strh r8, [r0,#+292]
ldrh r8, [r0,#+304]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #84]
vldrw.u32 Q0, [Q2, #220]
strh r6, [r0,#+294]
ldrh r6, [r0,#+306]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #86]
strh r4, [r0,#+296]
ldrh r4, [r0,#+308]
vmladavax.s16 r4, Q1, Q0
vldrh.u16 Q3, [r1, #88]
strh r14, [r0,#+298]
ldrh r14, [r0,#+310]
vmladavax.s16 r14, Q3, Q0
vldrh.u16 Q4, [r1, #90]
strh r12, [r0,#+300]
ldrh r12, [r0,#+312]
vmladavax.s16 r12, Q4, Q0
vldrh.u16 Q5, [r1, #92]
strh r10, [r0,#+302]
ldrh r10, [r0,#+314]
vmladavax.s16 r10, Q5, Q0
vldrh.u16 Q6, [r1, #94]
strh r8, [r0,#+304]
ldrh r8, [r0,#+316]
vmladavax.s16 r8, Q6, Q0
vldrh.u16 Q7, [r1, #96]
strh r6, [r0,#+306]
ldrh r6, [r0,#+318]
vmladavax.s16 r6, Q7, Q0
vldrh.u16 Q0, [r1, #98]
vldrw.u32 Q1, [Q2, #220]
strh r4, [r0,#+308]
ldrh r4, [r0,#+320]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q3, [r1, #100]
strh r14, [r0,#+310]
ldrh r14, [r0,#+322]
vmladavax.s16 r14, Q3, Q1
vldrh.u16 Q4, [r1, #102]
strh r12, [r0,#+312]
ldrh r12, [r0,#+324]
vmladavax.s16 r12, Q4, Q1
vldrh.u16 Q5, [r1, #104]
strh r10, [r0,#+314]
ldrh r10, [r0,#+326]
vmladavax.s16 r10, Q5, Q1
vldrh.u16 Q6, [r1, #106]
strh r8, [r0,#+316]
ldrh r8, [r0,#+328]
vmladavax.s16 r8, Q6, Q1
vldrh.u16 Q7, [r1, #108]
strh r6, [r0,#+318]
ldrh r6, [r0,#+330]
vmladavax.s16 r6, Q7, Q1
vldrh.u16 Q0, [r1, #110]
strh r4, [r0,#+320]
ldrh r4, [r0,#+332]
vmladavax.s16 r4, Q0, Q1
vldrh.u16 Q1, [r1, #112]
vldrw.u32 Q3, [Q2, #220]
strh r14, [r0,#+322]
ldrh r14, [r0,#+334]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q4, [r1, #114]
strh r12, [r0,#+324]
ldrh r12, [r0,#+336]
vmladavax.s16 r12, Q4, Q3
vldrh.u16 Q5, [r1, #116]
strh r10, [r0,#+326]
ldrh r10, [r0,#+338]
vmladavax.s16 r10, Q5, Q3
vldrh.u16 Q6, [r1, #118]
strh r8, [r0,#+328]
ldrh r8, [r0,#+340]
vmladavax.s16 r8, Q6, Q3
vldrh.u16 Q7, [r1, #120]
strh r6, [r0,#+330]
ldrh r6, [r0,#+342]
vmladavax.s16 r6, Q7, Q3
vldrh.u16 Q0, [r1, #122]
strh r4, [r0,#+332]
ldrh r4, [r0,#+344]
vmladavax.s16 r4, Q0, Q3
vldrh.u16 Q1, [r1, #124]
strh r14, [r0,#+334]
ldrh r14, [r0,#+346]
vmladavax.s16 r14, Q1, Q3
vldrh.u16 Q3, [r1, #126]
vldrw.u32 Q4, [Q2, #220]
strh r12, [r0,#+336]
ldrh r12, [r0,#+348]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q5, [r1, #128]
strh r10, [r0,#+338]
ldrh r10, [r0,#+350]
vmladavax.s16 r10, Q5, Q4
vldrh.u16 Q6, [r1, #130]
strh r8, [r0,#+340]
ldrh r8, [r0,#+352]
vmladavax.s16 r8, Q6, Q4
vldrh.u16 Q7, [r1, #132]
strh r6, [r0,#+342]
ldrh r6, [r0,#+354]
vmladavax.s16 r6, Q7, Q4
vldrh.u16 Q0, [r1, #134]
strh r4, [r0,#+344]
ldrh r4, [r0,#+356]
vmladavax.s16 r4, Q0, Q4
vldrh.u16 Q1, [r1, #136]
strh r14, [r0,#+346]
ldrh r14, [r0,#+358]
vmladavax.s16 r14, Q1, Q4
vldrh.u16 Q3, [r1, #138]
strh r12, [r0,#+348]
ldrh r12, [r0,#+360]
vmladavax.s16 r12, Q3, Q4
vldrh.u16 Q4, [r1, #140]
vldrw.u32 Q5, [Q2, #220]
strh r10, [r0,#+350]
ldrh r10, [r0,#+362]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q6, [r1, #142]
strh r8, [r0,#+352]
ldrh r8, [r0,#+364]
vmladavax.s16 r8, Q6, Q5
vldrh.u16 Q7, [r1, #144]
strh r6, [r0,#+354]
ldrh r6, [r0,#+366]
vmladavax.s16 r6, Q7, Q5
vldrh.u16 Q0, [r1, #146]
strh r4, [r0,#+356]
ldrh r4, [r0,#+368]
vmladavax.s16 r4, Q0, Q5
vldrh.u16 Q1, [r1, #148]
strh r14, [r0,#+358]
ldrh r14, [r0,#+370]
vmladavax.s16 r14, Q1, Q5
vldrh.u16 Q3, [r1, #150]
strh r12, [r0,#+360]
ldrh r12, [r0,#+372]
vmladavax.s16 r12, Q3, Q5
vldrh.u16 Q4, [r1, #152]
strh r10, [r0,#+362]
ldrh r10, [r0,#+374]
vmladavax.s16 r10, Q4, Q5
vldrh.u16 Q5, [r1, #154]
vldrw.u32 Q6, [Q2, #220]
strh r8, [r0,#+364]
ldrh r8, [r0,#+376]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q7, [r1, #156]
strh r6, [r0,#+366]
ldrh r6, [r0,#+378]
vmladavax.s16 r6, Q7, Q6
vldrh.u16 Q0, [r1, #158]
strh r4, [r0,#+368]
ldrh r4, [r0,#+380]
vmladavax.s16 r4, Q0, Q6
vldrh.u16 Q1, [r1, #160]
strh r14, [r0,#+370]
ldrh r14, [r0,#+382]
vmladavax.s16 r14, Q1, Q6
vldrh.u16 Q3, [r1, #162]
strh r12, [r0,#+372]
ldrh r12, [r0,#+384]
vmladavax.s16 r12, Q3, Q6
vldrh.u16 Q4, [r1, #164]
strh r10, [r0,#+374]
ldrh r10, [r0,#+386]
vmladavax.s16 r10, Q4, Q6
vldrh.u16 Q5, [r1, #166]
strh r8, [r0,#+376]
ldrh r8, [r0,#+388]
vmladavax.s16 r8, Q5, Q6
vldrh.u16 Q6, [r1, #168]
vldrw.u32 Q7, [Q2, #220]
strh r6, [r0,#+378]
ldrh r6, [r0,#+390]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q0, [r1, #170]
strh r4, [r0,#+380]
ldrh r4, [r0,#+392]
vmladavax.s16 r4, Q0, Q7
vldrh.u16 Q1, [r1, #172]
strh r14, [r0,#+382]
ldrh r14, [r0,#+394]
vmladavax.s16 r14, Q1, Q7
vldrh.u16 Q3, [r1, #174]
strh r12, [r0,#+384]
ldrh r12, [r0,#+396]
vmladavax.s16 r12, Q3, Q7
vldrh.u16 Q4, [r1, #176]
strh r10, [r0,#+386]
ldrh r10, [r0,#+398]
vmladavax.s16 r10, Q4, Q7
vldrh.u16 Q5, [r1, #178]
strh r8, [r0,#+388]
ldrh r8, [r0,#+400]
vmladavax.s16 r8, Q5, Q7
vldrh.u16 Q6, [r1, #180]
strh r6, [r0,#+390]
ldrh r6, [r0,#+402]
vmladavax.s16 r6, Q6, Q7
vldrh.u16 Q7, [r1, #182]
vldrw.u32 Q0, [Q2, #220]
strh r4, [r0,#+392]
ldrh r4, [r0,#+404]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q1, [r1, #184]
strh r14, [r0,#+394]
ldrh r14, [r0,#+406]
vmladavax.s16 r14, Q1, Q0
vldrh.u16 Q3, [r1, #186]
strh r12, [r0,#+396]
ldrh r12, [r0,#+408]
vmladavax.s16 r12, Q3, Q0
vldrh.u16 Q4, [r1, #188]
strh r10, [r0,#+398]
ldrh r10, [r0,#+410]
vmladavax.s16 r10, Q4, Q0
vldrh.u16 Q5, [r1, #190]
strh r8, [r0,#+400]
ldrh r8, [r0,#+412]
vmladavax.s16 r8, Q5, Q0
vldrh.u16 Q6, [r1, #192]
strh r6, [r0,#+402]
ldrh r6, [r0,#+414]
vmladavax.s16 r6, Q6, Q0
vldrh.u16 Q7, [r1, #194]
strh r4, [r0,#+404]
ldrh r4, [r0,#+416]
vmladavax.s16 r4, Q7, Q0
vldrh.u16 Q0, [r1, #196]
vldrw.u32 Q1, [Q2, #220]
strh r14, [r0,#+406]
ldrh r14, [r0,#+418]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #198]
strh r12, [r0,#+408]
ldrh r12, [r0,#+420]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #200]
strh r10, [r0,#+410]
ldrh r10, [r0,#+422]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #202]
strh r8, [r0,#+412]
ldrh r8, [r0,#+424]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #204]
strh r6, [r0,#+414]
ldrh r6, [r0,#+426]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #206]
strh r4, [r0,#+416]
ldrh r4, [r0,#+428]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #208]
strh r14, [r0,#+418]
ldrh r14, [r0,#+430]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #210]
vldrw.u32 Q3, [Q2, #220]
strh r12, [r0,#+420]
ldrh r12, [r0,#+432]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #212]
strh r10, [r0,#+422]
ldrh r10, [r0,#+434]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #214]
strh r8, [r0,#+424]
ldrh r8, [r0,#+436]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #216]
strh r6, [r0,#+426]
ldrh r6, [r0,#+438]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #218]
strh r4, [r0,#+428]
ldrh r4, [r0,#+440]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #220]
strh r14, [r0,#+430]
ldrh r14, [r0,#+442]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #222]
strh r12, [r0,#+432]
ldrh r12, [r0,#+444]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #224]
vldrw.u32 Q4, [Q2, #220]
strh r10, [r0,#+434]
ldrh r10, [r0,#+446]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #226]
strh r8, [r0,#+436]
ldrh r8, [r0,#+448]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #228]
strh r6, [r0,#+438]
ldrh r6, [r0,#+450]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #230]
strh r4, [r0,#+440]
ldrh r4, [r0,#+452]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #232]
strh r14, [r0,#+442]
ldrh r14, [r0,#+454]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #234]
strh r12, [r0,#+444]
ldrh r12, [r0,#+456]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #236]
strh r10, [r0,#+446]
ldrh r10, [r0,#+458]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #238]
vldrw.u32 Q5, [Q2, #220]
strh r8, [r0,#+448]
ldrh r8, [r0,#+460]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #240]
strh r6, [r0,#+450]
vmladavx.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #242]
strh r4, [r0,#+452]
vmladavx.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #244]
strh r14, [r0,#+454]
vmladavx.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #246]
strh r12, [r0,#+456]
vmladavx.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #248]
strh r10, [r0,#+458]
vmladavx.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #250]
strh r8, [r0,#+460]
vmladavx.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #252]
vldrw.u32 Q6, [Q2, #220]
strh r6, [r0,#+462]
vmladavx.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #254]
strh r4, [r0,#+464]
vmladavx.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #-14]
vldrw.u32 Q1, [Q2, #236]
strh r14, [r0,#+466]
ldrh r14, [r0,#+224]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q3, [r1, #-12]
strh r12, [r0,#+468]
ldrh r12, [r0,#+226]
vmladavax.s16 r12, Q3, Q1
vldrh.u16 Q4, [r1, #-10]
strh r10, [r0,#+470]
ldrh r10, [r0,#+228]
vmladavax.s16 r10, Q4, Q1
vldrh.u16 Q5, [r1, #-8]
strh r8, [r0,#+472]
ldrh r8, [r0,#+230]
vmladavax.s16 r8, Q5, Q1
vldrh.u16 Q6, [r1, #-6]
strh r6, [r0,#+474]
ldrh r6, [r0,#+232]
vmladavax.s16 r6, Q6, Q1
vldrh.u16 Q7, [r1, #-4]
strh r4, [r0,#+476]
ldrh r4, [r0,#+234]
vmladavax.s16 r4, Q7, Q1
vldrh.u16 Q0, [r1, #-2]
strh r14, [r0,#+224]
ldrh r14, [r0,#+236]
vmladavax.s16 r14, Q0, Q1
vldrh.u16 Q1, [r1, #0]
vldrw.u32 Q3, [Q2, #236]
strh r12, [r0,#+226]
ldrh r12, [r0,#+238]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q4, [r1, #2]
strh r10, [r0,#+228]
ldrh r10, [r0,#+240]
vmladavax.s16 r10, Q4, Q3
vldrh.u16 Q5, [r1, #4]
strh r8, [r0,#+230]
ldrh r8, [r0,#+242]
vmladavax.s16 r8, Q5, Q3
vldrh.u16 Q6, [r1, #6]
strh r6, [r0,#+232]
ldrh r6, [r0,#+244]
vmladavax.s16 r6, Q6, Q3
vldrh.u16 Q7, [r1, #8]
strh r4, [r0,#+234]
ldrh r4, [r0,#+246]
vmladavax.s16 r4, Q7, Q3
vldrh.u16 Q0, [r1, #10]
strh r14, [r0,#+236]
ldrh r14, [r0,#+248]
vmladavax.s16 r14, Q0, Q3
vldrh.u16 Q1, [r1, #12]
strh r12, [r0,#+238]
ldrh r12, [r0,#+250]
vmladavax.s16 r12, Q1, Q3
vldrh.u16 Q3, [r1, #14]
vldrw.u32 Q4, [Q2, #236]
strh r10, [r0,#+240]
ldrh r10, [r0,#+252]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q5, [r1, #16]
strh r8, [r0,#+242]
ldrh r8, [r0,#+254]
vmladavax.s16 r8, Q5, Q4
vldrh.u16 Q6, [r1, #18]
strh r6, [r0,#+244]
ldrh r6, [r0,#+256]
vmladavax.s16 r6, Q6, Q4
vldrh.u16 Q7, [r1, #20]
strh r4, [r0,#+246]
ldrh r4, [r0,#+258]
vmladavax.s16 r4, Q7, Q4
vldrh.u16 Q0, [r1, #22]
strh r14, [r0,#+248]
ldrh r14, [r0,#+260]
vmladavax.s16 r14, Q0, Q4
vldrh.u16 Q1, [r1, #24]
strh r12, [r0,#+250]
ldrh r12, [r0,#+262]
vmladavax.s16 r12, Q1, Q4
vldrh.u16 Q3, [r1, #26]
strh r10, [r0,#+252]
ldrh r10, [r0,#+264]
vmladavax.s16 r10, Q3, Q4
vldrh.u16 Q4, [r1, #28]
vldrw.u32 Q5, [Q2, #236]
strh r8, [r0,#+254]
ldrh r8, [r0,#+266]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q6, [r1, #30]
strh r6, [r0,#+256]
ldrh r6, [r0,#+268]
vmladavax.s16 r6, Q6, Q5
vldrh.u16 Q7, [r1, #32]
strh r4, [r0,#+258]
ldrh r4, [r0,#+270]
vmladavax.s16 r4, Q7, Q5
vldrh.u16 Q0, [r1, #34]
strh r14, [r0,#+260]
ldrh r14, [r0,#+272]
vmladavax.s16 r14, Q0, Q5
vldrh.u16 Q1, [r1, #36]
strh r12, [r0,#+262]
ldrh r12, [r0,#+274]
vmladavax.s16 r12, Q1, Q5
vldrh.u16 Q3, [r1, #38]
strh r10, [r0,#+264]
ldrh r10, [r0,#+276]
vmladavax.s16 r10, Q3, Q5
vldrh.u16 Q4, [r1, #40]
strh r8, [r0,#+266]
ldrh r8, [r0,#+278]
vmladavax.s16 r8, Q4, Q5
vldrh.u16 Q5, [r1, #42]
vldrw.u32 Q6, [Q2, #236]
strh r6, [r0,#+268]
ldrh r6, [r0,#+280]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q7, [r1, #44]
strh r4, [r0,#+270]
ldrh r4, [r0,#+282]
vmladavax.s16 r4, Q7, Q6
vldrh.u16 Q0, [r1, #46]
strh r14, [r0,#+272]
ldrh r14, [r0,#+284]
vmladavax.s16 r14, Q0, Q6
vldrh.u16 Q1, [r1, #48]
strh r12, [r0,#+274]
ldrh r12, [r0,#+286]
vmladavax.s16 r12, Q1, Q6
vldrh.u16 Q3, [r1, #50]
strh r10, [r0,#+276]
ldrh r10, [r0,#+288]
vmladavax.s16 r10, Q3, Q6
vldrh.u16 Q4, [r1, #52]
strh r8, [r0,#+278]
ldrh r8, [r0,#+290]
vmladavax.s16 r8, Q4, Q6
vldrh.u16 Q5, [r1, #54]
strh r6, [r0,#+280]
ldrh r6, [r0,#+292]
vmladavax.s16 r6, Q5, Q6
vldrh.u16 Q6, [r1, #56]
vldrw.u32 Q7, [Q2, #236]
strh r4, [r0,#+282]
ldrh r4, [r0,#+294]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q0, [r1, #58]
strh r14, [r0,#+284]
ldrh r14, [r0,#+296]
vmladavax.s16 r14, Q0, Q7
vldrh.u16 Q1, [r1, #60]
strh r12, [r0,#+286]
ldrh r12, [r0,#+298]
vmladavax.s16 r12, Q1, Q7
vldrh.u16 Q3, [r1, #62]
strh r10, [r0,#+288]
ldrh r10, [r0,#+300]
vmladavax.s16 r10, Q3, Q7
vldrh.u16 Q4, [r1, #64]
strh r8, [r0,#+290]
ldrh r8, [r0,#+302]
vmladavax.s16 r8, Q4, Q7
vldrh.u16 Q5, [r1, #66]
strh r6, [r0,#+292]
ldrh r6, [r0,#+304]
vmladavax.s16 r6, Q5, Q7
vldrh.u16 Q6, [r1, #68]
strh r4, [r0,#+294]
ldrh r4, [r0,#+306]
vmladavax.s16 r4, Q6, Q7
vldrh.u16 Q7, [r1, #70]
vldrw.u32 Q0, [Q2, #236]
strh r14, [r0,#+296]
ldrh r14, [r0,#+308]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q1, [r1, #72]
strh r12, [r0,#+298]
ldrh r12, [r0,#+310]
vmladavax.s16 r12, Q1, Q0
vldrh.u16 Q3, [r1, #74]
strh r10, [r0,#+300]
ldrh r10, [r0,#+312]
vmladavax.s16 r10, Q3, Q0
vldrh.u16 Q4, [r1, #76]
strh r8, [r0,#+302]
ldrh r8, [r0,#+314]
vmladavax.s16 r8, Q4, Q0
vldrh.u16 Q5, [r1, #78]
strh r6, [r0,#+304]
ldrh r6, [r0,#+316]
vmladavax.s16 r6, Q5, Q0
vldrh.u16 Q6, [r1, #80]
strh r4, [r0,#+306]
ldrh r4, [r0,#+318]
vmladavax.s16 r4, Q6, Q0
vldrh.u16 Q7, [r1, #82]
strh r14, [r0,#+308]
ldrh r14, [r0,#+320]
vmladavax.s16 r14, Q7, Q0
vldrh.u16 Q0, [r1, #84]
vldrw.u32 Q1, [Q2, #236]
strh r12, [r0,#+310]
ldrh r12, [r0,#+322]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q3, [r1, #86]
strh r10, [r0,#+312]
ldrh r10, [r0,#+324]
vmladavax.s16 r10, Q3, Q1
vldrh.u16 Q4, [r1, #88]
strh r8, [r0,#+314]
ldrh r8, [r0,#+326]
vmladavax.s16 r8, Q4, Q1
vldrh.u16 Q5, [r1, #90]
strh r6, [r0,#+316]
ldrh r6, [r0,#+328]
vmladavax.s16 r6, Q5, Q1
vldrh.u16 Q6, [r1, #92]
strh r4, [r0,#+318]
ldrh r4, [r0,#+330]
vmladavax.s16 r4, Q6, Q1
vldrh.u16 Q7, [r1, #94]
strh r14, [r0,#+320]
ldrh r14, [r0,#+332]
vmladavax.s16 r14, Q7, Q1
vldrh.u16 Q0, [r1, #96]
strh r12, [r0,#+322]
ldrh r12, [r0,#+334]
vmladavax.s16 r12, Q0, Q1
vldrh.u16 Q1, [r1, #98]
vldrw.u32 Q3, [Q2, #236]
strh r10, [r0,#+324]
ldrh r10, [r0,#+336]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q4, [r1, #100]
strh r8, [r0,#+326]
ldrh r8, [r0,#+338]
vmladavax.s16 r8, Q4, Q3
vldrh.u16 Q5, [r1, #102]
strh r6, [r0,#+328]
ldrh r6, [r0,#+340]
vmladavax.s16 r6, Q5, Q3
vldrh.u16 Q6, [r1, #104]
strh r4, [r0,#+330]
ldrh r4, [r0,#+342]
vmladavax.s16 r4, Q6, Q3
vldrh.u16 Q7, [r1, #106]
strh r14, [r0,#+332]
ldrh r14, [r0,#+344]
vmladavax.s16 r14, Q7, Q3
vldrh.u16 Q0, [r1, #108]
strh r12, [r0,#+334]
ldrh r12, [r0,#+346]
vmladavax.s16 r12, Q0, Q3
vldrh.u16 Q1, [r1, #110]
strh r10, [r0,#+336]
ldrh r10, [r0,#+348]
vmladavax.s16 r10, Q1, Q3
vldrh.u16 Q3, [r1, #112]
vldrw.u32 Q4, [Q2, #236]
strh r8, [r0,#+338]
ldrh r8, [r0,#+350]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q5, [r1, #114]
strh r6, [r0,#+340]
ldrh r6, [r0,#+352]
vmladavax.s16 r6, Q5, Q4
vldrh.u16 Q6, [r1, #116]
strh r4, [r0,#+342]
ldrh r4, [r0,#+354]
vmladavax.s16 r4, Q6, Q4
vldrh.u16 Q7, [r1, #118]
strh r14, [r0,#+344]
ldrh r14, [r0,#+356]
vmladavax.s16 r14, Q7, Q4
vldrh.u16 Q0, [r1, #120]
strh r12, [r0,#+346]
ldrh r12, [r0,#+358]
vmladavax.s16 r12, Q0, Q4
vldrh.u16 Q1, [r1, #122]
strh r10, [r0,#+348]
ldrh r10, [r0,#+360]
vmladavax.s16 r10, Q1, Q4
vldrh.u16 Q3, [r1, #124]
strh r8, [r0,#+350]
ldrh r8, [r0,#+362]
vmladavax.s16 r8, Q3, Q4
vldrh.u16 Q4, [r1, #126]
vldrw.u32 Q5, [Q2, #236]
strh r6, [r0,#+352]
ldrh r6, [r0,#+364]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q6, [r1, #128]
strh r4, [r0,#+354]
ldrh r4, [r0,#+366]
vmladavax.s16 r4, Q6, Q5
vldrh.u16 Q7, [r1, #130]
strh r14, [r0,#+356]
ldrh r14, [r0,#+368]
vmladavax.s16 r14, Q7, Q5
vldrh.u16 Q0, [r1, #132]
strh r12, [r0,#+358]
ldrh r12, [r0,#+370]
vmladavax.s16 r12, Q0, Q5
vldrh.u16 Q1, [r1, #134]
strh r10, [r0,#+360]
ldrh r10, [r0,#+372]
vmladavax.s16 r10, Q1, Q5
vldrh.u16 Q3, [r1, #136]
strh r8, [r0,#+362]
ldrh r8, [r0,#+374]
vmladavax.s16 r8, Q3, Q5
vldrh.u16 Q4, [r1, #138]
strh r6, [r0,#+364]
ldrh r6, [r0,#+376]
vmladavax.s16 r6, Q4, Q5
vldrh.u16 Q5, [r1, #140]
vldrw.u32 Q6, [Q2, #236]
strh r4, [r0,#+366]
ldrh r4, [r0,#+378]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q7, [r1, #142]
strh r14, [r0,#+368]
ldrh r14, [r0,#+380]
vmladavax.s16 r14, Q7, Q6
vldrh.u16 Q0, [r1, #144]
strh r12, [r0,#+370]
ldrh r12, [r0,#+382]
vmladavax.s16 r12, Q0, Q6
vldrh.u16 Q1, [r1, #146]
strh r10, [r0,#+372]
ldrh r10, [r0,#+384]
vmladavax.s16 r10, Q1, Q6
vldrh.u16 Q3, [r1, #148]
strh r8, [r0,#+374]
ldrh r8, [r0,#+386]
vmladavax.s16 r8, Q3, Q6
vldrh.u16 Q4, [r1, #150]
strh r6, [r0,#+376]
ldrh r6, [r0,#+388]
vmladavax.s16 r6, Q4, Q6
vldrh.u16 Q5, [r1, #152]
strh r4, [r0,#+378]
ldrh r4, [r0,#+390]
vmladavax.s16 r4, Q5, Q6
vldrh.u16 Q6, [r1, #154]
vldrw.u32 Q7, [Q2, #236]
strh r14, [r0,#+380]
ldrh r14, [r0,#+392]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q0, [r1, #156]
strh r12, [r0,#+382]
ldrh r12, [r0,#+394]
vmladavax.s16 r12, Q0, Q7
vldrh.u16 Q1, [r1, #158]
strh r10, [r0,#+384]
ldrh r10, [r0,#+396]
vmladavax.s16 r10, Q1, Q7
vldrh.u16 Q3, [r1, #160]
strh r8, [r0,#+386]
ldrh r8, [r0,#+398]
vmladavax.s16 r8, Q3, Q7
vldrh.u16 Q4, [r1, #162]
strh r6, [r0,#+388]
ldrh r6, [r0,#+400]
vmladavax.s16 r6, Q4, Q7
vldrh.u16 Q5, [r1, #164]
strh r4, [r0,#+390]
ldrh r4, [r0,#+402]
vmladavax.s16 r4, Q5, Q7
vldrh.u16 Q6, [r1, #166]
strh r14, [r0,#+392]
ldrh r14, [r0,#+404]
vmladavax.s16 r14, Q6, Q7
vldrh.u16 Q7, [r1, #168]
vldrw.u32 Q0, [Q2, #236]
strh r12, [r0,#+394]
ldrh r12, [r0,#+406]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q1, [r1, #170]
strh r10, [r0,#+396]
ldrh r10, [r0,#+408]
vmladavax.s16 r10, Q1, Q0
vldrh.u16 Q3, [r1, #172]
strh r8, [r0,#+398]
ldrh r8, [r0,#+410]
vmladavax.s16 r8, Q3, Q0
vldrh.u16 Q4, [r1, #174]
strh r6, [r0,#+400]
ldrh r6, [r0,#+412]
vmladavax.s16 r6, Q4, Q0
vldrh.u16 Q5, [r1, #176]
strh r4, [r0,#+402]
ldrh r4, [r0,#+414]
vmladavax.s16 r4, Q5, Q0
vldrh.u16 Q6, [r1, #178]
strh r14, [r0,#+404]
ldrh r14, [r0,#+416]
vmladavax.s16 r14, Q6, Q0
vldrh.u16 Q7, [r1, #180]
strh r12, [r0,#+406]
ldrh r12, [r0,#+418]
vmladavax.s16 r12, Q7, Q0
vldrh.u16 Q0, [r1, #182]
vldrw.u32 Q1, [Q2, #236]
strh r10, [r0,#+408]
ldrh r10, [r0,#+420]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q3, [r1, #184]
strh r8, [r0,#+410]
ldrh r8, [r0,#+422]
vmladavax.s16 r8, Q3, Q1
vldrh.u16 Q4, [r1, #186]
strh r6, [r0,#+412]
ldrh r6, [r0,#+424]
vmladavax.s16 r6, Q4, Q1
vldrh.u16 Q5, [r1, #188]
strh r4, [r0,#+414]
ldrh r4, [r0,#+426]
vmladavax.s16 r4, Q5, Q1
vldrh.u16 Q6, [r1, #190]
strh r14, [r0,#+416]
ldrh r14, [r0,#+428]
vmladavax.s16 r14, Q6, Q1
vldrh.u16 Q7, [r1, #192]
strh r12, [r0,#+418]
ldrh r12, [r0,#+430]
vmladavax.s16 r12, Q7, Q1
vldrh.u16 Q0, [r1, #194]
strh r10, [r0,#+420]
ldrh r10, [r0,#+432]
vmladavax.s16 r10, Q0, Q1
vldrh.u16 Q1, [r1, #196]
vldrw.u32 Q3, [Q2, #236]
strh r8, [r0,#+422]
ldrh r8, [r0,#+434]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #198]
strh r6, [r0,#+424]
ldrh r6, [r0,#+436]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #200]
strh r4, [r0,#+426]
ldrh r4, [r0,#+438]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #202]
strh r14, [r0,#+428]
ldrh r14, [r0,#+440]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #204]
strh r12, [r0,#+430]
ldrh r12, [r0,#+442]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #206]
strh r10, [r0,#+432]
ldrh r10, [r0,#+444]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #208]
strh r8, [r0,#+434]
ldrh r8, [r0,#+446]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #210]
vldrw.u32 Q4, [Q2, #236]
strh r6, [r0,#+436]
ldrh r6, [r0,#+448]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #212]
strh r4, [r0,#+438]
ldrh r4, [r0,#+450]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #214]
strh r14, [r0,#+440]
ldrh r14, [r0,#+452]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #216]
strh r12, [r0,#+442]
ldrh r12, [r0,#+454]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #218]
strh r10, [r0,#+444]
ldrh r10, [r0,#+456]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #220]
strh r8, [r0,#+446]
ldrh r8, [r0,#+458]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #222]
strh r6, [r0,#+448]
ldrh r6, [r0,#+460]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #224]
vldrw.u32 Q5, [Q2, #236]
strh r4, [r0,#+450]
ldrh r4, [r0,#+462]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #226]
strh r14, [r0,#+452]
ldrh r14, [r0,#+464]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #228]
strh r12, [r0,#+454]
ldrh r12, [r0,#+466]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #230]
strh r10, [r0,#+456]
ldrh r10, [r0,#+468]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #232]
strh r8, [r0,#+458]
ldrh r8, [r0,#+470]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #234]
strh r6, [r0,#+460]
ldrh r6, [r0,#+472]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #236]
strh r4, [r0,#+462]
ldrh r4, [r0,#+474]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #238]
vldrw.u32 Q6, [Q2, #236]
strh r14, [r0,#+464]
ldrh r14, [r0,#+476]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #240]
strh r12, [r0,#+466]
vmladavx.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #242]
strh r10, [r0,#+468]
vmladavx.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #244]
strh r8, [r0,#+470]
vmladavx.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #246]
strh r6, [r0,#+472]
vmladavx.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #248]
strh r4, [r0,#+474]
vmladavx.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #250]
strh r14, [r0,#+476]
vmladavx.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #252]
vldrw.u32 Q7, [Q2, #236]
strh r12, [r0,#+478]
vmladavx.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #254]
strh r10, [r0,#+480]
vmladavx.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #-14]
vldrw.u32 Q3, [Q2, #252]
strh r8, [r0,#+482]
ldrh r8, [r0,#+240]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q4, [r1, #-12]
strh r6, [r0,#+484]
ldrh r6, [r0,#+242]
vmladavax.s16 r6, Q4, Q3
vldrh.u16 Q5, [r1, #-10]
strh r4, [r0,#+486]
ldrh r4, [r0,#+244]
vmladavax.s16 r4, Q5, Q3
vldrh.u16 Q6, [r1, #-8]
strh r14, [r0,#+488]
ldrh r14, [r0,#+246]
vmladavax.s16 r14, Q6, Q3
vldrh.u16 Q7, [r1, #-6]
strh r12, [r0,#+490]
ldrh r12, [r0,#+248]
vmladavax.s16 r12, Q7, Q3
vldrh.u16 Q0, [r1, #-4]
strh r10, [r0,#+492]
ldrh r10, [r0,#+250]
vmladavax.s16 r10, Q0, Q3
vldrh.u16 Q1, [r1, #-2]
strh r8, [r0,#+240]
ldrh r8, [r0,#+252]
vmladavax.s16 r8, Q1, Q3
vldrh.u16 Q3, [r1, #0]
vldrw.u32 Q4, [Q2, #252]
strh r6, [r0,#+242]
ldrh r6, [r0,#+254]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q5, [r1, #2]
strh r4, [r0,#+244]
ldrh r4, [r0,#+256]
vmladavax.s16 r4, Q5, Q4
vldrh.u16 Q6, [r1, #4]
strh r14, [r0,#+246]
ldrh r14, [r0,#+258]
vmladavax.s16 r14, Q6, Q4
vldrh.u16 Q7, [r1, #6]
strh r12, [r0,#+248]
ldrh r12, [r0,#+260]
vmladavax.s16 r12, Q7, Q4
vldrh.u16 Q0, [r1, #8]
strh r10, [r0,#+250]
ldrh r10, [r0,#+262]
vmladavax.s16 r10, Q0, Q4
vldrh.u16 Q1, [r1, #10]
strh r8, [r0,#+252]
ldrh r8, [r0,#+264]
vmladavax.s16 r8, Q1, Q4
vldrh.u16 Q3, [r1, #12]
strh r6, [r0,#+254]
ldrh r6, [r0,#+266]
vmladavax.s16 r6, Q3, Q4
vldrh.u16 Q4, [r1, #14]
vldrw.u32 Q5, [Q2, #252]
strh r4, [r0,#+256]
ldrh r4, [r0,#+268]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q6, [r1, #16]
strh r14, [r0,#+258]
ldrh r14, [r0,#+270]
vmladavax.s16 r14, Q6, Q5
vldrh.u16 Q7, [r1, #18]
strh r12, [r0,#+260]
ldrh r12, [r0,#+272]
vmladavax.s16 r12, Q7, Q5
vldrh.u16 Q0, [r1, #20]
strh r10, [r0,#+262]
ldrh r10, [r0,#+274]
vmladavax.s16 r10, Q0, Q5
vldrh.u16 Q1, [r1, #22]
strh r8, [r0,#+264]
ldrh r8, [r0,#+276]
vmladavax.s16 r8, Q1, Q5
vldrh.u16 Q3, [r1, #24]
strh r6, [r0,#+266]
ldrh r6, [r0,#+278]
vmladavax.s16 r6, Q3, Q5
vldrh.u16 Q4, [r1, #26]
strh r4, [r0,#+268]
ldrh r4, [r0,#+280]
vmladavax.s16 r4, Q4, Q5
vldrh.u16 Q5, [r1, #28]
vldrw.u32 Q6, [Q2, #252]
strh r14, [r0,#+270]
ldrh r14, [r0,#+282]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q7, [r1, #30]
strh r12, [r0,#+272]
ldrh r12, [r0,#+284]
vmladavax.s16 r12, Q7, Q6
vldrh.u16 Q0, [r1, #32]
strh r10, [r0,#+274]
ldrh r10, [r0,#+286]
vmladavax.s16 r10, Q0, Q6
vldrh.u16 Q1, [r1, #34]
strh r8, [r0,#+276]
ldrh r8, [r0,#+288]
vmladavax.s16 r8, Q1, Q6
vldrh.u16 Q3, [r1, #36]
strh r6, [r0,#+278]
ldrh r6, [r0,#+290]
vmladavax.s16 r6, Q3, Q6
vldrh.u16 Q4, [r1, #38]
strh r4, [r0,#+280]
ldrh r4, [r0,#+292]
vmladavax.s16 r4, Q4, Q6
vldrh.u16 Q5, [r1, #40]
strh r14, [r0,#+282]
ldrh r14, [r0,#+294]
vmladavax.s16 r14, Q5, Q6
vldrh.u16 Q6, [r1, #42]
vldrw.u32 Q7, [Q2, #252]
strh r12, [r0,#+284]
ldrh r12, [r0,#+296]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q0, [r1, #44]
strh r10, [r0,#+286]
ldrh r10, [r0,#+298]
vmladavax.s16 r10, Q0, Q7
vldrh.u16 Q1, [r1, #46]
strh r8, [r0,#+288]
ldrh r8, [r0,#+300]
vmladavax.s16 r8, Q1, Q7
vldrh.u16 Q3, [r1, #48]
strh r6, [r0,#+290]
ldrh r6, [r0,#+302]
vmladavax.s16 r6, Q3, Q7
vldrh.u16 Q4, [r1, #50]
strh r4, [r0,#+292]
ldrh r4, [r0,#+304]
vmladavax.s16 r4, Q4, Q7
vldrh.u16 Q5, [r1, #52]
strh r14, [r0,#+294]
ldrh r14, [r0,#+306]
vmladavax.s16 r14, Q5, Q7
vldrh.u16 Q6, [r1, #54]
strh r12, [r0,#+296]
ldrh r12, [r0,#+308]
vmladavax.s16 r12, Q6, Q7
vldrh.u16 Q7, [r1, #56]
vldrw.u32 Q0, [Q2, #252]
strh r10, [r0,#+298]
ldrh r10, [r0,#+310]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q1, [r1, #58]
strh r8, [r0,#+300]
ldrh r8, [r0,#+312]
vmladavax.s16 r8, Q1, Q0
vldrh.u16 Q3, [r1, #60]
strh r6, [r0,#+302]
ldrh r6, [r0,#+314]
vmladavax.s16 r6, Q3, Q0
vldrh.u16 Q4, [r1, #62]
strh r4, [r0,#+304]
ldrh r4, [r0,#+316]
vmladavax.s16 r4, Q4, Q0
vldrh.u16 Q5, [r1, #64]
strh r14, [r0,#+306]
ldrh r14, [r0,#+318]
vmladavax.s16 r14, Q5, Q0
vldrh.u16 Q6, [r1, #66]
strh r12, [r0,#+308]
ldrh r12, [r0,#+320]
vmladavax.s16 r12, Q6, Q0
vldrh.u16 Q7, [r1, #68]
strh r10, [r0,#+310]
ldrh r10, [r0,#+322]
vmladavax.s16 r10, Q7, Q0
vldrh.u16 Q0, [r1, #70]
vldrw.u32 Q1, [Q2, #252]
strh r8, [r0,#+312]
ldrh r8, [r0,#+324]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q3, [r1, #72]
strh r6, [r0,#+314]
ldrh r6, [r0,#+326]
vmladavax.s16 r6, Q3, Q1
vldrh.u16 Q4, [r1, #74]
strh r4, [r0,#+316]
ldrh r4, [r0,#+328]
vmladavax.s16 r4, Q4, Q1
vldrh.u16 Q5, [r1, #76]
strh r14, [r0,#+318]
ldrh r14, [r0,#+330]
vmladavax.s16 r14, Q5, Q1
vldrh.u16 Q6, [r1, #78]
strh r12, [r0,#+320]
ldrh r12, [r0,#+332]
vmladavax.s16 r12, Q6, Q1
vldrh.u16 Q7, [r1, #80]
strh r10, [r0,#+322]
ldrh r10, [r0,#+334]
vmladavax.s16 r10, Q7, Q1
vldrh.u16 Q0, [r1, #82]
strh r8, [r0,#+324]
ldrh r8, [r0,#+336]
vmladavax.s16 r8, Q0, Q1
vldrh.u16 Q1, [r1, #84]
vldrw.u32 Q3, [Q2, #252]
strh r6, [r0,#+326]
ldrh r6, [r0,#+338]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q4, [r1, #86]
strh r4, [r0,#+328]
ldrh r4, [r0,#+340]
vmladavax.s16 r4, Q4, Q3
vldrh.u16 Q5, [r1, #88]
strh r14, [r0,#+330]
ldrh r14, [r0,#+342]
vmladavax.s16 r14, Q5, Q3
vldrh.u16 Q6, [r1, #90]
strh r12, [r0,#+332]
ldrh r12, [r0,#+344]
vmladavax.s16 r12, Q6, Q3
vldrh.u16 Q7, [r1, #92]
strh r10, [r0,#+334]
ldrh r10, [r0,#+346]
vmladavax.s16 r10, Q7, Q3
vldrh.u16 Q0, [r1, #94]
strh r8, [r0,#+336]
ldrh r8, [r0,#+348]
vmladavax.s16 r8, Q0, Q3
vldrh.u16 Q1, [r1, #96]
strh r6, [r0,#+338]
ldrh r6, [r0,#+350]
vmladavax.s16 r6, Q1, Q3
vldrh.u16 Q3, [r1, #98]
vldrw.u32 Q4, [Q2, #252]
strh r4, [r0,#+340]
ldrh r4, [r0,#+352]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q5, [r1, #100]
strh r14, [r0,#+342]
ldrh r14, [r0,#+354]
vmladavax.s16 r14, Q5, Q4
vldrh.u16 Q6, [r1, #102]
strh r12, [r0,#+344]
ldrh r12, [r0,#+356]
vmladavax.s16 r12, Q6, Q4
vldrh.u16 Q7, [r1, #104]
strh r10, [r0,#+346]
ldrh r10, [r0,#+358]
vmladavax.s16 r10, Q7, Q4
vldrh.u16 Q0, [r1, #106]
strh r8, [r0,#+348]
ldrh r8, [r0,#+360]
vmladavax.s16 r8, Q0, Q4
vldrh.u16 Q1, [r1, #108]
strh r6, [r0,#+350]
ldrh r6, [r0,#+362]
vmladavax.s16 r6, Q1, Q4
vldrh.u16 Q3, [r1, #110]
strh r4, [r0,#+352]
ldrh r4, [r0,#+364]
vmladavax.s16 r4, Q3, Q4
vldrh.u16 Q4, [r1, #112]
vldrw.u32 Q5, [Q2, #252]
strh r14, [r0,#+354]
ldrh r14, [r0,#+366]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q6, [r1, #114]
strh r12, [r0,#+356]
ldrh r12, [r0,#+368]
vmladavax.s16 r12, Q6, Q5
vldrh.u16 Q7, [r1, #116]
strh r10, [r0,#+358]
ldrh r10, [r0,#+370]
vmladavax.s16 r10, Q7, Q5
vldrh.u16 Q0, [r1, #118]
strh r8, [r0,#+360]
ldrh r8, [r0,#+372]
vmladavax.s16 r8, Q0, Q5
vldrh.u16 Q1, [r1, #120]
strh r6, [r0,#+362]
ldrh r6, [r0,#+374]
vmladavax.s16 r6, Q1, Q5
vldrh.u16 Q3, [r1, #122]
strh r4, [r0,#+364]
ldrh r4, [r0,#+376]
vmladavax.s16 r4, Q3, Q5
vldrh.u16 Q4, [r1, #124]
strh r14, [r0,#+366]
ldrh r14, [r0,#+378]
vmladavax.s16 r14, Q4, Q5
vldrh.u16 Q5, [r1, #126]
vldrw.u32 Q6, [Q2, #252]
strh r12, [r0,#+368]
ldrh r12, [r0,#+380]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q7, [r1, #128]
strh r10, [r0,#+370]
ldrh r10, [r0,#+382]
vmladavax.s16 r10, Q7, Q6
vldrh.u16 Q0, [r1, #130]
strh r8, [r0,#+372]
ldrh r8, [r0,#+384]
vmladavax.s16 r8, Q0, Q6
vldrh.u16 Q1, [r1, #132]
strh r6, [r0,#+374]
ldrh r6, [r0,#+386]
vmladavax.s16 r6, Q1, Q6
vldrh.u16 Q3, [r1, #134]
strh r4, [r0,#+376]
ldrh r4, [r0,#+388]
vmladavax.s16 r4, Q3, Q6
vldrh.u16 Q4, [r1, #136]
strh r14, [r0,#+378]
ldrh r14, [r0,#+390]
vmladavax.s16 r14, Q4, Q6
vldrh.u16 Q5, [r1, #138]
strh r12, [r0,#+380]
ldrh r12, [r0,#+392]
vmladavax.s16 r12, Q5, Q6
vldrh.u16 Q6, [r1, #140]
vldrw.u32 Q7, [Q2, #252]
strh r10, [r0,#+382]
ldrh r10, [r0,#+394]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q0, [r1, #142]
strh r8, [r0,#+384]
ldrh r8, [r0,#+396]
vmladavax.s16 r8, Q0, Q7
vldrh.u16 Q1, [r1, #144]
strh r6, [r0,#+386]
ldrh r6, [r0,#+398]
vmladavax.s16 r6, Q1, Q7
vldrh.u16 Q3, [r1, #146]
strh r4, [r0,#+388]
ldrh r4, [r0,#+400]
vmladavax.s16 r4, Q3, Q7
vldrh.u16 Q4, [r1, #148]
strh r14, [r0,#+390]
ldrh r14, [r0,#+402]
vmladavax.s16 r14, Q4, Q7
vldrh.u16 Q5, [r1, #150]
strh r12, [r0,#+392]
ldrh r12, [r0,#+404]
vmladavax.s16 r12, Q5, Q7
vldrh.u16 Q6, [r1, #152]
strh r10, [r0,#+394]
ldrh r10, [r0,#+406]
vmladavax.s16 r10, Q6, Q7
vldrh.u16 Q7, [r1, #154]
vldrw.u32 Q0, [Q2, #252]
strh r8, [r0,#+396]
ldrh r8, [r0,#+408]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q1, [r1, #156]
strh r6, [r0,#+398]
ldrh r6, [r0,#+410]
vmladavax.s16 r6, Q1, Q0
vldrh.u16 Q3, [r1, #158]
strh r4, [r0,#+400]
ldrh r4, [r0,#+412]
vmladavax.s16 r4, Q3, Q0
vldrh.u16 Q4, [r1, #160]
strh r14, [r0,#+402]
ldrh r14, [r0,#+414]
vmladavax.s16 r14, Q4, Q0
vldrh.u16 Q5, [r1, #162]
strh r12, [r0,#+404]
ldrh r12, [r0,#+416]
vmladavax.s16 r12, Q5, Q0
vldrh.u16 Q6, [r1, #164]
strh r10, [r0,#+406]
ldrh r10, [r0,#+418]
vmladavax.s16 r10, Q6, Q0
vldrh.u16 Q7, [r1, #166]
strh r8, [r0,#+408]
ldrh r8, [r0,#+420]
vmladavax.s16 r8, Q7, Q0
vldrh.u16 Q0, [r1, #168]
vldrw.u32 Q1, [Q2, #252]
strh r6, [r0,#+410]
ldrh r6, [r0,#+422]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q3, [r1, #170]
strh r4, [r0,#+412]
ldrh r4, [r0,#+424]
vmladavax.s16 r4, Q3, Q1
vldrh.u16 Q4, [r1, #172]
strh r14, [r0,#+414]
ldrh r14, [r0,#+426]
vmladavax.s16 r14, Q4, Q1
vldrh.u16 Q5, [r1, #174]
strh r12, [r0,#+416]
ldrh r12, [r0,#+428]
vmladavax.s16 r12, Q5, Q1
vldrh.u16 Q6, [r1, #176]
strh r10, [r0,#+418]
ldrh r10, [r0,#+430]
vmladavax.s16 r10, Q6, Q1
vldrh.u16 Q7, [r1, #178]
strh r8, [r0,#+420]
ldrh r8, [r0,#+432]
vmladavax.s16 r8, Q7, Q1
vldrh.u16 Q0, [r1, #180]
strh r6, [r0,#+422]
ldrh r6, [r0,#+434]
vmladavax.s16 r6, Q0, Q1
vldrh.u16 Q1, [r1, #182]
vldrw.u32 Q3, [Q2, #252]
strh r4, [r0,#+424]
ldrh r4, [r0,#+436]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q4, [r1, #184]
strh r14, [r0,#+426]
ldrh r14, [r0,#+438]
vmladavax.s16 r14, Q4, Q3
vldrh.u16 Q5, [r1, #186]
strh r12, [r0,#+428]
ldrh r12, [r0,#+440]
vmladavax.s16 r12, Q5, Q3
vldrh.u16 Q6, [r1, #188]
strh r10, [r0,#+430]
ldrh r10, [r0,#+442]
vmladavax.s16 r10, Q6, Q3
vldrh.u16 Q7, [r1, #190]
strh r8, [r0,#+432]
ldrh r8, [r0,#+444]
vmladavax.s16 r8, Q7, Q3
vldrh.u16 Q0, [r1, #192]
strh r6, [r0,#+434]
ldrh r6, [r0,#+446]
vmladavax.s16 r6, Q0, Q3
vldrh.u16 Q1, [r1, #194]
strh r4, [r0,#+436]
ldrh r4, [r0,#+448]
vmladavax.s16 r4, Q1, Q3
vldrh.u16 Q3, [r1, #196]
vldrw.u32 Q4, [Q2, #252]
strh r14, [r0,#+438]
ldrh r14, [r0,#+450]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q5, [r1, #198]
strh r12, [r0,#+440]
ldrh r12, [r0,#+452]
vmladavax.s16 r12, Q5, Q4
vldrh.u16 Q6, [r1, #200]
strh r10, [r0,#+442]
ldrh r10, [r0,#+454]
vmladavax.s16 r10, Q6, Q4
vldrh.u16 Q7, [r1, #202]
strh r8, [r0,#+444]
ldrh r8, [r0,#+456]
vmladavax.s16 r8, Q7, Q4
vldrh.u16 Q0, [r1, #204]
strh r6, [r0,#+446]
ldrh r6, [r0,#+458]
vmladavax.s16 r6, Q0, Q4
vldrh.u16 Q1, [r1, #206]
strh r4, [r0,#+448]
ldrh r4, [r0,#+460]
vmladavax.s16 r4, Q1, Q4
vldrh.u16 Q3, [r1, #208]
strh r14, [r0,#+450]
ldrh r14, [r0,#+462]
vmladavax.s16 r14, Q3, Q4
vldrh.u16 Q4, [r1, #210]
vldrw.u32 Q5, [Q2, #252]
strh r12, [r0,#+452]
ldrh r12, [r0,#+464]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q6, [r1, #212]
strh r10, [r0,#+454]
ldrh r10, [r0,#+466]
vmladavax.s16 r10, Q6, Q5
vldrh.u16 Q7, [r1, #214]
strh r8, [r0,#+456]
ldrh r8, [r0,#+468]
vmladavax.s16 r8, Q7, Q5
vldrh.u16 Q0, [r1, #216]
strh r6, [r0,#+458]
ldrh r6, [r0,#+470]
vmladavax.s16 r6, Q0, Q5
vldrh.u16 Q1, [r1, #218]
strh r4, [r0,#+460]
ldrh r4, [r0,#+472]
vmladavax.s16 r4, Q1, Q5
vldrh.u16 Q3, [r1, #220]
strh r14, [r0,#+462]
ldrh r14, [r0,#+474]
vmladavax.s16 r14, Q3, Q5
vldrh.u16 Q4, [r1, #222]
strh r12, [r0,#+464]
ldrh r12, [r0,#+476]
vmladavax.s16 r12, Q4, Q5
vldrh.u16 Q5, [r1, #224]
vldrw.u32 Q6, [Q2, #252]
strh r10, [r0,#+466]
ldrh r10, [r0,#+478]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q7, [r1, #226]
strh r8, [r0,#+468]
ldrh r8, [r0,#+480]
vmladavax.s16 r8, Q7, Q6
vldrh.u16 Q0, [r1, #228]
strh r6, [r0,#+470]
ldrh r6, [r0,#+482]
vmladavax.s16 r6, Q0, Q6
vldrh.u16 Q1, [r1, #230]
strh r4, [r0,#+472]
ldrh r4, [r0,#+484]
vmladavax.s16 r4, Q1, Q6
vldrh.u16 Q3, [r1, #232]
strh r14, [r0,#+474]
ldrh r14, [r0,#+486]
vmladavax.s16 r14, Q3, Q6
vldrh.u16 Q4, [r1, #234]
strh r12, [r0,#+476]
ldrh r12, [r0,#+488]
vmladavax.s16 r12, Q4, Q6
vldrh.u16 Q5, [r1, #236]
strh r10, [r0,#+478]
ldrh r10, [r0,#+490]
vmladavax.s16 r10, Q5, Q6
vldrh.u16 Q6, [r1, #238]
vldrw.u32 Q7, [Q2, #252]
strh r8, [r0,#+480]
ldrh r8, [r0,#+492]
vmladavax.s16 r8, Q6, Q7
vldrh.u16 Q0, [r1, #240]
strh r6, [r0,#+482]
vmladavx.s16 r6, Q0, Q7
vldrh.u16 Q1, [r1, #242]
strh r4, [r0,#+484]
vmladavx.s16 r4, Q1, Q7
vldrh.u16 Q3, [r1, #244]
strh r14, [r0,#+486]
vmladavx.s16 r14, Q3, Q7
vldrh.u16 Q4, [r1, #246]
strh r12, [r0,#+488]
vmladavx.s16 r12, Q4, Q7
vldrh.u16 Q5, [r1, #248]
strh r10, [r0,#+490]
vmladavx.s16 r10, Q5, Q7
vldrh.u16 Q6, [r1, #250]
strh r8, [r0,#+492]
vmladavx.s16 r8, Q6, Q7
vldrh.u16 Q7, [r1, #252]
vldrw.u32 Q0, [Q2, #252]
strh r6, [r0,#+494]
vmladavx.s16 r6, Q7, Q0
vldrh.u16 Q1, [r1, #254]
strh r4, [r0,#+496]
vmladavx.s16 r4, Q1, Q0
strh r14, [r0,#+498]
strh r12, [r0,#+500]
strh r10, [r0,#+502]
strh r8, [r0,#+504]
strh r6, [r0,#+506]
strh r4, [r0,#+508]
pop {r4-r11,lr}
bx lr