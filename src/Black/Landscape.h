#ifndef BW1_DECOMP_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MapCoords.h" /* For struct MapCoords */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LHPoint.h>       /* For struct LHPoint */

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;
struct LHPoint;
struct MapCoords;
class Object;

struct GLandscape
{
	// Set by Open; TODO: original global name unknown.
	// BW1W120 00d99580
	static char Filename[];
	// Original names unrecovered. Paired draw arrays hold 3000 entries; insertion stops at 2999.
	// BW1W120 00d1a3ac
	static uint32_t DrawObjectActive[3000];
	// BW1W120 00d1d28c
	static Object* DrawObjects[3000];
	// BW1W120 00d20198
	static int DrawObjectCount;
	// Descriptive name; decremented when rebuilding the draw list.
	// BW1W120 00bf358c
	static int DrawListRebuildCount;
	// BW1W120 005e5280 BW1M119 01381d10
	void Close();

	LH3DTexture*  texture; /* 0x0 */
	LH3DMaterial* material;
	// BW1W120 005e55c0 BW1M119 013818e0
	~GLandscape();

	// Static methods

	// BW1W120 inlined BW1M119 0101c4a0
	static void ConvertLandscapePointToMapCoord(const LHPoint& point, MapCoords& coords);
	// BW1W120 inlined BW1M119 010aab80
	static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords& coords, LHPoint& point);
	// BW1W120 005e3f60 BW1M119 010204d0
	uint32_t PreDraw();
	// BW1W120 00613750 BW1M119 0104aef0
	// MSVC 6 inlines this. Inlined uses look like (esi=coords, eax=point):
	//     call LH3DIsland::GetAltitude
	//     fadds <spilled altitude>          fstps [point+4]
	//     fild [coords]     fmul __real@4@3ff2a000000000000000   fstps [point]
	//     fild [coords+4]   fmul __real@4@3ff2a000000000000000   fstps [point+8]
	// The scale must stay literal/literal: MSVC 6 folds it to one constant,
	// but `CellSize / ...` is not folded and emits a runtime fld+fmul.
	// LHPoint& is an out-param, not a Rule 2 retbuf; by-value costs a copy.
	static LHPoint* ConvertMapCoordToLandscapePoint(const MapCoords& coords, LHPoint& point)
	{
		float altitude;

		altitude = coords.Altitude();
		point.y = altitude + LH3DIsland::GetAltitude((const LH3DMapCoords&)coords);
		point.x = ((const LH3DMapCoords&)coords).WholeX() * (10.0f / (float)0x10000);
		point.z = ((const LH3DMapCoords&)coords).WholeZ() * (10.0f / (float)0x10000);
		return &point;
	}

	// Non-virtual methods

	// BW1W120 005e42e0 BW1M119 01050100
	void Draw();
	// BW1W120 005e52e0 BW1M119 01381950
	void Open(char* path);
};

// Free functions

void ClearLight(); // 005e57b0

// BW1W120 005e6540 BW1M119 01380c10
void GoolooGooloo(Object* object);

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
