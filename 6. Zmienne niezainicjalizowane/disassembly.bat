@echo off
for %%f in ("%1") do set filename=%%~nf

arm-none-eabi-objdump -D %1 > %filename%.asm