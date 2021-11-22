@echo off

arm-none-eabi-objdump -t %1 > %1.tab
arm-none-eabi-objdump -r %1 > %1.map