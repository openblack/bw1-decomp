#ifndef BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H
#define BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

struct HairGroup;

struct LH3DObjectHair
{
	long        hair_count; /* 0x0 */
	HairGroup** hairs;

	// Non-virtual methods

	// BW1W120 00848340 BW1M100 10137b70 LH3DObjectHair::Init(long, HairGroup **)
	void Init(long param_2, HairGroup** param_3);
};

#endif /* BW1_DECOMP_LH3D_OBJECT_HAIR_INCLUDED_H */
