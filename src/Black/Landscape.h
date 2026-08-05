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

struct GLandscape
{
	LH3DTexture*  texture; /* 0x0 */
	LH3DMaterial* material;

	// Static methods

	// BW1W120 inlined BW1M100 100198f0 GLandscape::ConvertLandscapePointToMapCoord(LHPoint const &, MapCoords &)
	static void ConvertLandscapePointToMapCoord(const LHPoint* point, MapCoords* coords);
	// BW1W120 inlined BW1M100 106f5c34 GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
	static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords* coords, LHPoint* point);
	// BW1W120 005e3f60 BW1M100 1001d960 GLandscape::PreDraw(void)
	static uint32_t PreDraw();
	// BW1W120 00613750 BW1M100 1004aef0 GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
	// MSVC 6 inlines this. Inlined uses look like (esi=coords, eax=point):
	//     call LH3DIsland::GetAltitude
	//     fadds <spilled altitude>          fstps [point+4]
	//     fild [coords]     fmul __real@4@3ff2a000000000000000   fstps [point]
	//     fild [coords+4]   fmul __real@4@3ff2a000000000000000   fstps [point+8]
	// The scale must stay literal/literal: MSVC 6 folds it to one constant,
	// but `CellSize / ...` is not folded and emits a runtime fld+fmul.
	// LHPoint& is an out-param, not a Rule 2 retbuf; by-value costs a copy.
	static void ConvertMapCoordToLandscapePoint(const MapCoords& coords, LHPoint& point)
	{
		float altitude;

		altitude = coords.Altitude();
		point.y = altitude + LH3DIsland::GetAltitude((const LH3DMapCoords&)coords);
		point.x = ((const LH3DMapCoords&)coords).WholeX() * (10.0f / (float)0x10000);
		point.z = ((const LH3DMapCoords&)coords).WholeZ() * (10.0f / (float)0x10000);
	}

	// Non-virtual methods

	// BW1W120 005e42e0 BW1M100 1004d770 GLandscape::Draw(void)
	void Draw();
	// BW1W120 005e52e0 BW1M100 10379f50 GLandscape::Open(char *)
	void Open(const char* path);
};

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
