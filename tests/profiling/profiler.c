#include "profiling.h"
#include "prefix_ubenchs.h"

ubench_t ubenchs_prefix[] = {
     &ubench_prefix_0,
     &ubench_prefix_1,
     &ubench_prefix_2,
     &ubench_prefix_3,
     &ubench_prefix_4,
     &ubench_prefix_5,
     &ubench_prefix_6,
     &ubench_prefix_7,
     &ubench_prefix_8,
     &ubench_prefix_9,
     &ubench_prefix_10,
     &ubench_prefix_11,
     &ubench_prefix_12,
     &ubench_prefix_13,
     &ubench_prefix_14,
     &ubench_prefix_15,
     &ubench_prefix_16,
     &ubench_prefix_17,
     &ubench_prefix_18,
     &ubench_prefix_19,
     &ubench_prefix_20,
     &ubench_prefix_21,
     &ubench_prefix_22,
     &ubench_prefix_23,
     &ubench_prefix_24,
     &ubench_prefix_25,
     &ubench_prefix_26,
     &ubench_prefix_27,
     &ubench_prefix_28,
     &ubench_prefix_29,
     &ubench_prefix_30,
     &ubench_prefix_31,
     &ubench_prefix_32,
     &ubench_prefix_33,
     &ubench_prefix_34,
     &ubench_prefix_35,
     &ubench_prefix_36,
     &ubench_prefix_37,
     &ubench_prefix_38,
     &ubench_prefix_39,
     &ubench_prefix_40,
     &ubench_prefix_41,
     &ubench_prefix_42,
     &ubench_prefix_43,
     &ubench_prefix_44,
     &ubench_prefix_45,
     &ubench_prefix_46,
};

char* ubench_prefix_instructions[] = {
     "vmov.w r6, s2",
     "ldr.w r14, [r0, #7*32/4]",
     "ldr.w r8, [r0, #6*32/4]",
     "smull r11, r7, r14, r6",
     "smull r14, r8, r8, r6",
     "ldr.w r4, [r0, #2*32/4]",
     "mul r1, r11, r2",
     "ldr.w r9, [r0, #3*32/4]",
     "mul r5, r14, r2",
     "vmov.w r12, s4",
     "smlal r11, r7, r1, r3",
     "ldr.w r11, [r0, #5*32/4]",
     "ldr.w r10, [r0, #1*32/4]",
     "smull r11, r1, r11, r6",
     "add r9, r7",
     "smlal r14, r8, r5, r3",
     "sub.w r5, r9, r7, lsl #1",
     "mul r14, r11, r2",
     "add r4, r8",
     "smull r5, r7, r5, r12",
     "smlal r11, r1, r14, r3",
     "sub.w r8, r4, r8, lsl #1",
     "mul r14, r5, r2",
     "ldr.w r11, [r0, #4*32/4]",
     "smull r11, r6, r11, r6",
     "add r10, r1",
     "smlal r5, r7, r14, r3",
     "sub.w r14, r10, r1, lsl #1",
     "smull r5, r12, r8, r12",
     "vmov.w r8, s7",
     "add r14, r7",
     "mul r1, r11, r2",
     "sub.w r7, r14, r7, lsl #1",
     "smull r8, r14, r14, r8",
     "smlal r11, r6, r1, r3",
     "mul r1, r8, r2",
     "mul r11, r5, r2",
     "smlal r8, r14, r1, r3",
     "vmov.w r1, s3",
     "smull r4, r8, r4, r1",
     "smlal r5, r12, r11, r3",
     "ldr.w r5, [r0]",
     "mul r11, r4, r2",
     "add r5, r6",
     "smull r1, r9, r9, r1",
     "smlal r4, r8, r11, r3",
     "sub.w r4, r5, r6, lsl #1",
};

const unsigned int num_ubenchs_prefix = 47;
