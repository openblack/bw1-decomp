#ifndef BW1_DECOMP_LH3D_VB_INCLUDED_H
#define BW1_DECOMP_LH3D_VB_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "LHCoordF.h" /* For struct LHCoordF */
#include "LHPoint.h"  /* For struct LHPoint */

// A vertex of the dynamic vertex buffers, laid out as a D3DVERTEX: Direct3D transforms and lights it.
struct LH3DVBVertex
{
	struct LHPoint  position; /* 0x0 */
	struct LHPoint  normal;   /* 0xc */
	struct LHCoordF uv;       /* 0x18 */
};
static_assert(sizeof(LH3DVBVertex) == 0x20, "Data type is of wrong size");

// The dynamic vertex buffers.
struct LH3DVB
{
	// BW1W120 008846d0 BW1M119 010caaf0 (LHCombined Release)
	static void* Lock(int vertex_count);
	// BW1W120 00884750 BW1M119 010ca880 (LHCombined Release)
	static void UnlockAndDraw(int vertex_count, uint16_t* indices, int index_count);
};

#endif /* BW1_DECOMP_LH3D_VB_INCLUDED_H */
