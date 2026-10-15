#ifndef BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DPrimitive;
struct LHPoint;

enum LH3D_SUB_MESH_FLAGS
{
	// The sub-mesh's vertex groups are moved by the bones of the object's skeleton.
	LH3D_SUB_MESH_FLAGS_SKINNED = 0x1,
};

struct LH3DSubMesh
{
	uint32_t        flags_; /* 0x0 */
	int             NumPrimitives;
	LH3DPrimitive** primitives_;
	int             NumBones;
	uint8_t*        Bones; /* 0x10 */

	// BW1W120 00fa93bc BW1M119 012d3e1c (LHCombined Release)
	static LH3DSubMesh* g_current_sub_mesh;

	// Static methods

	// BW1W120 0087fa00 BW1M119 010bb180 (LHCombined Release)
	static void Create(const uint8_t* buffer, LH3DSubMesh* submesh);
	// BW1W120 0087fb20 BW1M119 010bb010 (LHCombined Release)
	static void ComputeBoundingBox(LH3DSubMesh* submesh, LHPoint* maxima, LHPoint* minima, int* initialized);

	// BW1W120 00849e60 BW1M119 0106d1b0 (LHCombined Release)
	long GetTriangleCount();
	// BW1W120 007acde0 BW1M119 inlined
	bool32_t HasBones();
};

#endif /* BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H */
