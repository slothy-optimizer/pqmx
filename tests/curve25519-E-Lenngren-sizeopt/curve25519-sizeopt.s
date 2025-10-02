// Copyright 2017-2025 Emil Lenngren

// This is an armv7 implementation of X25519.
// It follows the reference implementation where the representation of
// a field element [0..2^255-19) is represented by a 256-bit little endian integer,
// reduced modulo 2^256-38.
// The scalar is a 256-bit integer where certain bits are hardcoded per specification.
//
// The implementation runs in constant time (measured 520 750 cycles on ARM Cortex-M4,
// few wait states), and no conditional branches depend on secret data.
//
// This implementation conditionally loads data from different RAM locations depending
// on secret data, so this version should not be used on CPUs that have data cache,
// such as Cortex-A53. It's suited for embedded devices running CPUs like Cortex-M4 and
// Cortex-M33.

#define START_FUNC(name) \
	.thumb_func ;\
	.type name, %function ;\
name: ;\
	.cfi_startproc
#define START_GLOBAL_FUNC(name) \
	.global name ;\
	START_FUNC(name)
#define END_FUNC(name) \
	.cfi_endproc ;\
	.size name, .-name

	.syntax unified
	.text
	.eabi_attribute Tag_ABI_align_preserved, 1 // only internal functions called, so ok
	.cfi_sections .debug_frame
	.thumb
	.balign 4

// input: *r1=a, *r2=b
// output: r4-r11
// clobbers all other registers
// cycles: 41
// note: works only when a - b >= -(2^256-38)
START_FUNC(fe25519_sub)
	ldm r1,{r4-r11}
	ldm r2!,{r0,r1,r3,r12}
	subs r4,r4,r0
	sbcs r5,r5,r1
	sbcs r6,r6,r3
	sbcs r7,r7,r12
	ldm r2,{r0-r3}
	sbcs r8,r8,r0
	sbcs r9,r9,r1
	sbcs r10,r10,r2
	sbcs r11,r11,r3
	
	// if subtraction goes below 0, set r0 to -1 and r1 to -38, else set both to 0
	sbcs r0,r0,r0
	and r1,r0,#-38
	
	adds r4,r4,r1
	adcs r5,r5,r0
	adcs r6,r6,r0
	adcs r7,r7,r0
	adcs r8,r8,r0
	adcs r9,r9,r0
	adcs r10,r10,r0
	adcs r11,r11,r0
	
	// if it is desired that all 256-bit inputs shall work, uncomment the following lines:
	//adcs r0,r0,#0
	//and r1,r0,#-38
	//add r4,r4,r1
	
	bx lr
END_FUNC(fe25519_sub)

// input: *r1=a, *r2=b
// output: r4-r11
// clobbers all other registers
// cycles: 39
START_FUNC(fe25519_add)
	movs r0,#1
