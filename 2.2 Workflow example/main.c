#include "lpc21xx.h"


int main()
{
	IODIR1 = 0x10000;
	
	while(1)
	{
		IOSET1 = 0x10000;
		IOCLR1 = 0x10000;
	}
}
