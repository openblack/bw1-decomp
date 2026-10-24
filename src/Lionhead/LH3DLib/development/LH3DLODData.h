#ifndef BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H
#define BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "LHCoordF.h" /* For struct LHCoordF */
#include "LHPoint.h"  /* For struct LHPoint */

// Forward Declares

struct LH3DMesh;

// The parent of a vertex or position that no collapse removes.
#define LH3D_LOD_NO_PARENT -1

// The point primitive of a vertex that DrawLOD has not made a point of yet.
#define LH3D_LOD_NO_PRIMITIVE 0xffff

// The position and the vertex of the mesh vertex with the same index.
struct LH3DLODIndex
{
	int TVertex; /* 0x0 */
	int Vertex;
};
static_assert(sizeof(LH3DLODIndex) == 0x8, "Data type is of wrong size");

// The attributes of a vertex. Collapsing an edge moves each vertex of one end onto its Parent at the other end.
struct LH3DLODVertex
{
	int           Parent; /* 0x0 */
	LHCoordF      UV;
	LHPoint       Normal; /* 0xc */
	unsigned long Color;  /* 0x18 */
	// The point DrawLOD made of the vertex while drawing the primitive PointPrimitive.
	uint16_t PointIndex;
	uint16_t PointPrimitive;

	// Constructors

	// BW1W120 inlined BW1M119 0106d2e0 (LHCombined Release)
	LH3DLODVertex() {}
};
static_assert(sizeof(LH3DLODVertex) == 0x20, "Data type is of wrong size");

// A position of the mesh, transformed once for all the vertices on it. Collapsing an edge moves one end onto its Parent,
// the other end.
struct LH3DLODTVertex
{
	int Parent; /* 0x0 */
	// The number of vertices left while this position is drawn.
	int           NumVertices;
	unsigned long ClipFlags;
	LHPoint       Position;    /* 0xc */
	LHPoint       Transformed; /* 0x18 */

	// Constructors

	// BW1W120 inlined BW1M119 0106d310 (LHCombined Release)
	LH3DLODTVertex() {}
};
static_assert(sizeof(LH3DLODTVertex) == 0x24, "Data type is of wrong size");

// The positions and vertices of a mesh, sorted by the edge collapses that simplify it: DrawLOD draws the first lod
// positions and moves every other one onto the position it collapsed into.
struct LH3DLODData
{
	int             NumIndices; /* 0x0 */
	LH3DLODIndex*   Indices;
	int             NumVertices;
	LH3DLODVertex*  Vertices;     /* 0xc */
	int             NumTVertices; /* 0x10 */
	LH3DLODTVertex* TVertices;
	int             MinLod; /* 0x18 */
	int             MaxLod;

	// Non-virtual methods

	// BW1W120 00804ed0 BW1M119 0106bf10 (LHCombined Release)
	void InitialiseDefault(LH3DMesh* mesh);
	// BW1W120 00805cd0 BW1M119 0106b640 (LHCombined Release)
	void DrawLOD(LH3DMesh* mesh, int lod);
};

#endif /* BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H */