fe25519_add_mul:
	ldr r3,[r1,#28]
	ldr r4,[r2,#28]
	lsls r6,r0,#1
	mov.w r5,r3
	umaal r3,r5,r6,r4
	movs r7,#19
	mul r11,r7,r5
	
	ldm r1!,{r4-r7}
	ldm r2!,{r8-r10,r12}
	umaal r4,r11,r0,r8
	umaal r5,r11,r0,r9
	umaal r6,r11,r0,r10
	umaal r7,r11,r0,r12
	ldm r1,{r8-r10}
	ldm r2,{r1,r2,r12}
	umaal r8,r11,r0,r1
	umaal r9,r11,r0,r2
	umaal r10,r11,r0,r12
	add r11,r11,r3, lsr #1
	bx lr
END_FUNC(fe25519_add)

START_FUNC(fe25519_sqr)
	mov r2,r1
	// fallthrough

// input: *r1=a, *r2=b
// output: r4-r11
// clobbers all other registers
// cycles: 147
fe25519_mul:
	push {r2,lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr,-4
	sub sp,sp,#4*8
	.cfi_def_cfa_offset 40
	
	ldr r9,[r1],#4
	str r1,[sp,#4*7]
	
	ldm r1,{r0,r1,r3,r4} // kill r1
	ldm r2,{r5,r6,r10} // keep r2

	umull r7,r8,r5,r9 // A=r7 done
	str r7,[sp,#4+4*0]
	umull r7,r11,r5,r0
	// 11 8+7 .
	umaal r7,r8,r6,r9 // B=r7 done
	// 11+8 7 .
	str r7,[sp,#4+4*1]
	umull r7,r12,r5,r1
	// 12 11+8+7 . .
	umaal r7,r11,r6,r0
	// 12+11 8+7 . .
	umaal r7,r8,r10,r9 // C=r7 done
	// 12+11+8 7 . .
	umaal r11,r12,r5,r3
	// 12 11+8 7 . .
	umaal r8,r11,r6,r1
	// 12+11 8 7 . .
	umaal r11,r12,r5,r4
	ldr r5,[r2,#4*3]
	str r7,[sp,#4+4*2]
	// 12 11 8 . . .
	umull r7,lr,r10,r0
	// 12 lr+11 8+7 . . .
	umaal r11,lr,r6,r3
	// lr+12 11 8+7 . . .
	umaal r12,lr,r6,r4
	// lr 12 11 8+7 . . .
	umaal r7,r8,r5,r9 // r7 done
	// lr 12 11+8 7 . . .
	ldr r6,[r2,#4*4]
	str r7,[sp,#4+4*3]
	umaal r8,r11,r10,r1
	// lr 12+11 8 . . . .
	umaal r11,r12,r10,r3
	// lr+12 11 8 . . . .
	umaal r12,lr,r10,r4
	// lr 12 11 8 . . . .
	umull r7,r10,r5,r0
	// lr 12 11+10 8+7 . . . .
	umaal r10,r11,r5,r1
	umaal r11,r12,r5,r3
	umaal r12,lr,r5,r4

	// lr 12 11 10 8+7 . . . .

	umaal r7,r8,r6,r9 // r7 done
	umaal r8,r10,r6,r0
	umaal r10,r11,r6,r1
	umaal r11,r12,r6,r3
	umaal r12,lr,r6,r4

	// lr 12 11 10 8

	str r7,[sp,#4+4*4]
	ldr r5,[r2,#4*0]
	ldr r7,[sp,#4*7]
	ldr r6,[r2,#4*5]
	ldr.w r7,[r7,#4*5-4]
	umull r7,r5,r5,r7

	// lr 12 11 10+5 8+7

	umaal r7,r8,r6,r9
	umaal r5,r10,r6,r0
	umaal r10,r11,r6,r1
	umaal r11,r12,r6,r3
	umaal r12,lr,r6,r4

	// lr 12 11 10 8+5

	str r7,[sp,#4+4*5]

	ldr r7,[r2,#4*6]
	ldr.w r6,[r2,#4*7]
	umaal r5,r8,r7,r9
	umaal r8,r10,r7,r0
	umaal r10,r11,r7,r1
	umaal r11,r12,r7,r3
	umaal r12,lr,r7,r4

	// lr 12 11 10 8 5

	umull r7,r9,r6,r9
	umaal r9,r10,r6,r0
	umaal r10,r11,r6,r1
	umaal r11,r12,r6,r3
	umaal r12,lr,r6,r4

	// lr 12 11 10 9 8+7 5

	ldr r0,[sp,#4*7]
	ldr r1,[r2]
	ldr r3,[r2,#4]
	//ldm r0,{r0-r2}
	ldr r4,[r0,#4*6-4]
	ldr r2,[r0,#4*7-4]
	ldr r0,[r0,#4*5-4]
	umaal r7,r8,r1,r2
	umull r6,r1,r1,r4

	// lr 12 11 10 9+8 7+4 6+5

	umaal r6,r5,r3,r0
	str r6,[sp,#4+4*6]
	ldr r6,[sp,#4*8]
	umaal r1,r7,r3,r4
	umaal r8,r9,r3,r2

	ldr r3,[r6,#4*2]
	umaal r5,r1,r3,r0
	str r5,[sp]
	umaal r7,r8,r3,r4
	umaal r9,r10,r3,r2

	ldr r3,[r6,#4*3]
	ldr r5,[r6,#4*4]
	umaal r1,r7,r3,r0
	umaal r8,r9,r3,r4
	umaal r10,r11,r3,r2

	umaal r7,r8,r5,r0
	umaal r9,r10,r5,r4
	umaal r11,r12,r5,r2

	ldr.w r3,[r6,#4*5]
	ldr r5,[r6,#4*6]
	ldr r6,[r6,#4*7]
	umaal r8,r9,r3,r0
	umaal r10,r11,r3,r4
	umaal r12,lr,r3,r2

	umaal r9,r10,r5,r0
	umaal r11,r12,r5,r4
	umaal r12,lr,r5,r2

	umaal r10,r11,r6,r0
	umaal r12,r11,r6,r4
	umaal lr,r11,r6,r2
	
	// 11 lr 12 10 9 8 7 1 stack*8

	//now reduce
	pop {r2,r4,r5,r6}
	.cfi_def_cfa_offset 24

	movs r0,#38<<1
	mov r3,r2
	umaal r2,r3,r0,r11
	movs.w r0,#19
	mov r11,#38
	muls r0,r3,r0

	umaal r4,r0,r11,r1
	umaal r5,r0,r11,r7
	umaal r6,r0,r11,r8
	pop {r7,r8}
	.cfi_def_cfa_offset 16
	umaal r7,r0,r11,r9
	umaal r8,r0,r11,r10
	pop {r9,r10}
	.cfi_def_cfa_offset 8
	umaal r9,r0,r11,r12
	umaal r10,r0,r11,lr
	pop {r1,lr}
	.cfi_def_cfa_offset 0
	.cfi_restore lr
	add r11,r0,r2, lsr #1
	
	bx lr
END_FUNC(fe25519_sqr)

// in: *r0 = result, *r1 = scalar, *r2 = basepoint (all pointers may be unaligned)
// cycles: 520 750
START_GLOBAL_FUNC(curve25519_scalarmult)
	push {r0,r4-r11,lr}
	.cfi_def_cfa_offset 40
	.cfi_offset r4,-36
	.cfi_offset r5,-32
	.cfi_offset r6,-28
	.cfi_offset r7,-24
	.cfi_offset r8,-20
	.cfi_offset r9,-16
	.cfi_offset r10,-12
	.cfi_offset r11,-8
	.cfi_offset lr,-4
	
	sub sp,sp,#268
	.cfi_def_cfa_offset 308
	
	movs r3,#1
	movs r4,#0
	
	add r5,sp,#32*2
	add r0,sp,#224
	stm r5!,{r3} // x2 = 1
0:
	stm r5!,{r4}
	cmp r5,r0
	blt 0b
	str r3,[sp,#32*5] // z3 = 1
	
	bl curve25519_copy // scalar
	
	mov r1,r2
	add r0,sp,#32*6
	bl curve25519_copy // x1
	add r1,sp,#32*6
	add r0,sp,#32*4
	ldr r2,[r1,#28]
	bic r2,r2,#0x80000000 // clear most significant bit in basepoint
	str r2,[r1,#28]
	bl curve25519_copy // x3
	
	ldr r0,[sp,#224]
	ldr r1,[sp,#252]
	bic r0,r0,#7            // clamp scalar by setting lowest three bits to zero
	orr r1,r1,#0x40000000   // highest bit shall also be set
	str r0,[sp,#224]
	str r1,[sp,#252]
	
	movs r0,#254 // bitpos
	movs r2,#0 // lastbit
	
	// a b x2 z2 x3 z3 x1 scalar bitpos lastbit csel
	// 0                  224    256    260     264
	
0:
	add r1,sp,#224
	lsrs r3,r0,#5
	ldr r4,[r1,r3, lsl #2]
	str r0,[sp,#256]
	and r5,r0,#0x1f
	lsrs r4,r4,r5
	and r4,r4,#1
	eors r2,r2,r4
	add r2,sp,r2, lsl #6
	str r4,[sp,#260]
	str r2,[sp,#264]
	
	add r1,sp,#32*2
	add r2,sp,#32*3
	bl fe25519_add	      // a = x2 + z2
	stm sp,{r4-r11}
	add r1,sp,#32*2
	add r2,sp,#32*3
	bl fe25519_sub	      // b = x2 - z2
	add r0,sp,#32*1
	add r1,sp,#32*4
	add r2,sp,#32*5
	stm r0,{r4-r11}
	bl fe25519_add        // x2 = x3 + z3
	add r0,sp,#32*2
	add r1,sp,#32*4
	add r2,sp,#32*5
	stm r0,{r4-r11}
	bl fe25519_sub        // z2 = x3 - z3
	add r0,sp,#32*3
	add r1,sp,#32*3
	add r2,sp,#32*0
	stm r0,{r4-r11}
	bl fe25519_mul        // z3 = z2 * a
	add r0,sp,#32*5
	ldr r1,[sp,#264]
	stm r0,{r4-r11}
	bl fe25519_sqr        // a = f^2 (f is a or x2)
	stm sp,{r4-r11}
	add r1,sp,#32*2
	add r2,sp,#32*1
	bl fe25519_mul        // x3 = x2 * b
	add r0,sp,#32*4
	ldr r1,[sp,#264]
	adds r1,r1,#32*1
	stm r0,{r4-r11}
	bl fe25519_sqr        // x2 = g^2 (g is b or z2)
	add r0,sp,#32*2
	add r1,sp,#32*5
	add r2,sp,#32*4
	stm r0,{r4-r11}
	bl fe25519_sub        // z2 = z3 - x3
	add r1,sp,#32*3
	stm r1,{r4-r11}
	bl fe25519_sqr        // z2 = z2^2
	add r0,sp,#32*3
	add r1,sp,#32*5
	add r2,sp,#32*4
	stm r0,{r4-r11}
	bl fe25519_add        // x3 = z3 + x3
	add r1,sp,#32*4
	stm r1,{r4-r11}
	bl fe25519_sqr        // x3 = x3^2
	add r0,sp,#32*4
	add r1,sp,#32*6
	add r2,sp,#32*3
	stm r0,{r4-r11}
	bl fe25519_mul        // z3 = x1 * z2
	add r0,sp,#32*5
	add r1,sp,#32*0
	add r2,sp,#32*2
	stm r0,{r4-r11}
	bl fe25519_sub        // b = a - x2
	add r0,sp,#32*1
	add r1,sp,#32*2
	add r2,sp,#32*1
	stm r0,{r4-r11}
	ldr r0,=121666
	bl fe25519_add_mul    // z2 = x2 + 121666 * b
	add r0,sp,#32*3
	add r1,sp,#32*0
	add r2,sp,#32*2
	stm r0,{r4-r11}
	bl fe25519_mul        // x2 = a * x2
	add r0,sp,#32*2
	add r1,sp,#32*1
	add r2,sp,#32*3
	stm r0,{r4-r11}
	bl fe25519_mul        // z2 = b * z2
	add r1,sp,#32*3
	ldr r0,[sp,#256]
	ldr r2,[sp,#260]
	stm r1,{r4-r11}
	subs r0,r0,#1
	bpl 0b
	
	// now calculate x*z^-1
	
	add sp,sp,#32
	.cfi_def_cfa_offset 276
	
	bl fe25519_sqr              // 2
	add r1,sp,#32*5
	stm r1,{r4-r11}
	bl fe25519_sqr              // 4
	mov r1,sp
	stm sp,{r4-r11}
	bl fe25519_sqr              // 8
	stm sp,{r4-r11}
	add r1,sp,#32*2
	mov r2,sp
	bl fe25519_mul              // 9
	add r0,sp,#32*3
	add r1,sp,#32*5
	add r2,sp,#32*3
	stm r0,{r4-r11}
	bl fe25519_mul              // 11
	add r0,sp,#32*5
	add r1,sp,#32*3
	movs r2,#1
	stm r0,{r4-r11}
	
	adr r3,fe25519_invsequence
0:
	ldrh r0,[r3],#2
	cbz r0,2f
	and r1,r0,#0xe0
	add r1,r1,sp // out pointer
	str r3,[sp,#192] // current invsequence position
	stm r1,{r4-r11}
	lsrs r2,r0,#8 // loop count
1:
	str r2,[sp,#196]
	bl fe25519_sqr
	stm sp,{r4-r11}
	ldr r2,[sp,#196]
	mov r1,sp
	subs r2,r2,#1
	bne 1b
	
	ldr r3,[sp,#192]
	ldrh r2,[r3,#-2]
	lsls r2,r2,#29
	add r2,sp,r2, lsr #24
	bl fe25519_mul
	ldr r3,[sp,#192]
	b 0b
2:
	stm sp,{r4-r11}
	mov r1,sp
	add r2,sp,#32*1
	bl fe25519_mul
	
	// the reduction below works only when 0 <= x < 2^256-38
	
	movs r3,#0
	movs r2,#19
	
	adds r4,r4,r2
	adcs r5,r5,r3
	adcs r6,r6,r3
	adcs r7,r7,r3
	adcs r8,r8,r3
	adcs r9,r9,r3
	adcs r10,r10,r3
	adc r11,r11,r3
	
	bic r2,r2,r11, asr #31
	bic r11,r11,#0x80000000
	
	subs r4,r4,r2
	sbcs r5,r5,r3
	sbcs r6,r6,r3
	sbcs r7,r7,r3
	sbcs r8,r8,r3
	sbcs r9,r9,r3
	sbcs r10,r10,r3
	sbcs r11,r11,r3
	
	push {r4-r11}
	.cfi_def_cfa_offset 308
	
	ldr r0,[sp,#268]
	mov r1,sp
	bl curve25519_copy
	
	add sp,sp,#272
	.cfi_def_cfa_offset 36
	pop {r4-r11,pc}

	.balign 4
fe25519_invsequence:
	// each operation calculates c = (a^2)^n * b, where a is the last operation's result
	// out address (for previous operation), in address for mul operand, sqr count
	.short (5<<5) | 3 | (1<<8)   // 2^5 - 2^0 = 31
	.short (3<<5) | 3 | (5<<8)   // 2^10 - 2^0
	.short (3<<5) | 3 | (10<<8)  // 2^20 - 2^0
	.short (4<<5) | 4 | (20<<8)  // 2^40 - 2^0
	.short (4<<5) | 3 | (10<<8)  // 2^50 - 2^0
	.short (3<<5) | 3 | (50<<8)  // 2^100 - 2^0
	.short (4<<5) | 4 | (100<<8) // 2^200 - 2^0
	.short (4<<5) | 3 | (50<<8)  // 2^250 - 2^0
	.short (4<<5) | 5 | (5<<8)   // 2^255 - 2^5 + 11 = (2^255 - 19) - 2
	.short 0                     // exit
END_FUNC(curve25519_scalarmult)

// input: *r1
// output: *r0
// performs unaligned copy of 32 bytes
START_FUNC(curve25519_copy)
	movs r4,#8
0:
	ldr r3,[r1],#4
	str r3,[r0],#4
	subs r4,r4,#1
	bgt 0b
	bx lr
END_FUNC(curve25519_copy)

	.section .note.GNU-stack,"",%progbits
