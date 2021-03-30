
main.o:     file format elf32-littlearm


Disassembly of section .text:

00000000 <main>:
   0:	e92d4800 	push	{fp, lr}
   4:	e28db004 	add	fp, sp, #4
   8:	ebfffffe 	bl	0 <SetDir>
   c:	ebfffffe 	bl	0 <SetPin>
  10:	ebfffffe 	bl	0 <ClearPin>
  14:	eafffffc 	b	c <main+0xc>
