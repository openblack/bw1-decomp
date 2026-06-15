#ifndef BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H
#define BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uintptr_t */

struct GSaveLoadPtr
{
    uintptr_t ptr; /* 0x0 */

    // Constructors

    // win1.41 00562320 mac inlined GSaveLoadPtr::GSaveLoadPtr(void*)
    GSaveLoadPtr(void* ptr);
};

#endif /* BW1_DECOMP_SAVE_LOAD_PTR_INCLUDED_H */
