#ifndef BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H
#define BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

class LH3DObject;

struct LH3DBoundingBox
{
	uint32_t       unknown; /* 0x0 */
	struct LHPoint centre;
	struct LHPoint size; /* 0x10 */
	float          DiagonalLength;

	// Non-virtual methods

	// BW1W120 00868c80 BW1M119 01027120 (LHCombined Release)
	void CheckRegionOnScreen(LH3DObject* object);
};
static_assert(sizeof(LH3DBoundingBox) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_BOUNDING_BOX_INCLUDED_H */
