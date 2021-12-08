#include "lpc21xx.h"

/* Around 500ms delay */
void Delay() 
{
	unsigned int uiLoopCounter;
	
	for(uiLoopCounter = 0; uiLoopCounter < 100000; uiLoopCounter++)
	{
	}
}

int main()
{
	IO1DIR = 0xFF0000;
	
	while(1)
	{
		IO1CLR = 0x10000;
		Delay();
		IO1SET = 0x10000;
		Delay();
	}
}
