#ifndef BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint8_t */

#include "LHMatrix.h" /* For struct LHMatrix */
#include "LHPoint.h"  /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

#define MESH_INTERSECT_MAX_POINTS    0x1000
#define MESH_INTERSECT_MAX_TRIANGLES 0x1000

// Forward Declares

struct LH3DColor;
struct LH3DMesh;
class LHFile;

struct TextureRef
{
	uint8_t  U; /* 0x0 */
	uint8_t  V;
	uint16_t Age : 6; /* 0x2 */
	uint16_t Skin : 2;
	uint16_t Type : 3;
	uint16_t SubType : 3;
	uint16_t Flags : 2;

	// Non-virtual methods

	// BW1W120 00866d00 BW1M119 0106e860 (LHCombined Release)
	void ColourIntersectionPoint(LH3DMesh* mesh, LH3DColor* colour, float amount);
	// BW1W120 00867040 BW1M119 0106e190 (LHCombined Release)
	void DrawCutAroundIntersectionPoint(LH3DMesh* mesh, float amount);
};
static_assert(sizeof(TextureRef) == 0x4, "Data type is of wrong size");

struct MeshIntersectData
{
	LHPoint* Points;       /* 0x0 */
	long*    Triangles;    /* 0x4 */
	long     NumTriangles; /* 0x8 */
};
static_assert(sizeof(MeshIntersectData) == 0xc, "Data type is of wrong size");

struct MeshIntersect
{
	long  Primitive; /* 0x0 */
	long  SubMesh;
	long  Vertices[3];     /* 0x8 */
	long  VertexGroups[3]; /* 0x14 */
	float U;               /* 0x20 */
	float V;

	// Static data

	// BW1W120 00f963c0 BW1M119 012a5a88 (LHCombined Release)
	static LHPoint WorldPoints[MESH_INTERSECT_MAX_POINTS];
	// BW1W120 00fa23c0 BW1M119 012b1a88 (LHCombined Release)
	static LHPoint WorldHitPos;
	// BW1W120 00f8a3c0 BW1M119 01299a88 (LHCombined Release)
	static long WorldTris[MESH_INTERSECT_MAX_TRIANGLES * 3];
	// BW1W120 00fa23d0 BW1M119 012b1a94 (LHCombined Release)
	static MeshIntersectData GMeshIntersect;

	// Static methods

	// BW1W120 00865000 BW1M119 01070130 (LHCombined Release)
	static void InitialiseMeshIntersect();
#ifndef VERSION_BW1W100
	// BW1W120 00865a20 BW1M119 0106fd80 (LHCombined Release)
	static void SetUpWorldPoints(LH3DMesh* mesh, const LHMatrix* matrices, MeshIntersectData* data);
	// BW1W120 00865d00 BW1M119 0106f7c0 (LHCombined Release)
	static bool32_t GetImpactPointAlex(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
	                                   MeshIntersectData* data, float max_dist);
	// BW1W120 00866260 BW1M119 0106f320 (LHCombined Release)
	static bool32_t GetImpactPoint(LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal,
	                               MeshIntersectData* data);
#endif

	// Non-virtual methods

	// BW1W120 00865020 BW1M119 01035620 (LHCombined Release)
	bool32_t GetNearestIntersection(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* start, LHPoint* direction,
	                                bool physics, LHPoint* position, LHPoint* normal, bool both_ways);
	// BW1W120 00866640 BW1M119 0106eea0 (LHCombined Release)
	bool32_t CreateFromTextureRef(LH3DMesh* mesh, LHMatrix* matrices, TextureRef* ref);
	// BW1W120 00866a90 BW1M119 0106ed00 (LHCombined Release)
	void GetTextureRef(LH3DMesh* mesh, TextureRef* ref);
	// BW1W120 00866ba0 BW1M119 0106eae0 (LHCombined Release)
	void ObtainPointColour(LH3DMesh* mesh, unsigned long* colour);
	// BW1W120 00867400 BW1M119 0106dce0 (LHCombined Release)
	void GetWorldPositionAndInwardNormal(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* position, LHPoint* normal);
	// BW1W120 00867740 BW1M119 0106d6d0 (LHCombined Release)
	void GetWorldPositionInwardNormalAndAverageMatrix(LH3DMesh* mesh, const LHMatrix* matrices, LHPoint* position,
	                                                  LHPoint* normal, LHMatrix* matrix);
	// BW1W120 00867b50 BW1M119 0106d580 (LHCombined Release)
	void WriteBinary(LHFile* file);
	// BW1W120 00867c20 BW1M119 0106d370 (LHCombined Release)
	void ReadBinary(LHFile* file);
};
static_assert(sizeof(MeshIntersect) == 0x28, "Data type is of wrong size");

struct CollideBox
{
	LHPoint  Min;
	LHPoint  Max;
	LHMatrix Matrix;
	LHMatrix InverseMatrix;

	// Non-virtual methods

	// BW1W120 00867fe0 BW1M119 01047970 (LHCombined Release)
	void InitForCollision(LH3DMesh* mesh, LHMatrix* matrices);
	// BW1W120 008683c0 BW1M119 010ad410 (LHCombined Release)
	bool32_t GetImpactPoint(LH3DMesh* mesh, LHPoint& start, LHPoint& direction, LHPoint& impact, LHPoint& normal);
};
static_assert(sizeof(CollideBox) == 0x78, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_MESH_INTERSECT_INCLUDED_H */
