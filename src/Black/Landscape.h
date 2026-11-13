#ifndef BW1_DECOMP_LANDSCAPE_INCLUDED_H
#define BW1_DECOMP_LANDSCAPE_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t */
#include <re_common.h> /* For bool32_t */

#include "MapCoords.h" /* For struct MapCoords */

#include <Lionhead/LH3DLib/development/LH3DIsland.h>    /* For LH3DIsland */
#include <Lionhead/LH3DLib/development/LH3DMapCoords.h> /* For struct LH3DMapCoords */
#include <Lionhead/LH3DLib/development/LHPoint.h>       /* For struct LHPoint */

#define GLANDSCAPE_MAX_DRAW_OBJECTS 3000

// Forward Declares

struct LH3DMaterial;
struct LH3DTexture;
struct LHCoord;
struct LHPoint;
struct MapCoords;
class Object;

struct GLandscape
{
	// Set by Open; TODO: original global name unknown.
	// BW1W120 00d99580
	static char Filename[];
	// BW1W120 00d1a3ac
	static uint32_t DrawObjectActive[GLANDSCAPE_MAX_DRAW_OBJECTS];
	// BW1W120 00d1d28c
	static Object* DrawObjects[GLANDSCAPE_MAX_DRAW_OBJECTS];
	// BW1W120 00d20198
	static int DrawObjectCount;
	// BW1W120 00bf358c
	static int DrawListRebuildCount;
	// BW1W120 005e5280 BW1M119 01381d10
	void Close();

	LH3DTexture*  texture; /* 0x0 */
	LH3DMaterial* material;
	// BW1W120 005e55c0 BW1M119 013818e0
	~GLandscape();

	// Static methods

	// BW1W120 005e5bd0 BW1M119 013813c0
	static void ConvertJustMapXZToLandscapePoint(const JustMapXZ& xz, LHPoint& point);
	// BW1W120 006137f0 BW1M119 0101c4a0
	static void ConvertLandscapePointToMapCoord(const LHPoint& point, MapCoords& coords)
	{
		coords.x = (LH3DMapCoordsFull)(point.x / (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL));
		coords.z = (LH3DMapCoordsFull)(point.z / (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL));
		coords.altitude = 0.0f;
	}
	// BW1W120 inlined BW1M119 01056c70
	static void ConvertLHPointToMapCoord(const LHPoint& point, MapCoords& coords)
	{
		coords.SetWholeX((long)(point.x * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
		coords.SetWholeZ((long)(point.z * MAP_COORDS_UNITS_PER_CELL / MAP_COORDS_METRES_PER_CELL));
		coords.SetAltitude(point.y - LH3DIsland::GetAltitude(point));
	}
	// BW1W120 inlined BW1M119 010aab80
	static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords& coords, LHPoint& point)
	{
		point.x = ((const LH3DMapCoords&)coords).WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		point.z = ((const LH3DMapCoords&)coords).WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		point.y = coords.Altitude();
	}
	// BW1W120 005e3f60 BW1M119 010204d0
	uint32_t PreDraw();
	// Inliner IL size: 81
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
		point.x = ((const LH3DMapCoords&)coords).WholeX() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		point.z = ((const LH3DMapCoords&)coords).WholeZ() * (MAP_COORDS_METRES_PER_CELL / MAP_COORDS_UNITS_PER_CELL);
		return &point;
	}

	// Non-virtual methods

	// BW1W120 005e42e0 BW1M119 01050100
	uint32_t Draw();
	// BW1W120 005e52e0 BW1M119 01381950
	void Open(char* path);
	// BW1W120 005e5620 BW1M119 0102bc30
	bool32_t __fastcall GetLHPointFromScreenCoord(LHCoord* coord, LHPoint* point, float* depth);
	// BW1W120 005e5740 BW1M119 01028e70
	bool32_t __fastcall GetMapCoordFromScreenCoord(LHCoord* coord, MapCoords* coords, float* depth);
	// BW1W120 005e57a0 BW1M119 01381640
	static void __fastcall DrawSubPixel(uint16_t* dest, unsigned long pitch, unsigned long x, unsigned long z);
};

// Free functions

// BW1W120 005e57b0 BW1M119 01018ca0
void ClearLight();
// BW1W120 005e5c90 BW1M119 01381370
void GetCenterWorld(LHPoint* point);

// BW1W120 005e6540 BW1M119 01380c10
void GoolooGooloo(Object* object);

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
