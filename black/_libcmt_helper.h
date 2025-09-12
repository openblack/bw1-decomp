#ifndef BW1_DECOMP__LIBCMT_HELPER_INCLUDED_H
#define BW1_DECOMP__LIBCMT_HELPER_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// win1.41 007db790 mac 106203fc operator new(unsigned long)
void* __cdecl operator_new(size_t size);
// win1.41 007c64ee mac inlined operator new(unsigned long, const char*, uint32_t)
void* __cdecl __nw__FUl(size_t size, const char* file_name, uint32_t line);
// win1.41 007aee98 mac 1061fbd4 operator delete(void* )
void __cdecl __dl__FPv(void* address);
// win1.41 008a6187 mac 101a84e4 operator new[](void *,unsigned int,int,void (__thiscall*)(void *),void (__thiscall*)(void *))
void __cdecl __construct_new_array(void* address, size_t stride, int len, void* constructor) asm("??_L@YGXPAXIHP6EX0@Z1@Z");
// win1.41 008a5f63 mac 101a7d90 operator delete[](void *,unsigned int,int,void (__thiscall*)(void *))
void __cdecl __destroy_new_array(void* address, size_t stride, int len, void* destructor) asm("??_M@YGXPAXIHP6EX0@Z@Z");
// win1.41 007c60db mac 00000000 _purecall(void)
void __cdecl _purecall(void);

#endif /* BW1_DECOMP__LIBCMT_HELPER_INCLUDED_H */
