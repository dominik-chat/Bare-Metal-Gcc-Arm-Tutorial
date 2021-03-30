#include "led.h"

int main()
{
	SetDir();
	
	while(1)
	{
		SetPin();
		ClearPin();
	}
	
}