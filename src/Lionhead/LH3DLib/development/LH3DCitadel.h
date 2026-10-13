#ifndef BW1_DECOMP_LH3D_CITADEL_INCLUDED_H
#define BW1_DECOMP_LH3D_CITADEL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DStaticMorphableObject.h" /* For struct LH3DStaticMorphableObject */

// Forward Declares

struct LH3DMesh;

class LH3DCitadel : public LH3DStaticMorphableObject
{
public:
	uint8_t   field_0x84[0x28];
	LH3DMesh* CitadelMesh; /* 0xac */
	uint8_t   field_0xb0[0x10];
};

#endif /* BW1_DECOMP_LH3D_CITADEL_INCLUDED_H */
