#ifndef BW1_DECOMP_ROOTS_PILE_INCLUDED_H
#define BW1_DECOMP_ROOTS_PILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t */

// Forward Declares

class LH3DObject;

class RootsPile
{
public:
	RootsPile*  Next;     /* 0x0 */
	LH3DObject* Object;   /* 0x4 */
	int32_t     TimeLeft; /* 0x8 */

	// Constructors

	// BW1W120 008251f0 BW1M119 01047c90 (LHCombined Release)
	RootsPile(LH3DObject* object, long mesh);
};
static_assert(sizeof(RootsPile) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_ROOTS_PILE_INCLUDED_H */
