#ifndef BW1_DECOMP_LH_WIN_INCLUDED_H
#define BW1_DECOMP_LH_WIN_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

// BW1W120 007db790 operator new(unsigned int, char const*, unsigned int)
void* operator new(size_t size, const char* file_name, uint32_t line);

// BW1W120 007db7a0 FreeMemory(void*)
void FreeMemory(void* block);

#endif /* BW1_DECOMP_LH_WIN_INCLUDED_H */
