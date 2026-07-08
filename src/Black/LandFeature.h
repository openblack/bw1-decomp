#ifndef BW1_DECOMP_LAND_FEATURE_INCLUDED_H
#define BW1_DECOMP_LAND_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LandFeature
{
	uint8_t field_0x0[0x1];

	// Static methods

	// BW1W120 005e2f30 BW1M100 10021e20 LandFeature::GetNearClipping(void)
	static float GetNearClipping();
};

#endif /* BW1_DECOMP_LAND_FEATURE_INCLUDED_H */
