#ifndef BW1_DECOMP_LH3D_MEM_INCLUDED_H
#define BW1_DECOMP_LH3D_MEM_INCLUDED_H

#include <stddef.h> /* For size_t */

// win1.41 00842ce0 mac 10139fb0 LH3DMem::Alloc(long)
void* __cdecl Alloc__7LH3DMemFl(size_t size) asm("?Alloc@LH3DMem@@SAPAXJ@Z");
// win1.41 00842d60 mac 100c8720 LH3DMem::Free(void)
void __cdecl Free__7LH3DMemFPv(void* mem) asm("?Free@LH3DMem@@SAXPAX@Z");

#endif /* BW1_DECOMP_LH3D_MEM_INCLUDED_H */
