#define IOSET1         (*((volatile unsigned long *) 0xE0028014))
#define IODIR1         (*((volatile unsigned long *) 0xE0028018))
#define IOCLR1         (*((volatile unsigned long *) 0xE002801C))

void Delay() 
{
	unsigned int uiLoopCounter;
	
	for(uiLoopCounter = 0; uiLoopCounter < 50000; uiLoopCounter++)
	{
	}
}

int main(void)
{
	IODIR1 = 0xFF0000;
	
	while(1)
	{
		IOCLR1 = 0x10000;
		Delay();
		IOSET1 = 0x10000;
		Delay();
	}
}