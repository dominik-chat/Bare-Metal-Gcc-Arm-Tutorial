@echo off
for %%f in ("%1") do set filename=%%~nf

arm-none-eabi-objdump -s %1 > %filename%.txt