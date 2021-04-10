
main.elf:     file format elf32-littlearm


Disassembly of section .init:

00008000 <_init>:
    8000:	e1a0c00d 	mov	ip, sp
    8004:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    8008:	e24cb004 	sub	fp, ip, #4
    800c:	e24bd028 	sub	sp, fp, #40	; 0x28
    8010:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    8014:	e12fff1e 	bx	lr

Disassembly of section .text:

00008018 <exit>:
    8018:	e92d4010 	push	{r4, lr}
    801c:	e3a01000 	mov	r1, #0
    8020:	e1a04000 	mov	r4, r0
    8024:	eb000109 	bl	8450 <__call_exitprocs>
    8028:	e59f3018 	ldr	r3, [pc, #24]	; 8048 <exit+0x30>
    802c:	e5930000 	ldr	r0, [r3]
    8030:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
    8034:	e3530000 	cmp	r3, #0
    8038:	11a0e00f 	movne	lr, pc
    803c:	112fff13 	bxne	r3
    8040:	e1a00004 	mov	r0, r4
    8044:	eb0001a3 	bl	86d8 <_exit>
    8048:	00008718 	.word	0x00008718

0000804c <register_fini>:
    804c:	e59f3018 	ldr	r3, [pc, #24]	; 806c <register_fini+0x20>
    8050:	e3530000 	cmp	r3, #0
    8054:	012fff1e 	bxeq	lr
    8058:	e92d4010 	push	{r4, lr}
    805c:	e59f000c 	ldr	r0, [pc, #12]	; 8070 <register_fini+0x24>
    8060:	eb000148 	bl	8588 <atexit>
    8064:	e8bd4010 	pop	{r4, lr}
    8068:	e12fff1e 	bx	lr
    806c:	00000000 	.word	0x00000000
    8070:	000085a8 	.word	0x000085a8

00008074 <__do_global_dtors_aux>:
    8074:	e92d4010 	push	{r4, lr}
    8078:	e59f4028 	ldr	r4, [pc, #40]	; 80a8 <__do_global_dtors_aux+0x34>
    807c:	e5d43000 	ldrb	r3, [r4]
    8080:	e3530000 	cmp	r3, #0
    8084:	1a000005 	bne	80a0 <__do_global_dtors_aux+0x2c>
    8088:	e59f301c 	ldr	r3, [pc, #28]	; 80ac <__do_global_dtors_aux+0x38>
    808c:	e3530000 	cmp	r3, #0
    8090:	159f0018 	ldrne	r0, [pc, #24]	; 80b0 <__do_global_dtors_aux+0x3c>
    8094:	11a00000 	movne	r0, r0
    8098:	e3a03001 	mov	r3, #1
    809c:	e5c43000 	strb	r3, [r4]
    80a0:	e8bd4010 	pop	{r4, lr}
    80a4:	e12fff1e 	bx	lr
    80a8:	00018b8c 	.word	0x00018b8c
    80ac:	00000000 	.word	0x00000000
    80b0:	00008748 	.word	0x00008748

000080b4 <frame_dummy>:
    80b4:	e59f301c 	ldr	r3, [pc, #28]	; 80d8 <frame_dummy+0x24>
    80b8:	e3530000 	cmp	r3, #0
    80bc:	012fff1e 	bxeq	lr
    80c0:	e92d4010 	push	{r4, lr}
    80c4:	e59f1010 	ldr	r1, [pc, #16]	; 80dc <frame_dummy+0x28>
    80c8:	e59f0010 	ldr	r0, [pc, #16]	; 80e0 <frame_dummy+0x2c>
    80cc:	e1a00000 	nop			; (mov r0, r0)
    80d0:	e8bd4010 	pop	{r4, lr}
    80d4:	e12fff1e 	bx	lr
    80d8:	00000000 	.word	0x00000000
    80dc:	00018b90 	.word	0x00018b90
    80e0:	00008748 	.word	0x00008748

000080e4 <_stack_init>:
    80e4:	e10f4000 	mrs	r4, CPSR
    80e8:	e314000f 	tst	r4, #15
    80ec:	0a00001c 	beq	8164 <_stack_init+0x80>
    80f0:	e1a0300d 	mov	r3, sp
    80f4:	e3a010d1 	mov	r1, #209	; 0xd1
    80f8:	e121f001 	msr	CPSR_c, r1
    80fc:	e1a0d003 	mov	sp, r3
    8100:	e24daa01 	sub	sl, sp, #4096	; 0x1000
    8104:	e1a0300a 	mov	r3, sl
    8108:	e3a010d7 	mov	r1, #215	; 0xd7
    810c:	e121f001 	msr	CPSR_c, r1
    8110:	e1a0d003 	mov	sp, r3
    8114:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    8118:	e3a010db 	mov	r1, #219	; 0xdb
    811c:	e121f001 	msr	CPSR_c, r1
    8120:	e1a0d003 	mov	sp, r3
    8124:	e2433a01 	sub	r3, r3, #4096	; 0x1000
    8128:	e3a010d2 	mov	r1, #210	; 0xd2
    812c:	e121f001 	msr	CPSR_c, r1
    8130:	e1a0d003 	mov	sp, r3
    8134:	e2433a02 	sub	r3, r3, #8192	; 0x2000
    8138:	e3a010d3 	mov	r1, #211	; 0xd3
    813c:	e121f001 	msr	CPSR_c, r1
    8140:	e1a0d003 	mov	sp, r3
    8144:	e2433902 	sub	r3, r3, #32768	; 0x8000
    8148:	e3c330ff 	bic	r3, r3, #255	; 0xff
    814c:	e3c33cff 	bic	r3, r3, #65280	; 0xff00
    8150:	e3a010df 	mov	r1, #223	; 0xdf
    8154:	e121f001 	msr	CPSR_c, r1
    8158:	e1a0d003 	mov	sp, r3
    815c:	e38440c0 	orr	r4, r4, #192	; 0xc0
    8160:	e121f004 	msr	CPSR_c, r4
    8164:	e243a801 	sub	sl, r3, #65536	; 0x10000
    8168:	e12fff1e 	bx	lr

0000816c <_mainCRTStartup>:
    816c:	e59f3094 	ldr	r3, [pc, #148]	; 8208 <_mainCRTStartup+0x9c>
    8170:	e3530000 	cmp	r3, #0
    8174:	059f3080 	ldreq	r3, [pc, #128]	; 81fc <_mainCRTStartup+0x90>
    8178:	e1a0d003 	mov	sp, r3
    817c:	ebffffd8 	bl	80e4 <_stack_init>
    8180:	e3b01000 	movs	r1, #0
    8184:	e1a0b001 	mov	fp, r1
    8188:	e1a07001 	mov	r7, r1
    818c:	e59f0078 	ldr	r0, [pc, #120]	; 820c <_mainCRTStartup+0xa0>
    8190:	e59f2078 	ldr	r2, [pc, #120]	; 8210 <_mainCRTStartup+0xa4>
    8194:	e0522000 	subs	r2, r2, r0
    8198:	eb000065 	bl	8334 <memset>
    819c:	e59f305c 	ldr	r3, [pc, #92]	; 8200 <_mainCRTStartup+0x94>
    81a0:	e3530000 	cmp	r3, #0
    81a4:	0a000001 	beq	81b0 <_mainCRTStartup+0x44>
    81a8:	e1a0e00f 	mov	lr, pc
    81ac:	e1a0f003 	mov	pc, r3
    81b0:	e59f304c 	ldr	r3, [pc, #76]	; 8204 <_mainCRTStartup+0x98>
    81b4:	e3530000 	cmp	r3, #0
    81b8:	0a000001 	beq	81c4 <_mainCRTStartup+0x58>
    81bc:	e1a0e00f 	mov	lr, pc
    81c0:	e1a0f003 	mov	pc, r3
    81c4:	e3b00000 	movs	r0, #0
    81c8:	e3b01000 	movs	r1, #0
    81cc:	e1b04000 	movs	r4, r0
    81d0:	e1b05001 	movs	r5, r1
    81d4:	e59f0038 	ldr	r0, [pc, #56]	; 8214 <_mainCRTStartup+0xa8>
    81d8:	e3500000 	cmp	r0, #0
    81dc:	0a000001 	beq	81e8 <_mainCRTStartup+0x7c>
    81e0:	e59f0030 	ldr	r0, [pc, #48]	; 8218 <_mainCRTStartup+0xac>
    81e4:	eb0000e7 	bl	8588 <atexit>
    81e8:	eb00002f 	bl	82ac <__libc_init_array>
    81ec:	e1b00004 	movs	r0, r4
    81f0:	e1b01005 	movs	r1, r5
    81f4:	eb00001b 	bl	8268 <main>
    81f8:	ebffff86 	bl	8018 <exit>
    81fc:	00080000 	.word	0x00080000
	...
    820c:	00018b8c 	.word	0x00018b8c
    8210:	00018bcc 	.word	0x00018bcc
    8214:	00008588 	.word	0x00008588
    8218:	000085a8 	.word	0x000085a8

0000821c <Delay>:
    821c:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
    8220:	e28db000 	add	fp, sp, #0
    8224:	e24dd00c 	sub	sp, sp, #12
    8228:	e3a03000 	mov	r3, #0
    822c:	e50b3008 	str	r3, [fp, #-8]
    8230:	ea000002 	b	8240 <Delay+0x24>
    8234:	e51b3008 	ldr	r3, [fp, #-8]
    8238:	e2833001 	add	r3, r3, #1
    823c:	e50b3008 	str	r3, [fp, #-8]
    8240:	e51b3008 	ldr	r3, [fp, #-8]
    8244:	e59f2018 	ldr	r2, [pc, #24]	; 8264 <Delay+0x48>
    8248:	e1530002 	cmp	r3, r2
    824c:	9afffff8 	bls	8234 <Delay+0x18>
    8250:	e1a00000 	nop			; (mov r0, r0)
    8254:	e1a00000 	nop			; (mov r0, r0)
    8258:	e28bd000 	add	sp, fp, #0
    825c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
    8260:	e12fff1e 	bx	lr
    8264:	0000c34f 	.word	0x0000c34f

00008268 <main>:
    8268:	e92d4800 	push	{fp, lr}
    826c:	e28db004 	add	fp, sp, #4
    8270:	e59f3028 	ldr	r3, [pc, #40]	; 82a0 <main+0x38>
    8274:	e3a028ff 	mov	r2, #16711680	; 0xff0000
    8278:	e5832000 	str	r2, [r3]
    827c:	e59f3020 	ldr	r3, [pc, #32]	; 82a4 <main+0x3c>
    8280:	e3a02801 	mov	r2, #65536	; 0x10000
    8284:	e5832000 	str	r2, [r3]
    8288:	ebffffe3 	bl	821c <Delay>
    828c:	e59f3014 	ldr	r3, [pc, #20]	; 82a8 <main+0x40>
    8290:	e3a02801 	mov	r2, #65536	; 0x10000
    8294:	e5832000 	str	r2, [r3]
    8298:	ebffffdf 	bl	821c <Delay>
    829c:	eafffff6 	b	827c <main+0x14>
    82a0:	e0028018 	.word	0xe0028018
    82a4:	e002801c 	.word	0xe002801c
    82a8:	e0028014 	.word	0xe0028014

000082ac <__libc_init_array>:
    82ac:	e92d4070 	push	{r4, r5, r6, lr}
    82b0:	e59f606c 	ldr	r6, [pc, #108]	; 8324 <__libc_init_array+0x78>
    82b4:	e59f506c 	ldr	r5, [pc, #108]	; 8328 <__libc_init_array+0x7c>
    82b8:	e0466005 	sub	r6, r6, r5
    82bc:	e1b06146 	asrs	r6, r6, #2
    82c0:	0a000007 	beq	82e4 <__libc_init_array+0x38>
    82c4:	e3a04000 	mov	r4, #0
    82c8:	e2455004 	sub	r5, r5, #4
    82cc:	e5b53004 	ldr	r3, [r5, #4]!
    82d0:	e2844001 	add	r4, r4, #1
    82d4:	e1a0e00f 	mov	lr, pc
    82d8:	e12fff13 	bx	r3
    82dc:	e1560004 	cmp	r6, r4
    82e0:	1afffff9 	bne	82cc <__libc_init_array+0x20>
    82e4:	e59f6040 	ldr	r6, [pc, #64]	; 832c <__libc_init_array+0x80>
    82e8:	e59f5040 	ldr	r5, [pc, #64]	; 8330 <__libc_init_array+0x84>
    82ec:	e0466005 	sub	r6, r6, r5
    82f0:	ebffff42 	bl	8000 <_init>
    82f4:	e1b06146 	asrs	r6, r6, #2
    82f8:	0a000007 	beq	831c <__libc_init_array+0x70>
    82fc:	e3a04000 	mov	r4, #0
    8300:	e2455004 	sub	r5, r5, #4
    8304:	e5b53004 	ldr	r3, [r5, #4]!
    8308:	e2844001 	add	r4, r4, #1
    830c:	e1a0e00f 	mov	lr, pc
    8310:	e12fff13 	bx	r3
    8314:	e1560004 	cmp	r6, r4
    8318:	1afffff9 	bne	8304 <__libc_init_array+0x58>
    831c:	e8bd4070 	pop	{r4, r5, r6, lr}
    8320:	e12fff1e 	bx	lr
    8324:	0001874c 	.word	0x0001874c
    8328:	0001874c 	.word	0x0001874c
    832c:	00018754 	.word	0x00018754
    8330:	0001874c 	.word	0x0001874c

00008334 <memset>:
    8334:	e3100003 	tst	r0, #3
    8338:	0a000040 	beq	8440 <memset+0x10c>
    833c:	e3520000 	cmp	r2, #0
    8340:	e2422001 	sub	r2, r2, #1
    8344:	012fff1e 	bxeq	lr
    8348:	e1a03000 	mov	r3, r0
    834c:	e201c0ff 	and	ip, r1, #255	; 0xff
    8350:	ea000002 	b	8360 <memset+0x2c>
    8354:	e2422001 	sub	r2, r2, #1
    8358:	e3720001 	cmn	r2, #1
    835c:	012fff1e 	bxeq	lr
    8360:	e4c3c001 	strb	ip, [r3], #1
    8364:	e3130003 	tst	r3, #3
    8368:	1afffff9 	bne	8354 <memset+0x20>
    836c:	e3520003 	cmp	r2, #3
    8370:	9a000028 	bls	8418 <memset+0xe4>
    8374:	e92d4030 	push	{r4, r5, lr}
    8378:	e201e0ff 	and	lr, r1, #255	; 0xff
    837c:	e18ee40e 	orr	lr, lr, lr, lsl #8
    8380:	e352000f 	cmp	r2, #15
    8384:	e18ee80e 	orr	lr, lr, lr, lsl #16
    8388:	9a00002e 	bls	8448 <memset+0x114>
    838c:	e242c010 	sub	ip, r2, #16
    8390:	e3cc400f 	bic	r4, ip, #15
    8394:	e2835020 	add	r5, r3, #32
    8398:	e0855004 	add	r5, r5, r4
    839c:	e1a0422c 	lsr	r4, ip, #4
    83a0:	e283c010 	add	ip, r3, #16
    83a4:	e50ce010 	str	lr, [ip, #-16]
    83a8:	e50ce00c 	str	lr, [ip, #-12]
    83ac:	e50ce008 	str	lr, [ip, #-8]
    83b0:	e50ce004 	str	lr, [ip, #-4]
    83b4:	e28cc010 	add	ip, ip, #16
    83b8:	e15c0005 	cmp	ip, r5
    83bc:	1afffff8 	bne	83a4 <memset+0x70>
    83c0:	e284c001 	add	ip, r4, #1
    83c4:	e312000c 	tst	r2, #12
    83c8:	e083c20c 	add	ip, r3, ip, lsl #4
    83cc:	e202200f 	and	r2, r2, #15
    83d0:	0a000018 	beq	8438 <memset+0x104>
    83d4:	e2423004 	sub	r3, r2, #4
    83d8:	e3c33003 	bic	r3, r3, #3
    83dc:	e2833004 	add	r3, r3, #4
    83e0:	e08c3003 	add	r3, ip, r3
    83e4:	e48ce004 	str	lr, [ip], #4
    83e8:	e153000c 	cmp	r3, ip
    83ec:	1afffffc 	bne	83e4 <memset+0xb0>
    83f0:	e2022003 	and	r2, r2, #3
    83f4:	e3520000 	cmp	r2, #0
    83f8:	0a000004 	beq	8410 <memset+0xdc>
    83fc:	e20110ff 	and	r1, r1, #255	; 0xff
    8400:	e0832002 	add	r2, r3, r2
    8404:	e4c31001 	strb	r1, [r3], #1
    8408:	e1520003 	cmp	r2, r3
    840c:	1afffffc 	bne	8404 <memset+0xd0>
    8410:	e8bd4030 	pop	{r4, r5, lr}
    8414:	e12fff1e 	bx	lr
    8418:	e3520000 	cmp	r2, #0
    841c:	012fff1e 	bxeq	lr
    8420:	e20110ff 	and	r1, r1, #255	; 0xff
    8424:	e0832002 	add	r2, r3, r2
    8428:	e4c31001 	strb	r1, [r3], #1
    842c:	e1520003 	cmp	r2, r3
    8430:	1afffffc 	bne	8428 <memset+0xf4>
    8434:	e12fff1e 	bx	lr
    8438:	e1a0300c 	mov	r3, ip
    843c:	eaffffec 	b	83f4 <memset+0xc0>
    8440:	e1a03000 	mov	r3, r0
    8444:	eaffffc8 	b	836c <memset+0x38>
    8448:	e1a0c003 	mov	ip, r3
    844c:	eaffffe0 	b	83d4 <memset+0xa0>

00008450 <__call_exitprocs>:
    8450:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    8454:	e1a0b000 	mov	fp, r0
    8458:	e59f3120 	ldr	r3, [pc, #288]	; 8580 <__call_exitprocs+0x130>
    845c:	e24dd00c 	sub	sp, sp, #12
    8460:	e5930000 	ldr	r0, [r3]
    8464:	e1a07001 	mov	r7, r1
    8468:	e58db004 	str	fp, [sp, #4]
    846c:	eb000063 	bl	8600 <__retarget_lock_acquire_recursive>
    8470:	e59f310c 	ldr	r3, [pc, #268]	; 8584 <__call_exitprocs+0x134>
    8474:	e5938000 	ldr	r8, [r3]
    8478:	e5986148 	ldr	r6, [r8, #328]	; 0x148
    847c:	e3560000 	cmp	r6, #0
    8480:	0a000028 	beq	8528 <__call_exitprocs+0xd8>
    8484:	e3a09001 	mov	r9, #1
    8488:	e3a0a000 	mov	sl, #0
    848c:	e5964004 	ldr	r4, [r6, #4]
    8490:	e2545001 	subs	r5, r4, #1
    8494:	4a000023 	bmi	8528 <__call_exitprocs+0xd8>
    8498:	e2844001 	add	r4, r4, #1
    849c:	e0864104 	add	r4, r6, r4, lsl #2
    84a0:	ea000003 	b	84b4 <__call_exitprocs+0x64>
    84a4:	e2455001 	sub	r5, r5, #1
    84a8:	e3750001 	cmn	r5, #1
    84ac:	e2444004 	sub	r4, r4, #4
    84b0:	0a00001c 	beq	8528 <__call_exitprocs+0xd8>
    84b4:	e3570000 	cmp	r7, #0
    84b8:	0a000002 	beq	84c8 <__call_exitprocs+0x78>
    84bc:	e5943100 	ldr	r3, [r4, #256]	; 0x100
    84c0:	e1530007 	cmp	r3, r7
    84c4:	1afffff6 	bne	84a4 <__call_exitprocs+0x54>
    84c8:	e5963004 	ldr	r3, [r6, #4]
    84cc:	e5942000 	ldr	r2, [r4]
    84d0:	e2433001 	sub	r3, r3, #1
    84d4:	e1530005 	cmp	r3, r5
    84d8:	05865004 	streq	r5, [r6, #4]
    84dc:	1584a000 	strne	sl, [r4]
    84e0:	e3520000 	cmp	r2, #0
    84e4:	0affffee 	beq	84a4 <__call_exitprocs+0x54>
    84e8:	e5963188 	ldr	r3, [r6, #392]	; 0x188
    84ec:	e1a01519 	lsl	r1, r9, r5
    84f0:	e1110003 	tst	r1, r3
    84f4:	e596b004 	ldr	fp, [r6, #4]
    84f8:	1a000010 	bne	8540 <__call_exitprocs+0xf0>
    84fc:	e1a0e00f 	mov	lr, pc
    8500:	e12fff12 	bx	r2
    8504:	e5962004 	ldr	r2, [r6, #4]
    8508:	e152000b 	cmp	r2, fp
    850c:	1a000015 	bne	8568 <__call_exitprocs+0x118>
    8510:	e5983148 	ldr	r3, [r8, #328]	; 0x148
    8514:	e1530006 	cmp	r3, r6
    8518:	0affffe1 	beq	84a4 <__call_exitprocs+0x54>
    851c:	e1a06003 	mov	r6, r3
    8520:	e3560000 	cmp	r6, #0
    8524:	1affffd8 	bne	848c <__call_exitprocs+0x3c>
    8528:	e59f3050 	ldr	r3, [pc, #80]	; 8580 <__call_exitprocs+0x130>
    852c:	e5930000 	ldr	r0, [r3]
    8530:	eb000038 	bl	8618 <__retarget_lock_release_recursive>
    8534:	e28dd00c 	add	sp, sp, #12
    8538:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
    853c:	e12fff1e 	bx	lr
    8540:	e596018c 	ldr	r0, [r6, #396]	; 0x18c
    8544:	e1110000 	tst	r1, r0
    8548:	1a000008 	bne	8570 <__call_exitprocs+0x120>
    854c:	e59d0004 	ldr	r0, [sp, #4]
    8550:	e5941080 	ldr	r1, [r4, #128]	; 0x80
    8554:	e1a0e00f 	mov	lr, pc
    8558:	e12fff12 	bx	r2
    855c:	e5962004 	ldr	r2, [r6, #4]
    8560:	e152000b 	cmp	r2, fp
    8564:	0affffe9 	beq	8510 <__call_exitprocs+0xc0>
    8568:	e5986148 	ldr	r6, [r8, #328]	; 0x148
    856c:	eaffffeb 	b	8520 <__call_exitprocs+0xd0>
    8570:	e5940080 	ldr	r0, [r4, #128]	; 0x80
    8574:	e1a0e00f 	mov	lr, pc
    8578:	e12fff12 	bx	r2
    857c:	eaffffe0 	b	8504 <__call_exitprocs+0xb4>
    8580:	00018b88 	.word	0x00018b88
    8584:	00008718 	.word	0x00008718

00008588 <atexit>:
    8588:	e3a03000 	mov	r3, #0
    858c:	e92d4010 	push	{r4, lr}
    8590:	e1a01000 	mov	r1, r0
    8594:	e1a02003 	mov	r2, r3
    8598:	e1a00003 	mov	r0, r3
    859c:	eb00001e 	bl	861c <__register_exitproc>
    85a0:	e8bd4010 	pop	{r4, lr}
    85a4:	e12fff1e 	bx	lr

000085a8 <__libc_fini_array>:
    85a8:	e92d4070 	push	{r4, r5, r6, lr}
    85ac:	e59f5030 	ldr	r5, [pc, #48]	; 85e4 <__libc_fini_array+0x3c>
    85b0:	e59f4030 	ldr	r4, [pc, #48]	; 85e8 <__libc_fini_array+0x40>
    85b4:	e0454004 	sub	r4, r5, r4
    85b8:	e1b04144 	asrs	r4, r4, #2
    85bc:	0a000005 	beq	85d8 <__libc_fini_array+0x30>
    85c0:	e5353004 	ldr	r3, [r5, #-4]!
    85c4:	e2444001 	sub	r4, r4, #1
    85c8:	e1a0e00f 	mov	lr, pc
    85cc:	e12fff13 	bx	r3
    85d0:	e3540000 	cmp	r4, #0
    85d4:	1afffff9 	bne	85c0 <__libc_fini_array+0x18>
    85d8:	eb00003f 	bl	86dc <_fini>
    85dc:	e8bd4070 	pop	{r4, r5, r6, lr}
    85e0:	e12fff1e 	bx	lr
    85e4:	00018758 	.word	0x00018758
    85e8:	00018754 	.word	0x00018754

000085ec <__retarget_lock_init>:
    85ec:	e12fff1e 	bx	lr

000085f0 <__retarget_lock_init_recursive>:
    85f0:	e12fff1e 	bx	lr

000085f4 <__retarget_lock_close>:
    85f4:	e12fff1e 	bx	lr

000085f8 <__retarget_lock_close_recursive>:
    85f8:	e12fff1e 	bx	lr

000085fc <__retarget_lock_acquire>:
    85fc:	e12fff1e 	bx	lr

00008600 <__retarget_lock_acquire_recursive>:
    8600:	e12fff1e 	bx	lr

00008604 <__retarget_lock_try_acquire>:
    8604:	e3a00001 	mov	r0, #1
    8608:	e12fff1e 	bx	lr

0000860c <__retarget_lock_try_acquire_recursive>:
    860c:	e3a00001 	mov	r0, #1
    8610:	e12fff1e 	bx	lr

00008614 <__retarget_lock_release>:
    8614:	e12fff1e 	bx	lr

00008618 <__retarget_lock_release_recursive>:
    8618:	e12fff1e 	bx	lr

0000861c <__register_exitproc>:
    861c:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    8620:	e59f80a8 	ldr	r8, [pc, #168]	; 86d0 <__register_exitproc+0xb4>
    8624:	e1a04000 	mov	r4, r0
    8628:	e5980000 	ldr	r0, [r8]
    862c:	e1a06003 	mov	r6, r3
    8630:	e1a05001 	mov	r5, r1
    8634:	e1a07002 	mov	r7, r2
    8638:	ebfffff0 	bl	8600 <__retarget_lock_acquire_recursive>
    863c:	e59f3090 	ldr	r3, [pc, #144]	; 86d4 <__register_exitproc+0xb8>
    8640:	e5933000 	ldr	r3, [r3]
    8644:	e593c148 	ldr	ip, [r3, #328]	; 0x148
    8648:	e35c0000 	cmp	ip, #0
    864c:	0283cf53 	addeq	ip, r3, #332	; 0x14c
    8650:	e59ce004 	ldr	lr, [ip, #4]
    8654:	0583c148 	streq	ip, [r3, #328]	; 0x148
    8658:	e35e001f 	cmp	lr, #31
    865c:	ca000017 	bgt	86c0 <__register_exitproc+0xa4>
    8660:	e3540000 	cmp	r4, #0
    8664:	1a000008 	bne	868c <__register_exitproc+0x70>
    8668:	e28e3001 	add	r3, lr, #1
    866c:	e28ee002 	add	lr, lr, #2
    8670:	e58c3004 	str	r3, [ip, #4]
    8674:	e5980000 	ldr	r0, [r8]
    8678:	e78c510e 	str	r5, [ip, lr, lsl #2]
    867c:	ebffffe5 	bl	8618 <__retarget_lock_release_recursive>
    8680:	e3a00000 	mov	r0, #0
    8684:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    8688:	e12fff1e 	bx	lr
    868c:	e3a03001 	mov	r3, #1
    8690:	e08c110e 	add	r1, ip, lr, lsl #2
    8694:	e5817088 	str	r7, [r1, #136]	; 0x88
    8698:	e59c2188 	ldr	r2, [ip, #392]	; 0x188
    869c:	e1a03e13 	lsl	r3, r3, lr
    86a0:	e1822003 	orr	r2, r2, r3
    86a4:	e58c2188 	str	r2, [ip, #392]	; 0x188
    86a8:	e5816108 	str	r6, [r1, #264]	; 0x108
    86ac:	e3540002 	cmp	r4, #2
    86b0:	059c218c 	ldreq	r2, [ip, #396]	; 0x18c
    86b4:	01823003 	orreq	r3, r2, r3
    86b8:	058c318c 	streq	r3, [ip, #396]	; 0x18c
    86bc:	eaffffe9 	b	8668 <__register_exitproc+0x4c>
    86c0:	e5980000 	ldr	r0, [r8]
    86c4:	ebffffd3 	bl	8618 <__retarget_lock_release_recursive>
    86c8:	e3e00000 	mvn	r0, #0
    86cc:	eaffffec 	b	8684 <__register_exitproc+0x68>
    86d0:	00018b88 	.word	0x00018b88
    86d4:	00008718 	.word	0x00008718

000086d8 <_exit>:
    86d8:	eafffffe 	b	86d8 <_exit>

Disassembly of section .fini:

000086dc <_fini>:
    86dc:	e1a0c00d 	mov	ip, sp
    86e0:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    86e4:	e24cb004 	sub	fp, ip, #4
    86e8:	e24bd028 	sub	sp, fp, #40	; 0x28
    86ec:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    86f0:	e12fff1e 	bx	lr
