#include "ubenchmarks.i"
#include "profiler_macros.i"

.macro prefix_0_core
padding
.endm
make_ubench prefix_0, isb, prefix_0_core, isb

.macro prefix_1_core
/* 00 */     vmov.w r6, s2
padding
.endm
make_ubench prefix_1, isb, prefix_1_core, isb

.macro prefix_2_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
padding
.endm
make_ubench prefix_2, isb, prefix_2_core, isb

.macro prefix_3_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
padding
.endm
make_ubench prefix_3, isb, prefix_3_core, isb

.macro prefix_4_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
padding
.endm
make_ubench prefix_4, isb, prefix_4_core, isb

.macro prefix_5_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
padding
.endm
make_ubench prefix_5, isb, prefix_5_core, isb

.macro prefix_6_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
padding
.endm
make_ubench prefix_6, isb, prefix_6_core, isb

.macro prefix_7_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
padding
.endm
make_ubench prefix_7, isb, prefix_7_core, isb

.macro prefix_8_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
padding
.endm
make_ubench prefix_8, isb, prefix_8_core, isb

.macro prefix_9_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
padding
.endm
make_ubench prefix_9, isb, prefix_9_core, isb

.macro prefix_10_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
padding
.endm
make_ubench prefix_10, isb, prefix_10_core, isb

.macro prefix_11_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
padding
.endm
make_ubench prefix_11, isb, prefix_11_core, isb

.macro prefix_12_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
padding
.endm
make_ubench prefix_12, isb, prefix_12_core, isb

.macro prefix_13_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
padding
.endm
make_ubench prefix_13, isb, prefix_13_core, isb

.macro prefix_14_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
padding
.endm
make_ubench prefix_14, isb, prefix_14_core, isb

.macro prefix_15_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
padding
.endm
make_ubench prefix_15, isb, prefix_15_core, isb

.macro prefix_16_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
padding
.endm
make_ubench prefix_16, isb, prefix_16_core, isb

.macro prefix_17_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
padding
.endm
make_ubench prefix_17, isb, prefix_17_core, isb

.macro prefix_18_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
padding
.endm
make_ubench prefix_18, isb, prefix_18_core, isb

.macro prefix_19_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
padding
.endm
make_ubench prefix_19, isb, prefix_19_core, isb

.macro prefix_20_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
padding
.endm
make_ubench prefix_20, isb, prefix_20_core, isb

.macro prefix_21_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
padding
.endm
make_ubench prefix_21, isb, prefix_21_core, isb

.macro prefix_22_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
padding
.endm
make_ubench prefix_22, isb, prefix_22_core, isb

.macro prefix_23_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
padding
.endm
make_ubench prefix_23, isb, prefix_23_core, isb

.macro prefix_24_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
padding
.endm
make_ubench prefix_24, isb, prefix_24_core, isb

.macro prefix_25_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
padding
.endm
make_ubench prefix_25, isb, prefix_25_core, isb

.macro prefix_26_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
padding
.endm
make_ubench prefix_26, isb, prefix_26_core, isb

.macro prefix_27_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
padding
.endm
make_ubench prefix_27, isb, prefix_27_core, isb

.macro prefix_28_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
padding
.endm
make_ubench prefix_28, isb, prefix_28_core, isb

.macro prefix_29_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
padding
.endm
make_ubench prefix_29, isb, prefix_29_core, isb

.macro prefix_30_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
padding
.endm
make_ubench prefix_30, isb, prefix_30_core, isb

.macro prefix_31_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
padding
.endm
make_ubench prefix_31, isb, prefix_31_core, isb

.macro prefix_32_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
padding
.endm
make_ubench prefix_32, isb, prefix_32_core, isb

.macro prefix_33_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
padding
.endm
make_ubench prefix_33, isb, prefix_33_core, isb

.macro prefix_34_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
padding
.endm
make_ubench prefix_34, isb, prefix_34_core, isb

.macro prefix_35_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
padding
.endm
make_ubench prefix_35, isb, prefix_35_core, isb

