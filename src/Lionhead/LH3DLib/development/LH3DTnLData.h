#ifndef BW1_DECOMP_LH3D_TNL_DATA_INCLUDED_H
#define BW1_DECOMP_LH3D_TNL_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

// Forward Declares

struct IDirect3DVertexBuffer7;

// A primitive's hardware transform and lighting data: its vertex buffer and the triangles' indices into it.
struct LH3DTnLData
{
	IDirect3DVertexBuffer7* VertexBuffer; /* 0x0 */
	uint16_t*               Indices;
};
static_assert(sizeof(LH3DTnLData) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_TNL_DATA_INCLUDED_H */
