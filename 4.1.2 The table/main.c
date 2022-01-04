#include "pin.h"

int main()
{
	Pin_Init();
	
	while(1)
	{
		Pin_Set();
	}
	
}
