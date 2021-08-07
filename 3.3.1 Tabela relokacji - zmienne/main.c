#include "lpc21xx.h"

char cByte;
short sHalfWord;
long lWord;

int main()
{
	while(1)
	{
		cByte -= 3;
		sHalfWord -= 5;
		lWord -= 7;
	}
}
