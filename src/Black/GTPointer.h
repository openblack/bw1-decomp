#ifndef BW1_DECOMP_GT_POINTER_INCLUDED_H
#define BW1_DECOMP_GT_POINTER_INCLUDED_H

#include <assert.h>
#include <stddef.h>

// Non-owning pointer with a cached validation turn; member names reconstructed.
template <typename T> class GTPointer
{
public:
	unsigned long GameTurnValidated; /* 0x0 */
	T*            Pointer;           /* 0x4 */

	// BW1M100 10303f70 (GameThing): deliberately leaves the turn uninitialized.
	GTPointer() : Pointer(0) {}
};

static_assert(sizeof(GTPointer<int>) == 8, "GTPointer size is incorrect");
static_assert(offsetof(GTPointer<int>, Pointer) == 4, "GTPointer pointer offset is incorrect");

#endif /* BW1_DECOMP_GT_POINTER_INCLUDED_H */
