#ifndef BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H
#define BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LH3DPrimitive.h" /* For struct LH3DPrimitive */

// Forward Declares

struct LHPoint;
struct TShadowInfo;

enum LH3D_SUB_MESH_FLAGS
{
	// The sub-mesh's vertex groups are moved by the bones of the object's skeleton.
	LH3D_SUB_MESH_FLAGS_SKINNED = 0x1,
};

// The fields packed into the flags of a sub mesh.
#define LH3D_SUB_MESH_STATUS_SHIFT  4
#define LH3D_SUB_MESH_STATUS_MASK   0x3f
#define LH3D_SUB_MESH_WINDOW_SHIFT  12
#define LH3D_SUB_MESH_PHYSICS_SHIFT 13
#define LH3D_SUB_MESH_LOD_SHIFT     29

struct LH3DSubMesh
{
	uint32_t        flags_; /* 0x0 */
	int             NumPrimitives;
	LH3DPrimitive** primitives_;
	int             NumBones;
	uint8_t*        Bones; /* 0x10 */

	// BW1W120 00fa93bc BW1M119 012d3e1c (LHCombined Release)
	static LH3DSubMesh* g_current_sub_mesh;
	// BW1W120 00fa93c0 BW1M119 012d3e18 (LHCombined Release)
	static uint32_t g_current_status;

	// Static methods

	// BW1W120 0087fa00 BW1M119 010bb180 (LHCombined Release)
	static void Create(uint8_t* buffer, LH3DSubMesh* submesh);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 010291e0 (LHCombined Release)
	uint32_t GetLod() { return flags_ >> LH3D_SUB_MESH_LOD_SHIFT; }
	// BW1W120 inlined BW1M119 010791d0 (LHCombined Release)
	LH3DPrimitive** GetListPtrPrimitive() { return primitives_; }
	// BW1W120 inlined BW1M119 inlined
	int GetPrimitiveCount() { return NumPrimitives; }
	// BW1W120 inlined BW1M119 01043750 (LHCombined Release)
	bool32_t IsWindow() { return (flags_ >> LH3D_SUB_MESH_WINDOW_SHIFT) & 1; }
	// BW1W120 inlined BW1M119 010648d0 (LHCombined Release)
	uint32_t GetStatus() { return (flags_ >> LH3D_SUB_MESH_STATUS_SHIFT) & LH3D_SUB_MESH_STATUS_MASK; }
	// BW1W120 inlined BW1M119 01079ee0 (LHCombined Release)
	bool IsPhysics() { return (flags_ >> LH3D_SUB_MESH_PHYSICS_SHIFT) & 1; }
	// BW1W120 inlined BW1M119 0100e660 (LHCombined Release)
	long GetVerticesCount()
	{
		long count = 0;
		for (int i = 0; i < NumPrimitives; i++)
		{
			count += primitives_[i]->GetVerticesCount();
		}
		return count;
	}
	// BW1W120 0087fa70 BW1M119 0100d350 (LHCombined Release)
	int __fastcall ComputeProjectedPoints(float* projected, TShadowInfo* shadow, float* depths);
	// BW1W120 0087fad0 BW1M119 0100d850 (LHCombined Release)
	void __fastcall DrawShadowPolys(uint8_t* buffer, long pitch, float* projected, TShadowInfo* shadow);
	// BW1W120 0087fb20 BW1M119 010bb010 (LHCombined Release)
	void __fastcall ComputeBoundingBox(LHPoint& maxima, LHPoint& minima, int& initialized);
	// BW1W120 00849e60 BW1M119 0106d1b0 (LHCombined Release)
	long GetTriangleCount();
	// BW1W120 007acde0 BW1M119 inlined
	bool32_t HasBones();
};

#endif /* BW1_DECOMP_LH3D_SUB_MESH_INCLUDED_H */
