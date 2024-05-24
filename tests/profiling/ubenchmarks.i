.syntax unified
.cpu cortex-m7

.macro push_stack
        push.w {r3-r12,lr}
.endm

.macro pop_stack
        pop.w {r3-r12,pc}
.endm

loop_cnt .req r12

.macro make_ubench name, preamble, code, end_of_iteration
       .align 4
       .text
       .type ubench_\name\(), %function
       .global ubench_\name\()
       .global _ubench_\name\()
ubench_\name\():
_ubench_\name\():
        push_stack
        @ mov.w loop_cnt, #10
        \preamble\()
        .align 2
1:
.rept 50
        \code\()
.endr
        \end_of_iteration\()
        @ subs.w loop_cnt, loop_cnt, #1
        @ bne.w 1b
        pop_stack
        bx lr
.endm

.macro padding
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
        nop
.endm
