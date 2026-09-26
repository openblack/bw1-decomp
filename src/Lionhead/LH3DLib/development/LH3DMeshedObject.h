#ifndef BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DObject.h" /* For struct LH3DObject */

// Forward Declares

struct LH3DMesh;
struct LHPoint;

class LH3DMeshedObject : public LH3DObject
{
public:
	LH3DMesh* mesh; /* 0x7c */

	// Static methods

	// BW1W120 007f9d60 BW1M119 01029300 (LHCombined Release)
	void SetDrawWithGlobalAlpha(int value);
	// BW1W120 007f9fb0 BW1M119 0100bff0 (LHCombined Release)
	bool32_t __fastcall GetDoorPos(LHPoint* out_point) const;

	// Constructors

	// BW1W120 008164b0 BW1M119 010734b0 (LHCombined Release)
	LH3DMeshedObject();
};

#endif /* BW1_DECOMP_LH3D_MESHED_OBJECT_INCLUDED_H */
