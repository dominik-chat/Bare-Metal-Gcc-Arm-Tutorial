#include "lpc21xx.h"

void ClearPin()
{
	IOCLR1 = 0x10000;
}

void SetPin()
{
	IOSET1 = 0x10000;
}	

void SetDir()
{
	IODIR1 = 0x10000;
}
