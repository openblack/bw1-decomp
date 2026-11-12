#ifndef BW1_DECOMP_BLACK_PCH_INCLUDED_H
#define BW1_DECOMP_BLACK_PCH_INCLUDED_H

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
	LHPoint points[2];
}
#endif

#endif /* BW1_DECOMP_BLACK_PCH_INCLUDED_H */
