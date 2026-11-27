#ifndef BW1_DECOMP_GJ_MESH_INCLUDED_H
#define BW1_DECOMP_GJ_MESH_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */

#include "GJBaseUtils.h" /* For class GJArray */
#include "GJPrimitive.h" /* For class GJPrimitive */

#define GJ_MESH_BOUNDS_LIMIT 10000000.0f

// Forward Declares

struct LH3DBoundingBox;
struct LH3DMesh;
struct LHMatrix;

class GJSubMesh
{
public:
	// BW1W120 006c9310 BW1M119 inlined
	void ComputeNormalsFromTriangles();
	// BW1W120 006c94b0 BW1M119 inlined
	long GetNumVertices();
	// BW1W120 006c99a0 BW1M119 inlined
	void GetBoundingBox(LHPoint* minima, LHPoint* maxima);
	// BW1W120 006c9b90 BW1M119 inlined
	void TransformAllPoints(const LHMatrix& matrix);
	// BW1W120 006c9c00 BW1M119 null
	void SetLightMap(uint32_t light_map);

	GJArray<GJPrimitive> Primitives;
};
static_assert(sizeof(GJSubMesh) == 0x8, "Data type is of wrong size");

class GJMesh
{
public:
	// BW1W120 006c8cf0 BW1M119 01483210
	static void CopyGJMesh(const GJMesh& source, GJMesh* dest);

	// BW1W120 006c9340 BW1M119 01482da0
	void ComputeNormalsFromTriangles();
	// BW1W120 006c9370 BW1M119 null
	void GetCentre(LHPoint* centre);
	// BW1W120 006c9470 BW1M119 01482cd0
	long GetNumVertices();
	// BW1W120 006c94f0 BW1M119 01482a10
	void CopyFromLH3DMesh(LH3DMesh* mesh, bool copy_normals, bool copy_colours);
	// BW1W120 006c99e0 BW1M119 014827f0
	void GetBoundingBox(LH3DBoundingBox* bounding_box);
	// BW1W120 006c9bd0 BW1M119 014826a0
	void TransformAllPoints(const LHMatrix& matrix);
	// BW1W120 006c9c40 BW1M119 null
	void SetLightMap(uint32_t light_map);

	GJArray<GJSubMesh> SubMeshes;
};
static_assert(sizeof(GJMesh) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_GJ_MESH_INCLUDED_H */
