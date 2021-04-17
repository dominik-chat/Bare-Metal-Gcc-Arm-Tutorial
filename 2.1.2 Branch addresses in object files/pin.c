#include "lpc21xx.h"

void Pin_Init()
{
	IODIR1 = 0x10000;
}

void Pin_Clear()
{
	IOCLR1 = 0x10000;
}

void Pin_Set()
{
	IOSET1 = 0x10000;
}	
