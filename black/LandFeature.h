#ifndef BW1_DECOMP_LAND_FEATURE_INCLUDED_H
#define BW1_DECOMP_LAND_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

struct LandFeature
{
  uint8_t field_0x0[0x1];
};
static_assert(sizeof(struct LandFeature) == 0x1, "Data type is of wrong size");

// Static methods

// win1.41 005e2f30 mac 10021e20 LandFeature::GetNearClipping(void)
float __stdcall GetNearClipping__11LandFeatureFv(void);

#endif /* BW1_DECOMP_LAND_FEATURE_INCLUDED_H */
