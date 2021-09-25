#include "lpc21xx.h"

void Pin_Init()
{
	IO1DIR = 0x10000;
}

void Pin_Clear()
{
	IO1CLR = 0x10000;
}

void Pin_Set()
{
	IO1SET = 0x10000;
}	
