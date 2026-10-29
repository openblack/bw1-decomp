#ifndef BW1_DECOMP_LH3D_MESH_FOOTPRINT_INCLUDED_H
#define BW1_DECOMP_LH3D_MESH_FOOTPRINT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "LHCoordF.h" /* For struct LHCoordF */

struct LH3DMeshFootprintTriangle
{
	LHCoordF Points[3];
	float    field_0x18[6];
};
static_assert(sizeof(LH3DMeshFootprintTriangle) == 0x30, "Data type is of wrong size");

struct LH3DMeshFootprint
{
	int                Width;
	int                Height;
	uint32_t           field_0x8;
	uint16_t*          Pixels;
	LH3DMeshFootprint* Previous;
	int                NumTriangles;
};
static_assert(sizeof(LH3DMeshFootprint) == 0x18, "Data type is of wrong size");

struct LH3DMeshFootprintData
{
	uint32_t           Count;
	LH3DMeshFootprint* First;
	uint32_t           Size;
};

#endif /* BW1_DECOMP_LH3D_MESH_FOOTPRINT_INCLUDED_H */
