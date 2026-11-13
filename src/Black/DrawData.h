#ifndef BW1_DECOMP_DRAW_DATA_INCLUDED_H
#define BW1_DECOMP_DRAW_DATA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */

#include "CalculateDrawPosInfo.h" /* For class CalculateDrawPosInfo */

// Forward Declares

class AtomCore;

class DrawData
{
public:
	AtomCore*                   Atom;
	const CalculateDrawPosInfo* DrawPos;
	mutable LH3DColor           Colour;
	uint32_t                    Specular;
	long                        Frame;
	float                       Interpolation;
};
static_assert(offsetof(DrawData, Colour) == 0x8, "Data member is at wrong offset");
static_assert(offsetof(DrawData, Interpolation) == 0x14, "Data member is at wrong offset");
static_assert(sizeof(DrawData) == 0x18, "Data type is of wrong size");

#endif /* BW1_DECOMP_DRAW_DATA_INCLUDED_H */
