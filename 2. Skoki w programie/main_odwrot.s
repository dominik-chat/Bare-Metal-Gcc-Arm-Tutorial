
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <ClearPin>:
   0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
   4:	e28db000 	add	fp, sp, #0
   8:	e59f3014 	ldr	r3, [pc, #20]	; 24 <ClearPin+0x24>
   c:	e3a02801 	mov	r2, #65536	; 0x10000
  10:	e5832000 	str	r2, [r3]
  14:	e1a00000 	nop			; (mov r0, r0)
  18:	e28bd000 	add	sp, fp, #0
  1c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  20:	e12fff1e 	bx	lr
  24:	e002801c 	.word	0xe002801c

00000028 <SetPin>:
  28:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  2c:	e28db000 	add	fp, sp, #0
  30:	e59f3014 	ldr	r3, [pc, #20]	; 4c <SetPin+0x24>
  34:	e3a02801 	mov	r2, #65536	; 0x10000
  38:	e5832000 	str	r2, [r3]
  3c:	e1a00000 	nop			; (mov r0, r0)
  40:	e28bd000 	add	sp, fp, #0
  44:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  48:	e12fff1e 	bx	lr
  4c:	e0028014 	.word	0xe0028014

00000050 <SetDir>:
  50:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
  54:	e28db000 	add	fp, sp, #0
  58:	e59f3014 	ldr	r3, [pc, #20]	; 74 <SetDir+0x24>
  5c:	e3a02801 	mov	r2, #65536	; 0x10000
  60:	e5832000 	str	r2, [r3]
  64:	e1a00000 	nop			; (mov r0, r0)
  68:	e28bd000 	add	sp, fp, #0
  6c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
  70:	e12fff1e 	bx	lr
  74:	e0028018 	.word	0xe0028018

00000078 <main>:
  78:	e92d4800 	push	{fp, lr}
  7c:	e28db004 	add	fp, sp, #4
  80:	ebfffffe 	bl	50 <SetDir>
  84:	ebfffffe 	bl	28 <SetPin>
  88:	ebfffffe 	bl	0 <ClearPin>
  8c:	eafffffc 	b	84 <main+0xc>
