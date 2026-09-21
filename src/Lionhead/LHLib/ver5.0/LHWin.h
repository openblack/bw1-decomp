#ifndef BW1_DECOMP_LH_WIN_INCLUDED_H
#define BW1_DECOMP_LH_WIN_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// 00e8c10c is LHSys::TheSystem.MessageHook, not separate storage.

// BW1W120 007db790
void* operator new(size_t size, const char* file_name, uint32_t line);

// TODO: address of the definition in the binary not yet identified.
void operator delete(void* block, const char* file_name, uint32_t line);

// BW1W120 007db7a0
void FreeMemory(void* block);

#endif /* BW1_DECOMP_LH_WIN_INCLUDED_H */
