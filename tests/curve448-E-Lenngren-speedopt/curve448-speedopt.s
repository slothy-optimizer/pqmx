// Copyright 2017-2025 Emil Lenngren

#define has_d_cache 0

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

// input: *r1, *r2 (15 words each)
// output: *r0 (15 words)
// cycles: 104
// calculates *r1 + 2*p - *r2 (*r2 must not be greater than 2*p)
START_FUNC(fe448_sub)
	push {lr}
	.cfi_def_cfa_offset 4
	.cfi_offset lr,-4
	mov lr,#0xffffffff
	mov r12,#2
	movs r3,#0
	ldm r1!,{r4,r5,r8,r9}
	ldm r2!,{r6,r7,r10,r11}
	umaal r4,r3,r12,lr
	umaal r5,r3,r12,lr
	umaal r8,r3,r12,lr
	umaal r9,r3,r12,lr
	subs r4,r4,r6
	sbcs r5,r5,r7
	sbcs r6,r8,r10
	sbcs r7,r9,r11
	stm r0!,{r4,r5,r6,r7}
	ldm r1!,{r4,r5,r8,r9}
	ldm r2!,{r6,r7,r10,r11}
	umaal r4,r3,r12,lr
	umaal r5,r3,r12,lr
	sbcs r4,r4,r6
	sbcs r5,r5,r7
	umaal r8,r3,r12,lr
	mov lr,#0xfffffffe
	sbcs r6,r8,r10
	umaal r9,r3,r12,lr
	mov lr,#0xffffffff
	sbcs r7,r9,r11
	stm r0!,{r4,r5,r6,r7}
	ldm r1!,{r4,r5,r8,r9}
	ldm r2!,{r6,r7,r10,r11}
	umaal r4,r3,r12,lr
	umaal r5,r3,r12,lr
	umaal r8,r3,r12,lr
	umaal r9,r3,r12,lr
	sbcs r4,r4,r6
	sbcs r5,r5,r7
	sbcs r6,r8,r10
	sbcs r7,r9,r11
	stm r0!,{r4,r5,r6,r7}
	ldm r1!,{r4,r5,r8}
	ldm r2!,{r6,r7,r10}
	umaal r4,r3,r12,lr
	umaal r5,r3,r12,lr
	sbcs r4,r4,r6
	add r8,r8,r3
	sbcs r5,r5,r7
	sbcs r6,r8,r10
	stm r0!,{r4,r5,r6}
	pop {pc}
END_FUNC(fe448_sub)

// input: *r1, *r2 (15 words each)
// output: *r0 (15 words)
// calculates *r1 + *r2
// cycles: 81
	.balign 4
START_FUNC(fe448_add)
	mov r12,#1
fe448_add_mul:
	movs r7,#0
	ldm r1!,{r3-r6}
	ldm r2!,{r8-r11}
	umaal r3,r7,r12,r8
	umaal r4,r7,r12,r9
	umaal r5,r7,r12,r10
	umaal r6,r7,r12,r11
	stm r0!,{r3-r6}
	ldm r1!,{r3-r6}
	ldm r2!,{r8-r11}
	umaal r3,r7,r12,r8
	umaal r4,r7,r12,r9
	umaal r5,r7,r12,r10
	umaal r6,r7,r12,r11
	stm r0!,{r3-r6}
	ldm r1!,{r3-r6}
	ldm r2!,{r8-r11}
	umaal r3,r7,r12,r8
	umaal r4,r7,r12,r9
	umaal r5,r7,r12,r10
	umaal r6,r7,r12,r11
	stm r0!,{r3-r6}
	ldm r1!,{r3-r5}
	ldm r2!,{r8-r10}
	umaal r3,r7,r12,r8
	umaal r4,r7,r12,r9
	umaal r5,r7,r12,r10
	stm r0!,{r3-r5}
	bx lr
END_FUNC(fe448_add)

	.balign 4
