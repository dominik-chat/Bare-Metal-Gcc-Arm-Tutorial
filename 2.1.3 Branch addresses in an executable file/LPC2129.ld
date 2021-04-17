/* Prosty skrypt linkujacy LPC2129 */

ENTRY(main)

MEMORY
{
	ROM (rx) : ORIGIN = 0x00000000, LENGTH = 0x0003E000
	RAM (rw) : ORIGIN = 0x40000000, LENGTH = 0x00004000
}

SECTIONS
{
	.text :
	{       	
		*(.text)                   
	} > ROM
	. = ALIGN(4);
  
	.data :
	{
		*(.data)
	} > RAM AT> ROM
	. = ALIGN(4);

	.bss (NOLOAD) :
	{
		*(.bss)
		. = ALIGN(4);
	} > RAM
}
