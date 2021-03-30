ENTRY(isr_vectors)
STACK_SIZE = 0x400;

/* Definicja pamieci LPC2129 */
MEMORY
{
	ROM (rx) : ORIGIN = 0x00000000, LENGTH = 0x0003E000
	RAM (rw) : ORIGIN = 0x40000000, LENGTH = 0x00004000
}

/* Section Definitions */
SECTIONS
{
	.init :
	{
		KEEP(*(.init))
	}
	. = ALIGN(4);
  
	.text :
	{
		KEEP(*(.init))            	/* Startup code */
		*(.text)                   /* remaining code */
		*(.rodata)                 /* read-only data (constants) */
		*(.rodata*)
		*(.glue_7)
		*(.glue_7t)
	} > ROM
	. = ALIGN(4);
  
	_etext = . ;

	/* .data section which is used for initialized data */
	.data :
	{
		_data = .;
		KEEP(*(.data))
	} > RAM AT> ROM
	. = ALIGN(4);

	_edata = . ;

	/* .bss section which is used for uninitialized data */
	.bss (NOLOAD) :
	{
		_bss_start = . ;
		*(.bss)
		*(COMMON)
		. = ALIGN(4);
	} > RAM
	. = ALIGN(4);
	
	_bss_end = . ;

	/* .stack ALIGN(256) : */
	.stack :
	{
		. = ALIGN(256);
		. += STACK_SIZE;
		PROVIDE (_stack = .);
	} > RAM

	_end = . ;
}
