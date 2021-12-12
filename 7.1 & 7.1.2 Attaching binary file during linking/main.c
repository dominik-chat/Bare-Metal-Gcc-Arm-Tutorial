#include "lpc21xx.h"
#include <stdint.h>

// symbols handling rawdata
extern void * _binary_rawdata_bin_start;
extern void * _binary_rawdata_bin_size;

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
	uint32_t *rawdata = (uint32_t *)_binary_rawdata_bin_start;
	uint32_t rawdata_words = (uint32_t)_binary_rawdata_bin_size / sizeof(uint32_t);
	uint32_t word_ctr = 0;

	IO1DIR = 0xFF0000;
	
	while(1)
	{
		IO1CLR = 0xFF0000;
		IO1SET = rawdata[word_ctr++];
		if (word_ctr == rawdata_words){
			word_ctr = 0;
		}
		Delay();
	}
}
