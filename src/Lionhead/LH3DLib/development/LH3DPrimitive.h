#ifndef BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H
#define BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "LH3DMaterial.h" /* For struct LH3DMaterial */

// Forward Declares

struct LH3DVertex;
struct LH3DVertexGroup;
struct LHPoint;

struct LH3DPrimitive
{
	LH3DMaterial     Material;    /* 0x0 */
	int              NumVertices; /* 0x10 */
	LH3DVertex*      Vertices;
	int              NumTriangles;
	uint8_t*         Triangles;
	int              NumVertexGroups; /* 0x20 */
	LH3DVertexGroup* VertexGroups;
	int              NumBlends;
	uint8_t*         Blends;

	// Static methods

	// BW1W120 00807f30 BW1M100 1006ad00 LH3DPrimitive::ComputeBoundingBox(LHPoint&, LHPoint&, int&)
	static void ComputeBoundingBox(LH3DPrimitive* this, LHPoint* maxima, LHPoint* minima, int* initialized);
	// BW1W120 0084ab50 BW1M100 100a01f0 LH3DPrimitive::Create(unsigned char *, LH3DPrimitive *)
	static void Create(const uint8_t* buffer, LH3DPrimitive* primitive);
};

#endif /* BW1_DECOMP_LH3D_PRIMITIVE_INCLUDED_H */
