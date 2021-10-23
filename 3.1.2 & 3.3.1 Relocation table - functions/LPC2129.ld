/* For 3.3.1 Entry is isr_vectors */
ENTRY(main)
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
		KEEP(*(.init))				/* wektory przerwan i init */
	}
	. = ALIGN(4);
  
	.text :
	{       	
		*(.text)                   /* caly kod */
		*(.rodata)                 /* stale */
		*(.rodata*)
		*(.glue_7)
		*(.glue_7t)
	} > ROM
	. = ALIGN(4);
  
	_etext = . ;

	/* zmienne z ustalona wartoscia */
	.data :
	{
		_data = .;
		*(.data)
	} > RAM AT> ROM
	. = ALIGN(4);

	_edata = . ;

	/* zmienne bez ustalonej wartosci */
	.bss (NOLOAD) :
	{
		_bss_start = . ;
		*(.bss)
		*(COMMON)
		. = ALIGN(4);
	} > RAM
	. = ALIGN(4);
	
	_bss_end = . ;

	.stack :
	{
		. = ALIGN(256);
		. += STACK_SIZE;
		PROVIDE (_stack = .);
	} > RAM

	_end = . ;
}
