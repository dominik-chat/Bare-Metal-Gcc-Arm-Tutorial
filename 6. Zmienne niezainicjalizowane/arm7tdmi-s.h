#ifndef ARM7TDMI_S
#define ARM7TDMI_S

//taka funkcja ma nizszy priorytet niz zwykla funkcja o tej samej nazwie
#define _weak __attribute__ ((weak))	

//ten atrybut pozwala kompilatorowi w poprawny sposob zbudowac procedure przerwania
//poprawne wartosci to: IRQ, FIQ, SWI, ABORT, UNDEF.
#define _interrupt(type) __attribute__ ((interrupt ("type")))

_weak _interrupt(UNDEF) void Int_UndefinedInstruction(void);
_weak _interrupt(SWI) void Int_SoftwareInterrupt(void);
_weak _interrupt(ABORT) void Int_ProgramAbort(void);
_weak _interrupt(ABORT) void Int_DataAbort(void);
_weak _interrupt(FIQ) void Int_FIQ(void);

#endif