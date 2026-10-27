#ifndef BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H
#define BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "LHCoordF.h" /* For struct LHCoordF */
#include "LHPoint.h"  /* For struct LHPoint */

struct LH3DMesh;

#define LH3D_LOD_NO_PARENT -1

#define LH3D_LOD_NO_PRIMITIVE 0xffff

struct LH3DLODIndex
{
	int TVertex; /* 0x0 */
	int Vertex;
};
static_assert(sizeof(LH3DLODIndex) == 0x8, "Data type is of wrong size");

struct LH3DLODVertex
{
	int           Parent; /* 0x0 */
	LHCoordF      UV;
	LHPoint       Normal; /* 0xc */
	unsigned long Color;  /* 0x18 */
	uint16_t      PointIndex;
	uint16_t      PointPrimitive;

	// BW1W120 inlined BW1M119 0106d2e0 (LHCombined Release)
	LH3DLODVertex() {}
};
static_assert(sizeof(LH3DLODVertex) == 0x20, "Data type is of wrong size");

struct LH3DLODTVertex
{
	int           Parent; /* 0x0 */
	int           NumVertices;
	unsigned long ClipFlags;
	LHPoint       Position;    /* 0xc */
	LHPoint       Transformed; /* 0x18 */

	// BW1W120 inlined BW1M119 0106d310 (LHCombined Release)
	LH3DLODTVertex() {}
};
static_assert(sizeof(LH3DLODTVertex) == 0x24, "Data type is of wrong size");

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

#ifndef VERSION_BW1W100
	// BW1W120 00804ed0 BW1M119 0106bf10 (LHCombined Release)
	void InitialiseDefault(LH3DMesh* mesh);
#endif
	// BW1W120 00805cd0 BW1M119 0106b640 (LHCombined Release)
	void DrawLOD(LH3DMesh* mesh, int lod);
};

#endif /* BW1_DECOMP_LH3D_LOD_DATA_INCLUDED_H */
