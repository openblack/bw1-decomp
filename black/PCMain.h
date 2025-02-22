#ifndef BW1_DECOMP_PC_MAIN_INCLUDED_H
#define BW1_DECOMP_PC_MAIN_INCLUDED_H

#include <stdbool.h> /* For bool */
#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// win1.41 00641a10 mac 1011c650 IsACmdLineString(char*, const char*)
bool __cdecl IsACmdLineString__FPcPCc(char* cmd_line, char* cmd);
// win1.41 00641aa0 mac 101528f0 ScanParameters(void)
void __stdcall ScanParameters__Fv(void);
// win1.41 007c64ee mac 106203fc operator new(unsigned long)
void* __cdecl operator_new(size_t size);
// win1.41 007db790 mac 106203fc operator new(unsigned long, const char*, uint32_t)
void* __cdecl __nw__FUl(size_t size, const char* file_name, uint32_t line);
// win1.41 007aee98 mac 1061fbd4 operator delete(void* )
void __cdecl __dl__FPv(void* address);
// win1.41 008a6187 mac 101a84e4 operator new[](void *,unsigned int,int,void (__thiscall*)(void *),void (__thiscall*)(void *)) - ??_L@YGXPAXIHP6EX0@Z1@Z
void __cdecl __construct_new_array(void* address, size_t stride, int len, void* constructor);
// win1.41 008a5f63 mac 101a7d90 operator delete[](void *,unsigned int,int,void (__thiscall*)(void *)) - ??_M@YGXPAXIHP6EX0@Z@Z
void __cdecl __destroy_new_array(void* address, size_t stride, int len, void* destructor);

#endif /* BW1_DECOMP_PC_MAIN_INCLUDED_H */
