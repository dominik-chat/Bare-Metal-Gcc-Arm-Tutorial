.extern main				// int main(void)
.extern Int_UndefinedInstruction	// Undefined Instruction Interrupt
.extern Int_SoftwareInterrupt		// Software Interrupt
.extern Int_ProgramAbort		// Program Abort Interrupt
.extern Int_DataAbort			// Data Abort Interrupt
.extern Int_FIQ				// FIQ Interrupt

.extern _etext			// .data beginning (ROM)
.extern _sdata			// .data beginning (RAM)
.extern _edata			// .data end (RAM)
.extern _sbss			// .bss begin
.extern _ebss			// .bss end
.extern _stack			// top of stack
	
// Stack sizes for special modes
.set  UND_STACK_SIZE, 0x00000004
.set  ABT_STACK_SIZE, 0x00000004
.set  FIQ_STACK_SIZE, 0x00000004
.set  IRQ_STACK_SIZE, 0x00000080
.set  SVC_STACK_SIZE, 0x00000080

// Modes definitions
.set  MODE_USR, 0x10		// User Mode
.set  MODE_FIQ, 0x11		// FIQ Mode
.set  MODE_IRQ, 0x12		// IRQ Mode
.set  MODE_SVC, 0x13		// Supervisor Mode
.set  MODE_ABT, 0x17		// Abort Mode
.set  MODE_UND, 0x1B		// Undefined Mode
.set  MODE_SYS, 0x1F		// System Mode

.set  I_BIT, 0x80		// IRQ disable bit
.set  F_BIT, 0x40		// FIQ disable bit

.section .init,"ax"

isr_vectors:
	ldr	pc, _start		// reset - start
	ldr	pc, _undf		// undefined - _undf
	ldr	pc, _swi		// SWI - _swi
	ldr	pc, _pabt		// program abort - _pabt
	ldr	pc, _dabt		// data abort - _dabt
	nop				// reserved
	ldr	pc, [pc,#-0xFF0]	// IRQ - VIC vector
	ldr	pc, _fiq		// FIQ - _fiq

_start:	.word	start
_undf:	.word	Int_UndefinedInstruction	// undefined
_swi:	.word	Int_SoftwareInterrupt		// SWI
_pabt:	.word	Int_ProgramAbort		// program abort
_dabt:	.word	Int_DataAbort			// data abort
_fiq:	.word 	Int_FIQ				// FIQ

start:
//Set stack for all modes
	ldr	r0, =_stack
	msr	CPSR_c, #MODE_UND|I_BIT|F_BIT // Undefined Instruction Mode
	mov	sp, r0
	sub	r0, r0, #UND_STACK_SIZE
	msr	CPSR_c, #MODE_ABT|I_BIT|F_BIT // Abort Mode
	mov	sp, r0
	sub	r0, r0, #ABT_STACK_SIZE
	msr	CPSR_c, #MODE_FIQ|I_BIT|F_BIT // FIQ Mode
	mov	sp, r0
	sub	r0, r0, #FIQ_STACK_SIZE
	msr	CPSR_c, #MODE_IRQ|I_BIT|F_BIT // IRQ Mode
	mov	sp, r0
	sub	r0, r0, #IRQ_STACK_SIZE
	msr	CPSR_c, #MODE_SVC|I_BIT|F_BIT // Supervisor Mode
	mov	sp, r0
	sub	r0, r0, #SVC_STACK_SIZE
	msr	CPSR_c, #MODE_SYS|I_BIT|F_BIT // System Mode
	mov	sp, r0

//Copy initialized data flash -> ram
	ldr	r1, =_etext		// Data begin (ROM)
	ldr	r2, =_sdata		// Data begin (RAM)
	ldr	r3, =_edata		// Data end (RAM)
1:	cmp	r2, r3			// Copy ROM -> RAM loop
	ldrlo	r0, [r1],#4
	strlo	r0, [r2],#4
	blo	1b

// Clear bss
	mov	r0, #0
	ldr	r1, =_sbss	  	// Uninitialized data begin
	ldr	r2, =_ebss		// Uninitialized data end
2:	cmp	r1, r2			// Uninitialized data clear loop
	strlo	r0, [r1],#4
	blo	2b
	
// Call _init function
	mov	r0, #0			// no parameters
	mov	r1, r0
	mov	r2, r0
	mov	r3, r0
	mov	fp, r0			// null frame pointer
	bl	main			// jump to int main(void)

_loop:
	//main returns here, return value is in r0
	b	_loop
	
