#ifndef BW1_DECOMP_LH3D_CITADEL_INCLUDED_H
#define BW1_DECOMP_LH3D_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DStaticMorphableObject.h" /* For struct LH3DStaticMorphableObject */

// Forward Declares

struct LH3DMesh;
struct LHPoint;

class LH3DCitadel : public LH3DStaticMorphableObject
{
public:
	uint8_t   field_0x84[0x18];
	float     Stage; /* 0x9c */
	uint8_t   field_0xa0[0xc];
	LH3DMesh* CitadelMesh; /* 0xac */
	uint8_t   field_0xb0[0x10];

	// Virtual methods

	// BW1W120 00882730 BW1M119 010414e0 (LHCombined Release)
	virtual void InitTemple(LHPoint* point, float percent_built, unsigned long player);
};

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
