#ifndef BW1_DECOMP_GJ_PRIMITIVE_INCLUDED_H
#define BW1_DECOMP_GJ_PRIMITIVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h>

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */

#include "GJBaseUtils.h" /* For class GJVector */

// Forward Declares

struct LH3DMaterial;
struct LH3DPrimitive;
struct LHMatrix;

struct UVCoord
{
	// BW1W120 inlined BW1M119 013fa6c0
	UVCoord() : U(0.0f), V(0.0f) {}

	float U; /* 0x0 */
	float V;
};
static_assert(sizeof(UVCoord) == 0x8, "Data type is of wrong size");

struct SLONGTriangle
{
	// BW1W120 0057d920 BW1M119 013fa990
	SLONGTriangle() : A(0), B(0), C(0) {}

	long A; /* 0x0 */
	long B;
	long C; /* 0x8 */
};
static_assert(sizeof(SLONGTriangle) == 0xc, "Data type is of wrong size");

class GJPrimitive
{
public:
	// BW1W120 0067ff20 BW1M119 014036d0
	GJPrimitive()
	{
		LightMap = 0;
		Material = NULL;
	}

	// BW1W120 0057d630 BW1M119 012c36d0
	void AddPoly(LH3DPrimitive* primitive, long triangle);
	// BW1W120 006c9000 BW1M119 01482e60
	void ComputeNormalsFromTriangles();
	// BW1W120 006c94a0 BW1M119 inlined
	long GetNumVertices();
	// BW1W120 006c9830 BW1M119 null
	void SetLightMap(uint32_t light_map);
	// BW1W120 006c98d0 BW1M119 inlined
	void GetBoundingBox(LHPoint* minima, LHPoint* maxima);
	// BW1W120 006c9b10 BW1M119 inlined
	void TransformAllPoints(const LHMatrix& matrix);

	LH3DMaterial*           Material;
	uint32_t                LightMap;
	GJVector<LHPoint>       Positions; /* 0x8 */
	GJVector<LH3DColor>     Colours;
	GJVector<LH3DColor>     Speculars;
	GJVector<UVCoord>       UVs; /* 0x44 */
	GJVector<UVCoord>       SecondUVs;
	GJVector<SLONGTriangle> Triangles; /* 0x6c */
	GJVector<LHPoint>       Normals;   /* 0x80 */
};
static_assert(sizeof(GJPrimitive) == 0x94, "Data type is of wrong size");

#endif /* BW1_DECOMP_GJ_PRIMITIVE_INCLUDED_H */
