#include "lpc21xx.h"

#define ODWROT

#ifdef ODWROT
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
#endif

#ifndef ODWROT
void SetDir()
{
	IODIR1 = 0x10000;
}

void SetPin()
{
	IOSET1 = 0x10000;
}

void ClearPin()
{
	IOCLR1 = 0x10000;
}
#endif


int main()
{
	SetDir();
	
	while(1)
	{
		SetPin();
		ClearPin();
	}
	
}