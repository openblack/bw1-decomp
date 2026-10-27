#ifndef BW1_DECOMP_SUB_MESH_DRAW_DATA_INCLUDED_H
#define BW1_DECOMP_SUB_MESH_DRAW_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHMatrix.h"  /* For struct LHMatrix */

struct LH3DMaterial;

enum SUB_MESH_DRAW_TYPE
{
	SUB_MESH_DRAW_TYPE_HIDDEN = 0,
	SUB_MESH_DRAW_TYPE_UV_REMAP = 2,
};

struct SubMeshDrawData
{
	int                SubMeshIndex; /* 0x0 */
	SUB_MESH_DRAW_TYPE Type;
	LH3DColor          Color;
	LH3DColor          Specular;
	LHMatrix           Matrix;   /* 0x10 */
	LH3DMaterial*      Material; /* 0x40 */
	float              RemapMinU;
	float              RemapMinV;
	float              RemapMaxU;
	float              RemapMaxV; /* 0x50 */
	LH3DColor          field_0x54;
	uint32_t           field_0x58;
	uint32_t           field_0x5c;
};
static_assert(sizeof(SubMeshDrawData) == 0x60, "Data type is of wrong size");

#endif /* BW1_DECOMP_SUB_MESH_DRAW_DATA_INCLUDED_H */
