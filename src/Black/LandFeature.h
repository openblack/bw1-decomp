#ifndef BW1_DECOMP_LAND_FEATURE_INCLUDED_H
#define BW1_DECOMP_LAND_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

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

#endif /* BW1_DECOMP_LAND_FEATURE_INCLUDED_H */