// input: *r1, *r2 (15 words each)
// output: *r0 (15 words)
// calculates (*r1 * *r2) % p
// cycles: 501
//
// The input must be small enough so that internal calculations will not overflow.
// It is always ok when the total number of significant bits in (*r1 >> 448) and
// (*r2 >> 448) together are at most 32.
//
// The result fits in 449 bits.
// An addition of 1 to the highest 33 bits in the result will not overflow.
START_FUNC(fe448_mul)
	push {r0,lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr,-4
	
	sub sp,sp,#4*27
	.cfi_def_cfa_offset 4*27+8
	
	// start col 0
	ldm r2!,{r9-r12,lr}
	
	ldr r0,[r1,#4*0]
	str r2,[sp,#4*26]
	umull r3,r4,r0,r9
	// r4 r3
	ldr r2,[r1,#4*1]
	str r3,[sp,#4*0]
	umull r5,r6,r0,r10
	// r6 r5+r4 .
	umaal r4,r5,r2,r9
	// r6+r5 r4 .
	umaal r5,r6,r0,r11
	// r6 r5 r4 .
	ldr r7,[r1,#4*2]
	str r4,[sp,#4*1]
	umull r4,r8,r2,r10
	// r8+r6 r5+r4 . .
	umaal r4,r5,r7,r9
	// r8+r6+r5 r4 . .
	umaal r6,r8,r0,r12
	// r8 r6+r5 r4 . .
	umaal r5,r6,r2,r11
	// r8+r6 r5 r4 . .
	umaal r6,r8,r0,lr
	// r8 r6 r5 r4 . .
	umull r0,r3,r7,r10
	// r8 r6+r3 r5+r0 r4 . .
	umaal r3,r6,r2,r12
	// r8+r6 r3 r5+r0 r4 . .
	umaal r6,r8,r2,lr
	// r8 r6 r3 r5+r0 r4 . .
	ldr r2,[r1,#4*3]
	str r4,[sp,#4*2]
	umaal r0,r5,r2,r9
	// r8 r6 r5+r3 r0 . . .
	umaal r3,r5,r7,r11
	umaal r5,r6,r7,r12
	umaal r6,r8,r7,lr
	// r8 r6 r5 r3 r0 . . .
	umull r7,r4,r2,r10
	// r8 r6 r5+r4 r3+r7 r0 . . .
	umaal r4,r5,r2,r11
	umaal r5,r6,r2,r12
	umaal r6,r8,r2,lr
	// r8 r6 r5 r4 r3+r7 r0 . . .
	ldr r2,[r1,#4*4]
	str r0,[sp,#4*3]
	umaal r3,r7,r2,r9
	umaal r4,r7,r2,r10
	umaal r5,r7,r2,r11
	umaal r6,r7,r2,r12
	umaal r7,r8,r2,lr
	// r8 r7 r6 r5 r4 r3 . . . .
	
	// start row 5 at col 0
	ldr r0,[r1,#4*5]
	str r3,[sp,#4*4]
	movs r2,#0
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 6 at col 0
	ldr r0,[r1,#4*6]
	str r2,[sp,#4*5]
	movs r3,#0
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 7 at col 0
	ldr r0,[r1,#4*7]
	str r3,[sp,#4*6]
	movs r2,#0
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 8 at col 0
	ldr r0,[r1,#4*8]
	str r2,[sp,#4*7]
	movs r3,#0
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 9 at col 0
	ldr r0,[r1,#4*9]
	str r3,[sp,#4*8]
	movs r2,#0
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 10 at col 0
	ldr r0,[r1,#4*10]
	str r2,[sp,#4*9]
	movs r3,#0
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 11 at col 0
	ldr r0,[r1,#4*11]
	str r3,[sp,#4*10]
	movs r2,#0
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 12 at col 0
	ldr r0,[r1,#4*12]
	str r2,[sp,#4*11]
	movs r3,#0
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 13 at col 0
	ldr r0,[r1,#4*13]
	str r3,[sp,#4*12]
	movs r2,#0
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 14 at col 0
	ldr r0,[r1,#4*14]
	str r2,[sp,#4*13]
	movs r3,#0
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	ldr r2,[sp,#4*26]
	str r3,[sp,#4*14]
	str r4,[sp,#4*15]
	str r5,[sp,#4*16]
	str r6,[sp,#4*17]
	str r7,[sp,#4*18]
	str r8,[sp,#4*19]
	// start col 5
	movs r4,#0
	ldm r2!,{r9-r12,lr}
	umull r5,r6,r4,r4
	umull r7,r8,r4,r4
	// start row 0 at col 5
	ldr r0,[r1,#4*0]
	ldr r3,[sp,#4*5]
	str r2,[sp,#4*26]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 1 at col 5
	ldr r0,[r1,#4*1]
	ldr r2,[sp,#4*6]
	str.w r3,[sp,#4*5]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 2 at col 5
	ldr r0,[r1,#4*2]
	ldr r3,[sp,#4*7]
	str.w r2,[sp,#4*6]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 3 at col 5
	ldr r0,[r1,#4*3]
	ldr r2,[sp,#4*8]
	str.w r3,[sp,#4*7]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 4 at col 5
	ldr r0,[r1,#4*4]
	ldr r3,[sp,#4*9]
	str.w r2,[sp,#4*8]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 5 at col 5
	ldr r0,[r1,#4*5]
	ldr r2,[sp,#4*10]
	str.w r3,[sp,#4*9]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 6 at col 5
	ldr r0,[r1,#4*6]
	ldr r3,[sp,#4*11]
	str.w r2,[sp,#4*10]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 7 at col 5
	ldr r0,[r1,#4*7]
	ldr r2,[sp,#4*12]
	str.w r3,[sp,#4*11]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 8 at col 5
	ldr r0,[r1,#4*8]
	ldr r3,[sp,#4*13]
	str.w r2,[sp,#4*12]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 9 at col 5
	ldr r0,[r1,#4*9]
	ldr r2,[sp,#4*14]
	str.w r3,[sp,#4*13]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 10 at col 5
	ldr r0,[r1,#4*10]
	ldr r3,[sp,#4*15]
	str.w r2,[sp,#4*14]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 11 at col 5
	ldr r0,[r1,#4*11]
	ldr r2,[sp,#4*16]
	str.w r3,[sp,#4*15]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 12 at col 5
	ldr r0,[r1,#4*12]
	ldr r3,[sp,#4*17]
	str.w r2,[sp,#4*16]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 13 at col 5
	ldr r0,[r1,#4*13]
	ldr r2,[sp,#4*18]
	str.w r3,[sp,#4*17]
	umaal r2,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	// start row 14 at col 5
	ldr r0,[r1,#4*14]
	ldr r3,[sp,#4*19]
	str.w r2,[sp,#4*18]
	umaal r3,r4,r0,r9
	umaal r4,r5,r0,r10
	umaal r5,r6,r0,r11
	umaal r6,r7,r0,r12
	umaal r7,r8,r0,lr
	ldr r2,[sp,#4*26]
	str r3,[sp,#4*19]
	str r4,[sp,#4*20]
	str r5,[sp,#4*21]
	str r6,[sp,#4*22]
	str r7,[sp,#4*23]
	// start col 10
	ldm r2!,{r6,r7,r9,r10,r11}
	// start row 0 at col 10
	movs.w r4,#0
	ldr r0,[r1,#4*0]
	ldr r3,[sp,#4*10]
	str r8,[sp,#4*24]
	umull r8,r12,r4,r4
	umull lr,r5,r4,r4
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 1 at col 10
	ldr r0,[r1,#4*1]
	ldr r2,[sp,#4*11]
	str.w r3,[sp,#4*10]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 2 at col 10
	ldr r0,[r1,#4*2]
	ldr r3,[sp,#4*12]
	str.w r2,[sp,#4*11]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 3 at col 10
	ldr r0,[r1,#4*3]
	ldr r2,[sp,#4*13]
	str.w r3,[sp,#4*12]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 4 at col 10
	ldr r0,[r1,#4*4]
	ldr r3,[sp,#4*14]
	str.w r2,[sp,#4*13]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 5 at col 10
	ldr r0,[r1,#4*5]
	ldr r2,[sp,#4*15]
	str.w r3,[sp,#4*14]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 6 at col 10
	ldr r0,[r1,#4*6]
	ldr r3,[sp,#4*16]
	str.w r2,[sp,#4*15]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 7 at col 10
	ldr r0,[r1,#4*7]
	ldr r2,[sp,#4*17]
	str.w r3,[sp,#4*16]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 8 at col 10
	ldr r0,[r1,#4*8]
	ldr r3,[sp,#4*18]
	str.w r2,[sp,#4*17]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 9 at col 10
	ldr r0,[r1,#4*9]
	ldr r2,[sp,#4*19]
	str.w r3,[sp,#4*18]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 10 at col 10
	ldr r0,[r1,#4*10]
	ldr r3,[sp,#4*20]
	str.w r2,[sp,#4*19]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 11 at col 10
	ldr r0,[r1,#4*11]
	ldr r2,[sp,#4*21]
	str.w r3,[sp,#4*20]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 12 at col 10
	ldr r0,[r1,#4*12]
	ldr r3,[sp,#4*22]
	str.w r2,[sp,#4*21]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 13 at col 10
	ldr r0,[r1,#4*13]
	ldr r2,[sp,#4*23]
	str.w r3,[sp,#4*22]
	umaal r2,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	// start row 14 at col 10
	ldr r0,[r1,#4*14]
	ldr r3,[sp,#4*24]
	//str.w r2,[sp,#4*23]
	umaal r3,r4,r0,r6
	umaal r4,r8,r0,r7
	umaal r8,r12,r0,r9
	umaal r12,lr,r0,r10
	umaal lr,r5,r0,r11
	//str r3,[sp,#4*24]
	str r4,[sp,#4*25]
	//str r12,[sp,#4*27]
	//str lr,[sp,#4*28]
	//str r5,[sp,#4*29]
	
	b fe448_reduce
END_FUNC(fe448_mul)

	.balign 4
START_FUNC(fe448_sqr)
	push {r0,lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr,-4

fe448_sqr_nopush:
	sub sp,sp,#4*27
	.cfi_def_cfa_offset 4*27+8
	
	mov lr,#0
	ldm r1!,{r4,r5,r6,r7,r8,r9}
	umull r0,r2,r4,r4
	and r3,r5,r4, asr #31
	adds r4,r4,r4
	str r0,[sp,#4*0]
	umull r0,r10,lr,lr
	umaal r0,r2,r4,r5
	umaal r2,r3,r5,r5
	str r0,[sp,#4*1]
	and r0,r6,r5, asr #31
	adcs r5,r5,r5
	umaal r2,r10,r4,r6
	umaal r3,r10,r5,r6
	umaal r0,r10,r6,r6
	str r2,[sp,#4*2]
	and r2,r7,r6, asr #31
	adcs r6,r6,r6
	umull r11,r12,lr,lr
	umaal r3,r11,r4,r7
	umaal r0,r11,r5,r7
	umaal r10,r11,r6,r7
	umaal r2,r11,r7,r7
	str r3,[sp,#4*3]
	and r3,r8,r7, asr #31
	adcs r7,r7,r7
	umaal r0,r12,r4,r8
	umaal r10,r12,r5,r8
	umaal r2,r12,r6,r8
	umaal r11,r12,r7,r8 // r8 dead
	str.w r0,[sp,#4*4]
	umull r0,r8,lr,lr
	umaal r0,r10,r4,r9
	umaal r2,r10,r5,r9
	umaal r10,r11,r6,r9
	umaal r11,r12,r7,r9 // r9 dead
	str r0,[sp,#4*5]
	ldm r1!,{r0}
	umaal r2,r8,r4,r0 // one stall cycle on Cortex-M33
	umaal r8,r10,r5,r0
	umaal r10,r11,r6,r0
	umaal r11,r12,r7,r0
	str r2,[sp,#4*6]
	ldm r1!,{r0}
	umull r2,r9,lr,lr
	umaal r2,r8,r4,r0
	umaal r8,r10,r5,r0
	umaal r10,r11,r6,r0
	umaal r11,r12,r7,r0
	str r2,[sp,#4*7]
	ldm r1!,{r0,r2}
	umaal r3,r8,r4,r0
	umaal r8,r10,r5,r0
	umaal r10,r11,r6,r0
	umaal r11,r12,r7,r0
	umaal r8,r9,r4,r2
	umaal r9,r10,r5,r2
	umaal r10,r11,r6,r2
	umaal r11,r12,r7,r2
	str.w r3,[sp,#4*8]
	str r8,[sp,#4*9]
	ldm r1!,{r0,r8}
	umull r2,r3,lr,lr
	umaal r2,r9,r4,r0
	umaal r9,r10,r5,r0
	umaal r10,r11,r6,r0
	umaal r11,r12,r7,r0
	umaal r3,r9,r4,r8
	umaal r9,r10,r5,r8
	umaal r10,r11,r6,r8
	umaal r11,r12,r7,r8
	str r2,[sp,#4*10]
	str r3,[sp,#4*11]
	ldm r1!,{r0,r8}
	umull r2,r3,lr,lr
	umaal r2,r9,r4,r0
	umaal r9,r10,r5,r0
	umaal r10,r11,r6,r0
	umaal r11,r12,r7,r0
	umaal r3,r9,r4,r8
	umaal r9,r10,r5,r8
	umaal r10,r11,r6,r8
	umaal r11,r12,r7,r8
	ldr r0,[r1]
	str r2,[sp,#4*12]
	str r3,[sp,#4*13]
	add r2,sp,#4*14
	umaal r9,lr,r4,r0
	umaal r10,lr,r5,r0
	umaal r11,lr,r6,r0
	umaal r12,lr,r7,r0

	stm r2,{r9,r10,r11,r12,lr}

	// first 4 rows done!
	add r2,sp,#4*8
	sub r1,r1,#4*10
	ldm r2,{r3,r4,r10,r11,r12}
	ldm r1!,{r2,r5,r6,r7,r8,r9}
	movs r0,#0
	umaal r0,r3,r2,r2
	str r0,[sp,#4*8]
	and r0,r5,r2, asr #31
	adcs r2,r2,r2
	umaal r3,r4,r2,r5
	umaal r4,r10,r5,r5
	str r3,[sp,#4*9]
	and r3,r6,r5, asr #31
	adcs r5,r5,r5
	umaal r0,r4,r2,r6
	umaal r4,r10,r5,r6
	umaal r3,r10,r6,r6
	str r0,[sp,#4*10]
	and r0,r7,r6, asr #31
	adcs r6,r6,r6
	umaal r4,r11,r2,r7
	umaal r3,r11,r5,r7
	umaal r10,r11,r6,r7
	umaal r0,r11,r7,r7
	str r4,[sp,#4*11]
	and lr,r8,r7, asr #31
	adcs r7,r7,r7
	umaal r3,r12,r2,r8
	umaal r10,r12,r5,r8
	umaal r0,r12,r6,r8
	umaal r11,r12,r7,r8
	umaal r12,lr,r8,r8
	adcs r8,r8,r8
	ldr r4,[sp,#4*13]
	str r3,[sp,#4*12]
	umaal r4,r10,r2,r9
	umaal r0,r10,r5,r9
	umaal r10,r11,r6,r9
	umaal r11,r12,r7,r9
	umaal r12,lr,r8,r9
	str r4,[sp,#4*13]
	ldr r4,[r1,#4*10-4*10]
	ldr r3,[sp,#4*14]
	umaal r0,r3,r2,r4
	umaal r3,r10,r5,r4
	str r0,[sp,#4*14]
	umaal r10,r11,r6,r4
	umaal r11,r12,r7,r4
	umaal r12,lr,r8,r4
	ldr r4,[r1,#4*11-4*10]
	ldr r0,[sp,#4*15]
	umaal r0,r3,r2,r4
	umaal r3,r10,r5,r4
	umaal r10,r11,r6,r4
	umaal r11,r12,r7,r4
	umaal r12,lr,r8,r4
	str r0,[sp,#4*15]
	ldr r4,[r1,#4*12-4*10]
	ldr r0,[sp,#4*16]
	umaal r0,r3,r2,r4
	umaal r3,r10,r5,r4
	str r0,[sp,#4*16]
	umaal r10,r11,r6,r4
	umaal r11,r12,r7,r4
	umaal r12,lr,r8,r4
	ldr r4,[r1,#4*13-4*10]
	ldr r0,[sp,#4*17]
	umaal r0,r3,r2,r4
	umaal r3,r10,r5,r4
	umaal r10,r11,r6,r4
	umaal r11,r12,r7,r4
	umaal r12,lr,r8,r4
	str.w r0,[sp,#4*17]
	ldr r4,[r1,#4*14-4*10]
	ldr r0,[sp,#4*18]
	umaal r0,r3,r2,r4
	umaal r3,r10,r5,r4
	umaal r10,r11,r6,r4
	umaal r11,r12,r7,r4
	umaal r12,lr,r8,r4

	// 5 more rows done!

	rrx r8,r8
	and r2,r9,r8, asr #31
	ldm.w r1,{r1,r5,r6,r7}
	umaal r0,r2,r9,r9
	and r8,r1,r9, asr #31
	adcs r9,r9,r9
	str r0,[sp,#4*18]
	umaal r3,r2,r9,r1
	str r3,[sp,#4*19]
	umaal r2,r8,r1,r1
	umaal r2,r10,r9,r5
	str r2,[sp,#4*20]
	and r2,r5,r1, asr #31
	adcs r1,r1,r1
	umaal r8,r10,r1,r5
	umaal r10,r2,r5,r5
	and r3,r6,r5, asr #31
	adcs r5,r5,r5
	umaal r8,r11,r9,r6
	umaal r10,r11,r1,r6
	umaal r2,r11,r5,r6
	umaal r3,r11,r6,r6
	str r8,[sp,#4*21]
	and r8,r7,r6, asr #31
	adcs r6,r6,r6
	umaal r10,r12,r9,r7
	umaal r2,r12,r1,r7
	umaal r3,r12,r5,r7
	umaal r11,r12,r6,r7
	umaal r8,r12,r7,r7
	str r10,[sp,#4*22]
	and r10,r4,r7, asr #31
	adcs.w r7,r7,r7
	umaal r2,lr,r9,r4
	umaal r3,lr,r1,r4
	umaal r11,lr,r5,r4
	umaal r8,lr,r6,r4
	umaal r12,lr,r7,r4
	umaal lr,r10,r4,r4
	//str r2,[sp,#4*23]
	//str r3,[sp,#4*24]
	str r11,[sp,#4*25]
	//str r12,[sp,#4*27]
	//str lr,[sp,#4*28]
	
fe448_reduce:
	ldr r1,[sp,#4*13]
	ldr r4,[sp,#4*20]
	str r8,[sp,#4*26]

	mov r8,#1
	mov r11,#2
	
	umaal r1,r4,r11,r12
	
	mov r9,r4
	ldr r0,[sp,#4*0]
	ldr r10,[sp,#4*7]
	ldr r5,[sp,#4*14]
	ldr r6,[sp,#4*21]
	ldr r7,[sp,#4*27] // out ptr
	str r1,[sp,#4*13] // spill
	umaal r0,r4,r11,lr
	umlal r0,r4,r8,r5
	umlal r0,r4,r8,r6
	umaal r10,r9,r11,lr
	umlal r10,r9,r8,lr
	umlal r10,r9,r8,r5
	umlal r10,r9,r11,r6
	
	ldr r1,[sp,#4*1]
	ldr lr,[sp,#4*8]
	ldr r5,[sp,#4*15]
	ldr r6,[sp,#4*22]
	str r0,[r7,#4*0]
	umaal r1,r4,r8,r5
	umlal r1,r4,r8,r6
	umaal lr,r9,r8,r5
	umlal lr,r9,r11,r6
	
	ldr r0,[sp,#4*2]
	ldr r6,[sp,#4*9]
	ldr r5,[sp,#4*16]
	str r1,[r7,#4*1]
	umaal r0,r4,r8,r5
	umlal r0,r4,r8,r2
	umaal r6,r9,r8,r5
	umlal r6,r9,r11,r2
	
	ldr r1,[sp,#4*3]
	ldr r2,[sp,#4*10]
	ldr r5,[sp,#4*17]
	str r0,[r7,#4*2]
	umaal r1,r4,r8,r5
	umlal r1,r4,r8,r3
	umaal r2,r9,r8,r5
	umlal r2,r9,r11,r3
	str r1,[r7,#4*3]
	
	ldr r0,[sp,#4*4]
	ldr r3,[sp,#4*11]
	ldr r5,[sp,#4*18]
	ldr.w r1,[sp,#4*25]
	str r12,[sp,#4*18] // spill
	umaal r0,r4,r8,r5
	umlal r0,r4,r8,r1
	umaal r3,r9,r8,r5
	umlal r3,r9,r11,r1
	str r0,[r7,#4*4]
	
	ldr r0,[sp,#4*5]
	ldr r1,[sp,#4*12]
	ldr r5,[sp,#4*19]
	ldr r12,[sp,#4*26]
	umaal r0,r4,r8,r5
	umlal r0,r4,r8,r12
	umaal r1,r9,r8,r5
	umlal r1,r9,r11,r12
	
	ldr r5,[sp,#4*6]
	ldr r11,[sp,#4*20]
	ldr r12,[sp,#4*18] // restore
	str r0,[r7,#4*5]
	umaal r5,r4,r8,r11
	umlal r5,r4,r8,r12
	
	adds r4,r4,r10
	ldr r10,[sp,#4*13]
	str r5,[r7,#4*6]
	str r4,[r7,#4*7]
	movs r5,#0
	adcs lr,lr,r5
	adcs r6,r6,r5
	adcs r2,r2,r5
	adcs r3,r3,r5
	adcs r1,r1,r5
	adcs r10,r10,r9
	adcs r5,r5,r5
	
	str lr,[r7,#4*8]
	str r6,[r7,#4*9]
	str r2,[r7,#4*10]
	str r3,[r7,#4*11]
	str r1,[r7,#4*12]
	str r10,[r7,#4*13]
	str r5,[r7,#4*14]
	
	add sp,sp,#4*28
	.cfi_def_cfa_offset 4
	pop {pc}
END_FUNC(fe448_sqr)

#if has_d_cache
// input: *r1 = first operand (APSR.GE=0xf), *r2 = second operand (APSR.GE=0x0)
// output: *r0 = result of sqr
START_FUNC(fe448_csel_sqr)
	push {r0,lr}
	.cfi_def_cfa_offset 8
	.cfi_offset lr,-4

	mov lr,#3
0:
	ldm r1!,{r3-r7}
	ldm r2!,{r8-r12}
	sel r3,r3,r8
	sel r4,r4,r9
	sel r5,r5,r10
	sel r6,r6,r11
	sel r7,r7,r12
	stm r0!,{r3-r7}
	subs lr,lr,#1
	bne 0b

	sub r1,r0,#60
	mov r2,r1
	b fe448_sqr_nopush
END_FUNC(fe448_csel_sqr)
#endif

// input: *r1 = scalar, *r2 = basepoint (all pointers may be unaligned)
// output: *r0 = result
START_GLOBAL_FUNC(curve448_scalarmult)
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
	
	sub sp,sp,#488
	.cfi_def_cfa_offset 528
	
	movs r5,#448 // bitpos
	movs r3,#1
	movs r4,#0
	str r5,[sp,#476]
	str r4,[sp,#480]
	
	add r5,sp,#60*2
	add r0,sp,#420
	stm r5!,{r3} // x2 = 1
0:
	stm r5!,{r4}
	cmp r5,r0
	blt 0b
	str r3,[sp,#60*5] // z3 = 1
	
	bl curve448_copy // scalar
	
	add r0,sp,#60*6
	mov r1,r2
	bl curve448_copy // x1
	add r0,sp,#60*4
	add r1,sp,#60*6
	bl curve448_copy // x3
	
	ldr r0,[sp,#420]
	ldr r1,[sp,#472]
	bic r0,r0,#3            // clamp scalar by setting lowest two bits to zero
	orr r1,r1,#0x80000000   // highest bit shall also be set
	str r0,[sp,#420]
	str r1,[sp,#472]
	b 1f
	
	// a b x2 z2 x3 z3 x1 scalar bitpos lastbit diff_bits
	// 0                  420    476    480     484
	
0:
	add r2,sp,#420
	lsrs r3,r0,#5
	ldr r4,[r2,r3, lsl #2]
	and r5,r0,#0x1f
	lsrs r4,r4,r5
#if !has_d_cache
	and r4,r4,#1
	eors r1,r1,r4
	movs r6,#60*2
	muls r1,r6,r1
	str r0,[sp,#476]
	str r4,[sp,#480]
	str r1,[sp,#484]
#else
	eors r1,r1,r4
	sbfx r1,r1,#0,#1
	uadd8 r1,r1,r1   // set APSR.GE
	str r0,[sp,#476]
	str r4,[sp,#480]
#endif
	
	add r0,sp,#60*0
	add r1,sp,#60*2
	add r2,sp,#60*3
	bl fe448_add	// a = x2 + z2
	add r0,sp,#60*1
	add r1,sp,#60*2
	add r2,sp,#60*3
	bl fe448_sub	// b = x2 - z2
	add r0,sp,#60*2
	add r1,sp,#60*4
	add r2,sp,#60*5
	bl fe448_add    // x2 = x3 + z3
	add r0,sp,#60*3
	add r1,sp,#60*4
	add r2,sp,#60*5
	bl fe448_sub    // z2 = x3 - z3
	add r0,sp,#60*5
	add r1,sp,#60*3
	add r2,sp,#60*0
	bl fe448_mul    // z3 = z2 * a
#if !has_d_cache
	ldr r3,[sp,#484]
	add r0,sp,#60*0
	add r1,sp,r3
	bl fe448_sqr    // a = f^2 (f is a or x2)
#else
	add r0,sp,#60*0
	add r1,sp,#60*2
	add r2,sp,#60*0
	bl fe448_csel_sqr // a = f^2 (f is a or x2)
#endif
	add r0,sp,#60*4
	add r1,sp,#60*2
	add r2,sp,#60*1
	bl fe448_mul    // x3 = x2 * b
#if !has_d_cache
	ldr r3,[sp,#484]
	add r0,sp,#60*2
	add r1,sp,#60*1
	add r1,r1,r3
	bl fe448_sqr    // x2 = g^2 (g is b or z2)
#else
	add r0,sp,#60*2
	add r1,sp,#60*3
	add r2,sp,#60*1
	bl fe448_csel_sqr // x2 = g^2 (g is b or z2)
#endif
	add r0,sp,#60*3
	add r1,sp,#60*5
	add r2,sp,#60*4
	bl fe448_sub    // z2 = z3 - x3
	add r0,sp,#60*3
	add r1,sp,#60*3
	bl fe448_sqr    // z2 = z2^2
	add r0,sp,#60*4
	add r1,sp,#60*5
	add r2,sp,#60*4
	bl fe448_add    // x3 = z3 + x3
	add r0,sp,#60*4
	add r1,sp,#60*4
	bl fe448_sqr    // x3 = x3^2
	add r0,sp,#60*5
	add r1,sp,#60*6
	add r2,sp,#60*3
	bl fe448_mul    // z3 = x1 * z2
	add r0,sp,#60*1
	add r1,sp,#60*0
	add r2,sp,#60*2
	bl fe448_sub    // b = a - x2
	add r0,sp,#60*3
	add r1,sp,#60*2
	add r2,sp,#60*1
	mov r12,#39082
	bl fe448_add_mul// z2 = x2 + 39082 * b
	add r0,sp,#60*2
	add r1,sp,#60*0
	add r2,sp,#60*2
	bl fe448_mul	// x2 = a * x2
	add r0,sp,#60*3
	add r1,sp,#60*1
	add r2,sp,#60*3
	bl fe448_mul	// z2 = b * z2
1:
	ldr r0,[sp,#476]
	ldr r1,[sp,#480]
	subs r0,r0,#1
	bpl 0b
	
	// main loop done, start inverting
	adr r0,fe448_invsequence
	str r0,[sp,#476]
4:
	ldr r6,[sp,#476]
	ldrh r4,[r6],#2
	lsrs r5,r4,#14
	uxtb r0,r4
	ubfx r1,r4,#8,#3
	ubfx r2,r4,#11,#3
	movs r7,#60
	cbz r5,0f
	str r6,[sp,#476]
	muls r1,r7,r1
	muls r2,r7,r2
	add r1,r1,sp
	add r2,r2,sp
	cmp r5,#1
	beq 1f
	muls r0,r7,r0
	add r0,r0,sp
	cmp r5,#2
	beq 2f
	bl fe448_mul
	b 4b
2:
	bl fe448_sqr
	b 4b
1:
	str r0,[sp,#480]
	str r2,[sp,#484]
	mov r0,sp
5:
	bl fe448_sqr
	ldr r2,[sp,#480]
	mov r0,sp
	mov r1,sp
	subs r2,r2,#1
	str r2,[sp,#480]
	bgt 5b
	ldr r2,[sp,#484]
	add r0,sp,#60
	bl fe448_mul
	b 4b
0:

	// The result is currently stored using 449 bits,
	// where an addition of 1 to the uppermost 33 bits will not overflow.
	// The final reduction algorithm is:
	// 1. v = (v & ((1<<448)-1)) + (v>>448) * ((1<<224) + 1)
	// 2. v -= ((1<<448) - (1<<224) - 1)
	// 3. v += (v < 0) ? ((1<<448) - (1<<224) - 1) : 0
	// Step 1 brings the result to 448 bits.
	// Step 2 and 3 take care of when result is bigger than or equal to our prime.
	// We rewrite step 2 as v += ((1<<224) + 1) - (1<<448) and merge into step 1:
	// Step 1: v = (v & ((1<<448)-1)) + (1 + (v>>448)) * ((1<<224) + 1)
	// Step 2: v -= (1<<448)
	// Step 3: as above
	
	// Step 1:
	ldr r2,[sp,#4*14]
	adds r2,r2,#1
	mov r3,r2
	movs r4,#0
	mov r0,sp
	mov r1,sp
	bl curve448_add_helper
	
	// Step 2:
	subs r2,r6,#1 // 0xffffffff if negative, else 0
	
	// Step 3:
	lsls r3,r2,#1
	mov r4,r2
	ldr r0,[sp,#488]
	mov r1,sp
	bl curve448_add_helper
	
	add sp,sp,#492
	.cfi_def_cfa_offset 36
	pop {r4-r11,pc}

	.balign 4
fe448_invsequence:
	// opcode, out, in1, in2, count
	// opcodes: 0=exit, 1=sqr many and mul, 2=sqr, 3=mul
	.short (2<<14) | 1 | (3<<8)                 // a^2 (with a = z2)
	.short (3<<14) | 1 | (1<<8) | (3<<11)       // a^(2^2 - 2^0) = a^3
	.short (1<<14) |     (1<<8) | (1<<11) | 2   // a^(2^4 - 2^0)
	.short (1<<14) |     (1<<8) | (1<<11) | 4   // a^(2^8 - 2^0)
	.short (2<<14) | 1 | (1<<8)                 // a^(2^9 - 2^1)
	.short (3<<14) | 1 | (1<<8) | (3<<11)       // a^(2^9 - 2^0)
	.short (1<<14) |     (1<<8) | (1<<11) | 9   // a^(2^18 - 2^0)
	.short (1<<14) |     (1<<8) | (1<<11) | 18  // a^(2^36 - 2^0)
	.short (2<<14) | 1 | (1<<8)                 // a^(2^37 - 2^1)
	.short (3<<14) | 4 | (1<<8) | (3<<11)       // a^(2^37 - 2^0)
	.short (1<<14) |     (4<<8) | (4<<11) | 37  // a^(2^74 - 2^0)
	.short (1<<14) |     (1<<8) | (4<<11) | 37  // a^(2^111 - 2^0)
	.short (1<<14) |     (1<<8) | (1<<11) | 111 // a^(2^222 - 2^0)
	.short (1<<14) |     (1<<8) | (3<<11) | 2   // a^(2^224 - 3)
	.short (3<<14) | 4 | (1<<8) | (3<<11)       // a^(2^224 - 2^1)
	.short (1<<14) |     (4<<8) | (1<<11) | 224 // a^((2^448 - 2^224 - 1) - 2) = a^-1
	.short (3<<14) | 0 | (2<<8) | (1<<11)       // x2 * a^-1
	.short 0                                    // exit
END_FUNC(curve448_scalarmult)

// input: *r1 = in, r2 = 1th, r3 = 7th, r4 = rest
// output: *r0 = out, r6 = carry out
// adds *r1 + (r2 r4 r4 r4 r4 r4 r4 r3 r4 r4 r4 r4 r4 r4), lsw to msw
START_FUNC(curve448_add_helper)
	ldm r1!,{r5}
	movs r6,#0
	movs r7,#1
	umaal r5,r6,r7,r2
	str r5,[r0],#4 // unaligned store
	movs r2,#13
0:
	ldm r1!,{r5}
	cmp r2,#7
	ite ne
	umaalne r5,r6,r7,r4
	umaaleq r5,r6,r7,r3
	str r5,[r0],#4 // unaligned store
	subs r2,r2,#1
	bne 0b
	bx lr
END_FUNC(curve448_add_helper)

// input: *r1
// output: *r0
// performs unaligned copy of 56 bytes
START_FUNC(curve448_copy)
	mov r4,#14
0:
	ldr r3,[r1],#4
	str r3,[r0],#4
	subs r4,r4,#1
	bgt 0b
	bx lr
END_FUNC(curve448_copy)

	.section .note.GNU-stack,"",%progbits
