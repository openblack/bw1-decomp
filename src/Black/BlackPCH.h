#ifndef BW1_DECOMP_BLACK_PCH_INCLUDED_H
#define BW1_DECOMP_BLACK_PCH_INCLUDED_H

// Base and GAbodeInfo, and GameThingWithPos and GArena, are first declared here, in each version's
// order, so that cl6 emits their RTTI in the image's order whatever the headers hold
// (docs/msvc6_pch.md).
#ifndef VERSION_BW1WCI
#if defined(VERSION_BW1W110) || defined(VERSION_BW1W120)
class GAbodeInfo;
class Base;
#else
class Base;
class GAbodeInfo;
#endif
#endif
#ifdef VERSION_BW1W110
class GArena;
class GameThingWithPos;
#else
class GameThingWithPos;
class GArena;
#endif

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

// LH3DObject::SetPosition(const LHPoint&, float, float) and Point2D::Point2D(float, float) stood later
// in the original header's code than the classes they belong to: a unit whose own code ends before
// their place emits them last, SetPosition first (AnimatedStatic). Their definitions are held back
// until after the stand-in below.
#define BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H
#define BW1_DECOMP_POINT2D_INLINE_INCLUDED_H

#include "Object.h"

#undef BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H
#undef BW1_DECOMP_POINT2D_INLINE_INCLUDED_H

#ifndef VERSION_BW1W100
inline void BlackPCHCodeAfterObject(float* values)
{
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
	BLACK_PCH_REPEAT_64(values[0] += values[1];)
}
#else
inline void BlackPCHCodeAfterObject(LHPoint* points)
{
	BLACK_PCH_REPEAT_64(BLACK_PCH_REPEAT_64(points->x += points[1].y * points->z;))
}

inline void BlackPCHPointArray()
{
	new LHPoint[2];
}
#endif

#include <Lionhead/LH3DLib/development/LH3DObjectInline.h>
#include <Lionhead/LH3DLib/development/Point2DInline.h>

#endif /* BW1_DECOMP_BLACK_PCH_INCLUDED_H */