.macro prefix_36_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
padding
.endm
make_ubench prefix_36, isb, prefix_36_core, isb

.macro prefix_37_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
padding
.endm
make_ubench prefix_37, isb, prefix_37_core, isb

.macro prefix_38_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
padding
.endm
make_ubench prefix_38, isb, prefix_38_core, isb

.macro prefix_39_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
padding
.endm
make_ubench prefix_39, isb, prefix_39_core, isb

.macro prefix_40_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
padding
.endm
make_ubench prefix_40, isb, prefix_40_core, isb

.macro prefix_41_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
padding
.endm
make_ubench prefix_41, isb, prefix_41_core, isb

.macro prefix_42_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
/* 41 */     ldr.w r5, [r0]
padding
.endm
make_ubench prefix_42, isb, prefix_42_core, isb

.macro prefix_43_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
/* 41 */     ldr.w r5, [r0]
/* 42 */     mul r11, r4, r2
padding
.endm
make_ubench prefix_43, isb, prefix_43_core, isb

.macro prefix_44_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
/* 41 */     ldr.w r5, [r0]
/* 42 */     mul r11, r4, r2
/* 43 */     add r5, r6
padding
.endm
make_ubench prefix_44, isb, prefix_44_core, isb

.macro prefix_45_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
/* 41 */     ldr.w r5, [r0]
/* 42 */     mul r11, r4, r2
/* 43 */     add r5, r6
/* 44 */     smull r1, r9, r9, r1
padding
.endm
make_ubench prefix_45, isb, prefix_45_core, isb

.macro prefix_46_core
/* 00 */     vmov.w r6, s2
/* 01 */     ldr.w r14, [r0, #7*32/4]
/* 02 */     ldr.w r8, [r0, #6*32/4]
/* 03 */     smull r11, r7, r14, r6
/* 04 */     smull r14, r8, r8, r6
/* 05 */     ldr.w r4, [r0, #2*32/4]
/* 06 */     mul r1, r11, r2
/* 07 */     ldr.w r9, [r0, #3*32/4]
/* 08 */     mul r5, r14, r2
/* 09 */     vmov.w r12, s4
/* 10 */     smlal r11, r7, r1, r3
/* 11 */     ldr.w r11, [r0, #5*32/4]
/* 12 */     ldr.w r10, [r0, #1*32/4]
/* 13 */     smull r11, r1, r11, r6
/* 14 */     add r9, r7
/* 15 */     smlal r14, r8, r5, r3
/* 16 */     sub.w r5, r9, r7, lsl #1
/* 17 */     mul r14, r11, r2
/* 18 */     add r4, r8
/* 19 */     smull r5, r7, r5, r12
/* 20 */     smlal r11, r1, r14, r3
/* 21 */     sub.w r8, r4, r8, lsl #1
/* 22 */     mul r14, r5, r2
/* 23 */     ldr.w r11, [r0, #4*32/4]
/* 24 */     smull r11, r6, r11, r6
/* 25 */     add r10, r1
/* 26 */     smlal r5, r7, r14, r3
/* 27 */     sub.w r14, r10, r1, lsl #1
/* 28 */     smull r5, r12, r8, r12
/* 29 */     vmov.w r8, s7
/* 30 */     add r14, r7
/* 31 */     mul r1, r11, r2
/* 32 */     sub.w r7, r14, r7, lsl #1
/* 33 */     smull r8, r14, r14, r8
/* 34 */     smlal r11, r6, r1, r3
/* 35 */     mul r1, r8, r2
/* 36 */     mul r11, r5, r2
/* 37 */     smlal r8, r14, r1, r3
/* 38 */     vmov.w r1, s3
/* 39 */     smull r4, r8, r4, r1
/* 40 */     smlal r5, r12, r11, r3
/* 41 */     ldr.w r5, [r0]
/* 42 */     mul r11, r4, r2
/* 43 */     add r5, r6
/* 44 */     smull r1, r9, r9, r1
/* 45 */     smlal r4, r8, r11, r3
padding
.endm
make_ubench prefix_46, isb, prefix_46_core, isb
