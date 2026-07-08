#ifndef BW1_DECOMP_LEASH_INCLUDED_H
#define BW1_DECOMP_LEASH_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */

struct Leash
{
	struct LHPoint field_0x0;
	struct LHPoint field_0xc;
	float          field_0x18;
	struct LHPoint field_0x1c;
};
static_assert(sizeof(Leash) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_LEASH_INCLUDED_H */
