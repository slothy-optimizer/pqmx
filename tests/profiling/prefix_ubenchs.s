#include "ubenchmarks.i"
#include "profiler_macros.i"

.macro prefix_0_core
padding
.endm
make_ubench prefix_0, nop, prefix_0_core, nop

.macro prefix_1_core
/* 00 */     add r0, r0, r0
padding
.endm
make_ubench prefix_1, nop, prefix_1_core, nop

.macro prefix_2_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
padding
.endm
make_ubench prefix_2, nop, prefix_2_core, nop

.macro prefix_3_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
padding
.endm
make_ubench prefix_3, nop, prefix_3_core, nop

.macro prefix_4_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
padding
.endm
make_ubench prefix_4, nop, prefix_4_core, nop

.macro prefix_5_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
padding
.endm
make_ubench prefix_5, nop, prefix_5_core, nop

.macro prefix_6_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
/* 05 */     add r1, r1, r1
padding
.endm
make_ubench prefix_6, nop, prefix_6_core, nop

.macro prefix_7_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
/* 05 */     add r1, r1, r1
/* 06 */     add r0, r0, r0
padding
.endm
make_ubench prefix_7, nop, prefix_7_core, nop

.macro prefix_8_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
/* 05 */     add r1, r1, r1
/* 06 */     add r0, r0, r0
/* 07 */     add r1, r1, r1
padding
.endm
make_ubench prefix_8, nop, prefix_8_core, nop

.macro prefix_9_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
/* 05 */     add r1, r1, r1
/* 06 */     add r0, r0, r0
/* 07 */     add r1, r1, r1
/* 08 */     mul r2, r2, r2
padding
.endm
make_ubench prefix_9, nop, prefix_9_core, nop

.macro prefix_10_core
/* 00 */     add r0, r0, r0
/* 01 */     add r1, r1, r1
/* 02 */     add r0, r0, r0
/* 03 */     add r1, r1, r1
/* 04 */     add r0, r0, r0
/* 05 */     add r1, r1, r1
/* 06 */     add r0, r0, r0
/* 07 */     add r1, r1, r1
/* 08 */     mul r2, r2, r2
/* 09 */     mul r3, r2, r3
padding
.endm
make_ubench prefix_10, nop, prefix_10_core, nop
