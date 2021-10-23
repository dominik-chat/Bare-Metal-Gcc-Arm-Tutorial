#include "pin.h"

int main()
{
	Pin_Init();
	
	while(1)
	{
		Pin_Set();
//		Pin_Clear(); //For 3.3.1 uncomment this line
	}
	
}
