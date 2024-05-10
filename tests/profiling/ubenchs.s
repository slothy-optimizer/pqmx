.syntax unified
.cpu cortex-m7

#include "ubenchmarks.i"
#include "macros_misc.i"

.macro throughput_ldr_no_inc_core
        ldr r1, [r0]
.endm
make_ubench throughput_ldr_no_inc, nop, throughput_ldr_no_inc_core, nop

.macro latency_add_mul_core
        add r0, r0, #0
.endm
make_ubench latency_add_mul, nop, latency_add_mul_core, nop