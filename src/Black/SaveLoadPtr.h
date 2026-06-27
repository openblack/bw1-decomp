#ifndef BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H
#define BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

struct GSaveLoadPtr
{
    uintptr_t ptr; /* 0x0 */

    // Constructors

    // BW1W120 00562320 BW1M100 inlined GSaveLoadPtr::GSaveLoadPtr(void*)
    GSaveLoadPtr(void* ptr);
};

#endif /* BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H */
