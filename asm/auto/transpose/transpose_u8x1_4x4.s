.syntax unified
.type transpose_u8x1_4x4, %function
.global transpose_u8x1_4x4
transpose_u8x1_4x4:
push {r4-r11,lr}
vpush {d8-d15}
ldrb r14, [r1, #0]
strb r14, [r0], #+1
ldrb r14, [r1, #4]
strb r14, [r0], #+1
ldrb r14, [r1, #8]
strb r14, [r0], #+1
ldrb r14, [r1, #12]
strb r14, [r0], #+1
ldrb r14, [r1, #1]
strb r14, [r0], #+1
ldrb r14, [r1, #5]
strb r14, [r0], #+1
ldrb r14, [r1, #9]
strb r14, [r0], #+1
ldrb r14, [r1, #13]
strb r14, [r0], #+1
ldrb r14, [r1, #2]
strb r14, [r0], #+1
ldrb r14, [r1, #6]
strb r14, [r0], #+1
ldrb r14, [r1, #10]
strb r14, [r0], #+1
ldrb r14, [r1, #14]
strb r14, [r0], #+1
ldrb r14, [r1, #3]
strb r14, [r0], #+1
ldrb r14, [r1, #7]
strb r14, [r0], #+1
ldrb r14, [r1, #11]
strb r14, [r0], #+1
ldrb r14, [r1, #15]
strb r14, [r0], #+1
vpop {d8-d15}
pop {r4-r11,lr}
bx lr