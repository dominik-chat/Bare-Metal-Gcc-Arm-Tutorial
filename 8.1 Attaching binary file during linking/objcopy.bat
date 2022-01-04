arm-none-eabi-objcopy -I binary -O elf32-littlearm --rename-section .data=.rawdata rawdata.bin rawdata.o
