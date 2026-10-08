#ifndef BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H
#define BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DMeshedObject.h" /* For struct LH3DMeshedObject */

// Forward Declares

struct SubMeshDrawData;

class LH3DStaticObject : public LH3DMeshedObject
{
public:
	// Virtual methods

	// BW1W120 0080f990 BW1M119 0107a7b0 (LHCombined Release)
	virtual void DrawLightMap(SubMeshDrawData* sub_mesh_data, int param_2, int param_3, int param_4, int param_5,
	                          bool param_6);

	// Constructors

	// BW1W120 00816540 BW1M119 01073430 (LHCombined Release)
	LH3DStaticObject();
};

#endif /* BW1_DECOMP_LH3D_STATIC_OBJECT_INCLUDED_H */
