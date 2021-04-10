#include "lpc21xx.h"

char cByte = 0x12;
short sHalfWord = 0x1234;
long Word = 0x12345678;

int main()
{
	while(1)
	{
		cByte++;
		sHalfWord++;
		Word++;
	}
}
