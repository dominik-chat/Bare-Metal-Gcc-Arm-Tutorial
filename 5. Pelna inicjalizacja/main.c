#include "lpc21xx.h"

void Delay() 
{
	unsigned int uiLoopCounter;
	
	for(uiLoopCounter = 0; uiLoopCounter < 500000; uiLoopCounter++)
	{
	}
}

int main()
{
	InitPLL(5, PLLCFG_P_2_bm);
	InitMAM(4);
	
	IO1DIR = 0xFF0000;
	
	while(1)
	{
		IO1CLR = 0x10000;
		Delay();
		IO1SET = 0x10000;
		Delay();
	}
}