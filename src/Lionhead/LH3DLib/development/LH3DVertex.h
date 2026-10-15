#ifndef BW1_DECOMP_LH3D_VERTEX_INCLUDED_H
#define BW1_DECOMP_LH3D_VERTEX_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t */

#include "LHCoordF.h" /* For struct LHCoordF */
#include "LHPoint.h"  /* For struct LHPoint */

struct LH3DVertex
{
	struct LHPoint  position; /* 0x0 */
	struct LHCoordF uv;
	struct LHPoint  normal; /* 0x14 */
};
static_assert(sizeof(LH3DVertex) == 0x20, "Data type is of wrong size");

// A vertex transformed to the screen. Until it is projected, x, y and rhw hold its position in clipping space.
struct Vertex3D
{
	float           x; /* 0x0 */
	float           y;
	float           z;
	float           rhw; /* 0xc */
	unsigned long   color;
	unsigned long   specular;
	struct LHCoordF uv; /* 0x18 */
};
static_assert(sizeof(Vertex3D) == 0x20, "Data type is of wrong size");

// Vertex3D with a second set of texture coordinates, for multitexturing.
struct Vertex3DMT : Vertex3D
{
	struct LHCoordF uv2; /* 0x20 */
};
static_assert(sizeof(Vertex3DMT) == 0x28, "Data type is of wrong size");

// Moves a transformed vertex towards another one by Blend.
struct LH3DVertexBlending
{
	uint16_t Vertex; /* 0x0 */
	uint16_t Target;
	float    Blend; /* 0x4 */
};
static_assert(sizeof(LH3DVertexBlending) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_VERTEX_INCLUDED_H */
