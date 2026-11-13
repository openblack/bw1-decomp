#ifndef BW1_DECOMP_LAND_FEATURE_INCLUDED_H
#define BW1_DECOMP_LAND_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include <re_common.h> /* For bool32_t */

class LH3DObject;
struct LHPoint;
class Object;

class EnumLH3DObjectOnBigSquare
{
public:
	// BW1W120 005e2a90 BW1M119 01380900
	static void __fastcall Init(unsigned long x, unsigned long z);
	// BW1W120 005e2c30 BW1M119 013805f0
	static LH3DObject* GetNext();
};

struct LandFeature
{
	uint8_t field_0x0[0x1];

	// Static methods

	// BW1W120 005e2d10 BW1M119 01030de0
	static void __fastcall DrawWorm(LHPoint* pos);
	// BW1W120 005e2f30 BW1M119 01024990
	static float GetNearClipping();
};

// BW1W120 005e2ff0 BW1M119 01380310
void RequestChangeTexture(Object* object);
// BW1W120 005e3770 BW1M119 01019300
void DesignedWaterFall();

// BW1W120 005e3260 BW1M119 0137fcc0
void RequestChangeTexture(LH3DObject* object);

// BW1W120 00d1a2f8
extern bool32_t ForceMinimumNearClipping;

#endif /* BW1_DECOMP_LAND_FEATURE_INCLUDED_H */
