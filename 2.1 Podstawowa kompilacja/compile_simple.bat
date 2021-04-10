@echo off
for %%f in ("%1") do set filename=%%~nf

arm-none-eabi-gcc -Wall -O0 -mcpu=arm7tdmi-s -marm  --specs=nosys.specs %1 -o %filename%.o  
