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
};

char* ubench_prefix_instructions[] = {
     "add r0, r0, r0",
     "add r1, r1, r1",
     "add r0, r0, r0",
     "add r1, r1, r1",
     "add r0, r0, r0",
     "add r1, r1, r1",
     "add r0, r0, r0",
     "add r1, r1, r1",
     "mul r2, r2, r2",
     "mul r3, r2, r3",
     "mul r4, r4, r4",
};

const unsigned int num_ubenchs_prefix = 11;
