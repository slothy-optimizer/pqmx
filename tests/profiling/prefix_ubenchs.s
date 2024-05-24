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

.macro prefix_47_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
padding
.endm
make_ubench prefix_47, isb, prefix_47_core, isb

.macro prefix_48_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
padding
.endm
make_ubench prefix_48, isb, prefix_48_core, isb

.macro prefix_49_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
padding
.endm
make_ubench prefix_49, isb, prefix_49_core, isb

.macro prefix_50_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
padding
.endm
make_ubench prefix_50, isb, prefix_50_core, isb

.macro prefix_51_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
padding
.endm
make_ubench prefix_51, isb, prefix_51_core, isb

.macro prefix_52_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
padding
.endm
make_ubench prefix_52, isb, prefix_52_core, isb

.macro prefix_53_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
padding
.endm
make_ubench prefix_53, isb, prefix_53_core, isb

.macro prefix_54_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
padding
.endm
make_ubench prefix_54, isb, prefix_54_core, isb

.macro prefix_55_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
padding
.endm
make_ubench prefix_55, isb, prefix_55_core, isb

.macro prefix_56_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
padding
.endm
make_ubench prefix_56, isb, prefix_56_core, isb

.macro prefix_57_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
padding
.endm
make_ubench prefix_57, isb, prefix_57_core, isb

.macro prefix_58_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
padding
.endm
make_ubench prefix_58, isb, prefix_58_core, isb

.macro prefix_59_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
padding
.endm
make_ubench prefix_59, isb, prefix_59_core, isb

.macro prefix_60_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
padding
.endm
make_ubench prefix_60, isb, prefix_60_core, isb

.macro prefix_61_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
padding
.endm
make_ubench prefix_61, isb, prefix_61_core, isb

.macro prefix_62_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
padding
.endm
make_ubench prefix_62, isb, prefix_62_core, isb

.macro prefix_63_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
padding
.endm
make_ubench prefix_63, isb, prefix_63_core, isb

.macro prefix_64_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
padding
.endm
make_ubench prefix_64, isb, prefix_64_core, isb

.macro prefix_65_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
padding
.endm
make_ubench prefix_65, isb, prefix_65_core, isb

.macro prefix_66_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
padding
.endm
make_ubench prefix_66, isb, prefix_66_core, isb

.macro prefix_67_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
padding
.endm
make_ubench prefix_67, isb, prefix_67_core, isb

.macro prefix_68_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
padding
.endm
make_ubench prefix_68, isb, prefix_68_core, isb

.macro prefix_69_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
padding
.endm
make_ubench prefix_69, isb, prefix_69_core, isb

.macro prefix_70_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
padding
.endm
make_ubench prefix_70, isb, prefix_70_core, isb

.macro prefix_71_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
padding
.endm
make_ubench prefix_71, isb, prefix_71_core, isb

.macro prefix_72_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
padding
.endm
make_ubench prefix_72, isb, prefix_72_core, isb

.macro prefix_73_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
padding
.endm
make_ubench prefix_73, isb, prefix_73_core, isb

.macro prefix_74_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
padding
.endm
make_ubench prefix_74, isb, prefix_74_core, isb

.macro prefix_75_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
padding
.endm
make_ubench prefix_75, isb, prefix_75_core, isb

.macro prefix_76_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
padding
.endm
make_ubench prefix_76, isb, prefix_76_core, isb

.macro prefix_77_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
padding
.endm
make_ubench prefix_77, isb, prefix_77_core, isb

.macro prefix_78_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
padding
.endm
make_ubench prefix_78, isb, prefix_78_core, isb

.macro prefix_79_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
/* 78 */     add r7, r9                            
padding
.endm
make_ubench prefix_79, isb, prefix_79_core, isb

.macro prefix_80_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
/* 78 */     add r7, r9                            
/* 79 */     sub.w r8, r7, r9, lsl #1              
padding
.endm
make_ubench prefix_80, isb, prefix_80_core, isb

.macro prefix_81_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
/* 78 */     add r7, r9                            
/* 79 */     sub.w r8, r7, r9, lsl #1              
/* 80 */     str.w r7, [r0, #2*32/4]         
padding
.endm
make_ubench prefix_81, isb, prefix_81_core, isb

.macro prefix_82_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
/* 78 */     add r7, r9                            
/* 79 */     sub.w r8, r7, r9, lsl #1              
/* 80 */     str.w r7, [r0, #2*32/4]         
/* 81 */     str.w r8, [r0, #3*32/4]         
padding
.endm
make_ubench prefix_82, isb, prefix_82_core, isb

.macro prefix_83_core
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
/* 46 */     sub.w r4, r5, r6, lsl #1              
/* 47 */     vmov.w r6, s8                         
/* 48 */     mul r11, r1, r2                       
/* 49 */     add r5, r8                            
/* 50 */     add r4, r12                           
/* 51 */     sub.w r12, r4, r12, lsl #1            
/* 52 */     smull r6, r7, r7, r6                  
/* 53 */     add r4, r14                           
/* 54 */     smlal r1, r9, r11, r3                 
/* 55 */     mul r11, r6, r2                       
/* 56 */     vmov.w r1, s5                         
/* 57 */     add r10, r9                           
/* 58 */     str.w r4, [r0, #4*32/4]         
/* 59 */     sub.w r9, r10, r9, lsl #1             
/* 60 */     smull r1, r10, r10, r1                
/* 61 */     smlal r6, r7, r11, r3                 
/* 62 */     vmov.w r6, s6                         
/* 63 */     sub.w r11, r4, r14, lsl #1            
/* 64 */     mul r14, r1, r2                       
/* 65 */     add r12, r7                           
/* 66 */     smull r6, r9, r9, r6                  
/* 67 */     smlal r1, r10, r14, r3                
/* 68 */     str.w r11, [r0, #5*32/4]        
/* 69 */     mul r1, r6, r2                        
/* 70 */     sub.w r14, r12, r7, lsl #1            
/* 71 */     sub.w r7, r5, r8, lsl #1              
/* 72 */     add r5, r10                           
/* 73 */     smlal r6, r9, r1, r3                  
/* 74 */     str.w r12, [r0, #6*32/4]        
/* 75 */     str.w r14, [r0, #7*32/4]        
/* 76 */     sub.w r6, r5, r10, lsl #1             
/* 77 */     str.w r6, [r0, #1*32/4]         
/* 78 */     add r7, r9                            
/* 79 */     sub.w r8, r7, r9, lsl #1              
/* 80 */     str.w r7, [r0, #2*32/4]         
/* 81 */     str.w r8, [r0, #3*32/4]         
/* 82 */     vmov r10, s9                          
padding
.endm
make_ubench prefix_83, isb, prefix_83_core, isb
