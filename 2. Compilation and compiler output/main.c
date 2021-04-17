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

char cLedState = 1;

int main()
{
	Pin_Init();
	
	while(1)
	{
		if(cLedState == 1)
		{
			Pin_Set();
		}
		else
		{
			Pin_Clear();
		}
	cLedState = ~cLedState;
	}
}
