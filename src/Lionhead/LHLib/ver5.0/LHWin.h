#ifndef BW1_DECOMP_LH_WIN_INCLUDED_H
#define BW1_DECOMP_LH_WIN_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// 00e8c10c is LHSys::TheSystem.MessageHook, not separate storage.

#define LH_KEY_TO_ASCII_TABLE_SIZE 0x100

// BW1W120 00c3122c BW1M119 011db7a4 (LHCombined Release)
extern char LHKeyToAsciiTable[LH_KEY_TO_ASCII_TABLE_SIZE];

// BW1W120 007db770
extern "C" float __cdecl Atan2Positive(float x, float y);

// BW1W120 007db790
void* operator new(size_t size, const char* file_name, uint32_t line);

// TODO: address of the definition in the binary not yet identified.
void operator delete(void* block, const char* file_name, uint32_t line);

#ifndef ORIGINAL_LINE
#define ORIGINAL_LINE(line) (line)
#endif

#define NEW(line) new (__FILE__, ORIGINAL_LINE(line))

// BW1W120 007db7a0
void FreeMemory(void* block);

#endif /* BW1_DECOMP_LH_WIN_INCLUDED_H */
