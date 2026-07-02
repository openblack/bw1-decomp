#ifndef BW1_DECOMP_LH3D_MEM_INCLUDED_H
#define BW1_DECOMP_LH3D_MEM_INCLUDED_H

#include <stddef.h> /* For size_t */

struct LH3DMem
{
    // Static methods

    // BW1W120 00842ce0 BW1M100 10139fb0 LH3DMem::Alloc(long)
    static LH3DMem* Alloc(size_t size);
    // BW1W120 00842d60 BW1M100 100c8720 LH3DMem::Free(void)
    void Free();
};

#endif /* BW1_DECOMP_LH3D_MEM_INCLUDED_H */
