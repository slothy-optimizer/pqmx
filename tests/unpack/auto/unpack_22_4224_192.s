
///
/// This assembly code has been auto-generated.
/// Don't modify it directly.
///

.syntax unified
.type unpack_22_4224_192, %function
.global unpack_22_4224_192
unpack_22_4224_192:
// Save GPRs
push {r4-r11,lr}
// Save MVE vector registers
vpush {d8-d15}
add r1, r1, #528
add r0, r0, #768
movs.n r2, #0
movs.n r3, #0
// Overhead 0
vldrw.u32 Q0, [r1, #-16]!
vshlc Q0, r3, #22
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #18
str r4, [r0, #-4]!
vldrw.u32 Q1, [r1, #-16]!
vshlc Q1, r3, #4
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r4, #22
eor r3, r3, r2, LSL #4
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #14
str r2, [r0, #-4]!
vshlc Q0, r4, #8
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #8
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #10
str r3, [r0, #-4]!
vshlc Q1, r2, #12
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #12
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #6
str r4, [r0, #-4]!
vshlc Q0, r3, #16
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r4, #22
eor r3, r3, r2, LSL #16
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #2
str r2, [r0, #-4]!
vshlc Q1, r4, #20
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r2, #22
eor r4, r4, r3, LSL #20
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #20
str r2, [r0, #-4]!
vshlc Q0, r4, #2
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #2
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #16
str r3, [r0, #-4]!
vshlc Q1, r2, #6
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #6
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #12
str r4, [r0, #-4]!
vshlc Q0, r3, #10
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r4, #22
eor r3, r3, r2, LSL #10
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #8
str r2, [r0, #-4]!
vshlc Q1, r4, #14
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r2, #22
eor r4, r4, r3, LSL #14
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #4
str r3, [r0, #-4]!
vshlc Q0, r2, #18
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r3, #22
eor r2, r2, r4, LSL #18
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #18
str r3, [r0, #-4]!
vldrw.u32 Q0, [r1, #-16]!
vshlc Q0, r2, #4
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r3, #22
eor r2, r2, r4, LSL #4
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #14
str r4, [r0, #-4]!
vshlc Q1, r3, #8
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r4, #22
eor r3, r3, r2, LSL #8
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #10
str r2, [r0, #-4]!
vshlc Q0, r4, #12
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #12
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #6
str r3, [r0, #-4]!
vshlc Q1, r2, #16
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #16
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #2
str r4, [r0, #-4]!
vshlc Q0, r3, #20
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r4, #22
eor r3, r3, r2, LSL #20
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #20
str r4, [r0, #-4]!
vshlc Q1, r3, #2
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r4, #22
eor r3, r3, r2, LSL #2
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #16
str r2, [r0, #-4]!
vshlc Q0, r4, #6
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #6
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #12
str r3, [r0, #-4]!
vshlc Q1, r2, #10
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #10
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #8
str r4, [r0, #-4]!
vshlc Q0, r3, #14
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r4, #22
eor r3, r3, r2, LSL #14
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #4
str r2, [r0, #-4]!
vshlc Q1, r4, #18
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r2, #22
eor r4, r4, r3, LSL #18
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #18
str r2, [r0, #-4]!
vldrw.u32 Q1, [r1, #-16]!
vshlc Q1, r4, #4
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r2, #22
eor r4, r4, r3, LSL #4
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #14
str r3, [r0, #-4]!
vshlc Q0, r2, #8
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r3, #22
eor r2, r2, r4, LSL #8
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #10
str r4, [r0, #-4]!
vshlc Q1, r3, #12
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r4, #22
eor r3, r3, r2, LSL #12
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #6
str r2, [r0, #-4]!
vshlc Q0, r4, #16
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #16
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #2
str r3, [r0, #-4]!
vshlc Q1, r2, #20
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #20
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #20
str r3, [r0, #-4]!
vshlc Q0, r2, #2
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r3, #22
eor r2, r2, r4, LSL #2
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #16
str r4, [r0, #-4]!
vshlc Q1, r3, #6
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r4, #22
eor r3, r3, r2, LSL #6
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #12
str r2, [r0, #-4]!
vshlc Q0, r4, #10
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r2, #22
eor r4, r4, r3, LSL #10
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #8
str r3, [r0, #-4]!
vshlc Q1, r2, #14
vldrw.u32 Q0, [r1, #-16]!
vshlc Q1, r3, #22
eor r2, r2, r4, LSL #14
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #22
str r4, [r0, #-4]!
vshlc Q1, r3, #22
str r2, [r0, #-4]!
vshlc Q1, r4, #22
str r3, [r0, #-4]!
vshlc Q1, r2, #4
str r4, [r0, #-4]!
vshlc Q0, r3, #18
vldrw.u32 Q1, [r1, #-16]!
vshlc Q0, r4, #22
eor r3, r3, r2, LSL #18
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
vshlc Q0, r3, #22
str r2, [r0, #-4]!
vshlc Q0, r4, #22
str r3, [r0, #-4]!
vshlc Q0, r2, #22
str r4, [r0, #-4]!
str r2, [r0, #-4]!
// Restore MVE vector registers
vpop {d8-d15}
// Restore GPRs
pop {r4-r11,lr}
bx lr

// Line count:        497
// Instruction count: 492