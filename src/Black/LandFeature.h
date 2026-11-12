#ifndef BW1_DECOMP_LAND_FEATURE_INCLUDED_H
#define BW1_DECOMP_LAND_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

class LH3DObject;
class Object;

struct LandFeature
{
	uint8_t field_0x0[0x1];

	// Static methods

	// BW1W120 005e2f30 BW1M119 01024990
	static float GetNearClipping();
};

// BW1W120 005e2ff0 BW1M119 01380310
void RequestChangeTexture(Object* object);

// BW1W120 005e3260 BW1M119 0137fcc0
void RequestChangeTexture(LH3DObject* object);

// BW1W120 00d1a2f8
extern bool32_t ForceMinimumNearClipping;

#endif /* BW1_DECOMP_LAND_FEATURE_INCLUDED_H */
