@echo off
for %%f in ("%1") do set filename=%%~nf

arm-none-eabi-objdump -d %1 > %filename%.asm