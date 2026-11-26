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

// LH3DObject::SetPosition(const LHPoint&, float, float) and Point2D::Point2D(float, float) stood later
// in the original header's code than the classes they belong to: a unit whose own code ends before
// their place emits them last, SetPosition first (AnimatedStatic). Their definitions are held back
// until after the stand-in below. LH3DMapCoords's default constructor stood inside it, between the
// GCamera constructor and CantExitCurrentMode in Camera's own code: Camera emits it after ??_GGCamera.
#define BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H
#define BW1_DECOMP_POINT2D_INLINE_INCLUDED_H
#ifndef VERSION_BW1W100
#define BW1_DECOMP_LH3D_MAP_COORDS_INLINE_INCLUDED_H
#endif

// In 1.20 and 1.30 the <string> of GameThingWithPos.h gives this code, after LH3DObject.h's: Camera
// emits LHPoint's constructor before Zoomer::Update.
#if defined(VERSION_BW1W100) || defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
#include <Lionhead/LH3DLib/development/LH3DObject.h>

inline void BlackPCHCodeBeforeObject(float* values)
{
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
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

#undef BW1_DECOMP_LH3D_OBJECT_INLINE_INCLUDED_H
#undef BW1_DECOMP_POINT2D_INLINE_INCLUDED_H
#ifndef VERSION_BW1W100
#undef BW1_DECOMP_LH3D_MAP_COORDS_INLINE_INCLUDED_H
#endif

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
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#if defined(VERSION_BW1W110) || defined(VERSION_BW1WCI)
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
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#ifdef VERSION_BW1WCI
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#endif
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#endif
}

#include <Lionhead/LH3DLib/development/LH3DMapCoordsInline.h>

inline void BlackPCHCodeAfterLH3DMapCoords(float* values)
{
#ifndef VERSION_BW1WCI
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#endif
#if defined(VERSION_BW1W120) || defined(VERSION_BW1W130)
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
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
#endif
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
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
	BLACK_PCH_REPEAT_8(values[0] += values[1];)
}

// Splitting the stand-in and defining LH3DMapCoords's constructor outside its class add declarations ahead of
// every unit's own code, which moves c2's symbol-number tie-breaks (docs/msvc6_symbol_numbering.md). These
// enumerators make up a count that every unit's code matches with again.
enum BLACK_PCH_PADDING
{
	BLACK_PCH_PADDING_0,
	BLACK_PCH_PADDING_1,
	BLACK_PCH_PADDING_2,
	BLACK_PCH_PADDING_3,
	BLACK_PCH_PADDING_4,
	BLACK_PCH_PADDING_5,
	BLACK_PCH_PADDING_6,
	BLACK_PCH_PADDING_7,
	BLACK_PCH_PADDING_8,
	BLACK_PCH_PADDING_9,
	BLACK_PCH_PADDING_10,
	BLACK_PCH_PADDING_11,
	BLACK_PCH_PADDING_12,
	BLACK_PCH_PADDING_13,
	BLACK_PCH_PADDING_14,
	BLACK_PCH_PADDING_15,
	BLACK_PCH_PADDING_16,
	BLACK_PCH_PADDING_17,
	BLACK_PCH_PADDING_18,
	BLACK_PCH_PADDING_19,
	BLACK_PCH_PADDING_20,
	BLACK_PCH_PADDING_21,
	BLACK_PCH_PADDING_22,
	BLACK_PCH_PADDING_23,
	BLACK_PCH_PADDING_24,
#ifdef VERSION_BW1WCI
	BLACK_PCH_PADDING_25,
	BLACK_PCH_PADDING_26,
	BLACK_PCH_PADDING_27,
	BLACK_PCH_PADDING_28,
	BLACK_PCH_PADDING_29,
	BLACK_PCH_PADDING_30,
	BLACK_PCH_PADDING_31,
#endif
};
#else
inline void BlackPCHCodeAfterObject(LHPoint* points)
{
	BLACK_PCH_REPEAT_64(BLACK_PCH_REPEAT_64(points->x += points[1].y * points->z;))
}

inline void BlackPCHPointArray()
{
	new LHPoint[2];
}

// The same for LH3DMapCoords's constructor alone.
enum BLACK_PCH_PADDING
{
	BLACK_PCH_PADDING_0,
	BLACK_PCH_PADDING_1,
	BLACK_PCH_PADDING_2,
	BLACK_PCH_PADDING_3,
	BLACK_PCH_PADDING_4,
	BLACK_PCH_PADDING_5,
	BLACK_PCH_PADDING_6,
	BLACK_PCH_PADDING_7,
	BLACK_PCH_PADDING_8,
	BLACK_PCH_PADDING_9,
	BLACK_PCH_PADDING_10,
	BLACK_PCH_PADDING_11,
	BLACK_PCH_PADDING_12,
	BLACK_PCH_PADDING_13,
	BLACK_PCH_PADDING_14,
	BLACK_PCH_PADDING_15,
	BLACK_PCH_PADDING_16,
	BLACK_PCH_PADDING_17,
	BLACK_PCH_PADDING_18,
	BLACK_PCH_PADDING_19,
	BLACK_PCH_PADDING_20,
	BLACK_PCH_PADDING_21,
	BLACK_PCH_PADDING_22,
	BLACK_PCH_PADDING_23,
	BLACK_PCH_PADDING_24,
	BLACK_PCH_PADDING_25,
	BLACK_PCH_PADDING_26,
	BLACK_PCH_PADDING_27,
	BLACK_PCH_PADDING_28,
	BLACK_PCH_PADDING_29,
	BLACK_PCH_PADDING_30,
	BLACK_PCH_PADDING_31,
};
#endif

#include <Lionhead/LH3DLib/development/LH3DObjectInline.h>
#include <Lionhead/LH3DLib/development/Point2DInline.h>

#endif /* BW1_DECOMP_BLACK_PCH_INCLUDED_H */
