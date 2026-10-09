#ifndef BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <re_common.h> /* For bool32_t */

// Forward Declares

struct LH3DColor;
struct LH3DMesh;
class LHFile;
struct LHMatrix;
struct LHPoint;

struct TextureRef
{
	uint16_t Position;
	uint16_t Age : 6;
	uint16_t : 2;
	uint16_t Type : 3;
	uint16_t SubType : 3;
	uint16_t Flags : 2;

	// Non-virtual methods

	// BW1W120 00867040 BW1M119 0106e190 (LHCombined Release)
	void DrawCutAroundIntersectionPoint(LH3DMesh* mesh, float param_2);
	// BW1W120 00866d00 BW1M119 0106e860 (LHCombined Release)
	void ColourIntersectionPoint(LH3DMesh* mesh, LH3DColor* colour, float param_3);
};

struct MeshIntersect
{
	// BW1W120 00865000 BW1M119 01070130 (LHCombined Release)
	static void InitialiseMeshIntersect();
	uint32_t    field_0x0;
	uint32_t    field_0x4;
	uint32_t    field_0x8;
	uint32_t    field_0xc;
	uint32_t    field_0x10;
	uint32_t    field_0x14;
	uint32_t    field_0x18;
	uint32_t    field_0x1c;
	uint32_t    field_0x20;
	uint32_t    field_0x24;

	// Non-virtual methods

	// BW1W120 00866a90 BW1M119 0106ed00 (LHCombined Release)
	void GetTextureRef(LH3DMesh* mesh, TextureRef* ref);
	// BW1W120 00866ba0 BW1M119 0106eae0 (LHCombined Release)
	void ObtainPointColour(LH3DMesh* mesh, unsigned long* colour);
	// BW1W120 00867c20 BW1M119 0106d370 (LHCombined Release)
	void ReadBinary(LHFile* file);
	// BW1W120 00865020 BW1M119 01035620 (LHCombined Release)
	bool32_t GetNearestIntersection(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* start, LHPoint* direction,
	                                bool param_5, LHPoint* param_6, LHPoint* param_7, bool param_8);
	// BW1W120 00867400 BW1M119 0106dce0 (LHCombined Release)
	void GetWorldPositionAndInwardNormal(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* position, LHPoint* normal);
};

struct CollideBox
{
	// Non-virtual methods

	// BW1W120 00867fe0 BW1M119 01047970 (LHCombined Release)
	void InitForCollision(LH3DMesh* mesh, LHMatrix* matrices);
	// BW1W120 008683c0 BW1M119 010ad410 (LHCombined Release)
	bool32_t GetImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal);
};

#endif /* BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H */
