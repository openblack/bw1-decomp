#ifndef BW1_DECOMP_BLACK_PCH_INCLUDED_H
#define BW1_DECOMP_BLACK_PCH_INCLUDED_H

// Base and GAbodeInfo are first declared here, in each version's order, so that cl6 emits their RTTI
// in the image's order whatever the headers hold (docs/msvc6_pch.md).
#ifndef VERSION_BW1WCI
#if defined(VERSION_BW1W110) || defined(VERSION_BW1W120)
class GAbodeInfo;
class Base;
#else
class Base;
class GAbodeInfo;
#endif
#endif

// MaxFloat, MetresPerMapCell and LH3DLib's EighthScale and PI_OVER_2 are defined here, ahead of everything that
// holds code. A unit built with this header holds each of them only if it uses it: the constants then lead the
// unit's .rdata in this order, and the two statics are initialised first and in this order, yet laid out in
// .bss where the unit first uses them (docs/msvc6_pch.md). A unit that does not use one of the two statics in
// its own code does so by including its header.
#include "MaxFloat.h"
#include "MapCellConstants.h"

#include <Lionhead/LH3DLib/development/LH3DScaleConstants.h>
#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>

// Stand-ins for inline code the original header held and these headers lack so far: a unit emits
// the header's inline functions where its own code passes their place in the header's code
// (docs/msvc6_pch.md). Nothing calls these functions and no unit emits them.
#define BLACK_PCH_REPEAT_8(x)  x x x x x x x x
#define BLACK_PCH_REPEAT_64(x) BLACK_PCH_REPEAT_8(BLACK_PCH_REPEAT_8(x))

#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
inline void BlackPCHCodeBeforeObject(float* values)
{
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
}
#endif

#include "Object.h"

#ifdef VERSION_BW1W100
inline void BlackPCHCodeAfterObject(LHPoint* points)
{
	BLACK_PCH_REPEAT_64(BLACK_PCH_REPEAT_64(points->x += points[1].y * points->z;))
}

inline void BlackPCHPointArray()
{
	new LHPoint[2];
}
#endif

#endif /* BW1_DECOMP_BLACK_PCH_INCLUDED_H */
