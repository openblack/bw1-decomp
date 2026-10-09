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

	// Deliberately leaves the turn uninitialized (BW1M119 01305cc0 for GameThing).
	GTPointer() : Pointer(0) {}
	// BW1W120 inlined BW1M119 0130d090
	GTPointer operator=(T* pointer)
	{
		Pointer = pointer;
		if (Pointer)
		{
			SetGameTurnValidated();
		}
		return *this;
	}
	// BW1W120 inlined BW1M119 01407c20
	void SetGameTurnValidated();
	// BW1W120 inlined BW1M119 01022c70
	void ValidateGameTurn(unsigned char max_age) const {}
};

static_assert(sizeof(GTPointer<int>) == 8, "GTPointer size is incorrect");
static_assert(offsetof(GTPointer<int>, Pointer) == 4, "GTPointer pointer offset is incorrect");

#endif /* BW1_DECOMP_GT_POINTER_INCLUDED_H */
