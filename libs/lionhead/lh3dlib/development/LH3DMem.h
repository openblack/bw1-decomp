#ifndef BW1_DECOMP_LH3D_MEM_INCLUDED_H
#define BW1_DECOMP_LH3D_MEM_INCLUDED_H

#include <stddef.h> /* For size_t */
#include <stdint.h> /* For uint32_t */

#ifdef __cplusplus

struct LH3DMem
{
    // win1.41 00842ce0 mac 10139fb0 LH3DMem::Alloc(long)
    static void* Alloc(size_t size);
    // win1.41 00842d60 mac 100c8720 LH3DMem::Free(void)
    static void Free(void* mem);
};

// win1.41 007c64ee mac inlined operator new(unsigned long, const char*, uint32_t)
void* operator new(size_t size, const char* file, uint32_t line);

#else // __cplusplus

// win1.41 00842ce0 mac 10139fb0 LH3DMem::Alloc(long)
void* __cdecl Alloc__7LH3DMemFl(size_t size) asm("?Alloc@LH3DMem@@SAPAXJ@Z");
// win1.41 00842d60 mac 100c8720 LH3DMem::Free(void)
void __cdecl Free__7LH3DMemFPv(void* mem) asm("?Free@LH3DMem@@SAXPAX@Z");

#endif // __cplusplus

#endif /* BW1_DECOMP_LH3D_MEM_INCLUDED_H */
