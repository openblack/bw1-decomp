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
class LH3DObject;
struct LHCoord;
struct LHColor;
struct LHPoint;
struct MapCoords;
struct Point2D;
class Object;
struct LandscapeEffect;

struct GLandscape
{
	// BW1W120 00d99580. Set by Open; TODO: original global name unknown.
	static char Filename[];
	// Original names unrecovered. Paired draw arrays hold 3000 entries; insertion stops at 2999.
	// BW1W120 00d1a3ac
	static uint32_t DrawObjectActive[3000];
	// BW1W120 00d1d28c
	static Object* DrawObjects[3000];
	// BW1W120 00d20198
	static int DrawObjectCount;
	// BW1W120 00bf358c. Descriptive name; decremented when rebuilding the draw list.
	static int DrawListRebuildCount;
	// Descriptive names recovered from the Windows users of these globals.
	// BW1W120 00d1a360. Open computes the centre of the occupied block origins.
	static LHPoint Centre;
	// BW1W120 00d1a370 / 00d20184
	static LHPoint HandLightPosition;
	static float   HandLightIntensity;
	// BW1W120 00d20180. Open loads and rescales the 12x12 hand-light bitmap.
	static uint8_t* HandLightMap;
	// BW1W120 00d20190
	static uint32_t IsOpen;
	// BW1W120 00bf357c. Original name unknown.
	static int HandLightMapSize;
	// BW1W120 00d20194 / 00d201a0
	static LandscapeEffect* Effects;
	static int              EffectCount;
	// BW1W120 00bf3588. Initialized to 500.
	static int EffectDuration;
	// BW1W120 005e5280 BW1M100 1037a310 void GLandscape::Close(void)
	void Close();

	LH3DTexture*  texture; /* 0x0 */
	LH3DMaterial* material;
	// BW1W120 005e55c0 GLandscape::~GLandscape(void)
	~GLandscape();

	// Static methods

	// BW1W120 inlined BW1M100 100198f0 void GLandscape::ConvertLandscapePointToMapCoord(LHPoint const &, MapCoords &)
	static void ConvertLandscapePointToMapCoord(const LHPoint* point, MapCoords* coords);
	// BW1W120 inlined BW1M100 106f5c34 void GLandscape::ConvertAbsoluteMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
	static void ConvertAbsoluteMapCoordToLandscapePoint(const MapCoords* coords, LHPoint* point);
	// BW1W120 005e3f60 BW1M100 1001d960 unsigned int GLandscape::PreDraw(void)
	uint32_t PreDraw();
	// BW1W120 00613750 BW1M100 1004aef0 LHPoint * GLandscape::ConvertMapCoordToLandscapePoint(MapCoords const &, LHPoint &)
	static LHPoint* ConvertMapCoordToLandscapePoint(const MapCoords& coords, LHPoint& point)
	{
		// MSVC 6 inlines this. Inlined uses look like (esi=coords, eax=point):
		//     call LH3DIsland::GetAltitude
		//     fadds <spilled altitude>          fstps [point+4]
		//     fild [coords]     fmul __real@4@3ff2a000000000000000   fstps [point]
		//     fild [coords+4]   fmul __real@4@3ff2a000000000000000   fstps [point+8]
		// The scale must stay literal/literal: MSVC 6 folds it to one constant,
		// but `CellSize / ...` is not folded and emits a runtime fld+fmul.
		// LHPoint& is an out-param, not a Rule 2 retbuf; by-value costs a copy.
		float altitude;

		altitude = coords.Altitude();
		point.y = altitude + LH3DIsland::GetAltitude((const LH3DMapCoords&)coords);
		point.x = ((const LH3DMapCoords&)coords).WholeX() * (10.0f / (float)0x10000);
		point.z = ((const LH3DMapCoords&)coords).WholeZ() * (10.0f / (float)0x10000);
		return &point;
	}

	// Non-virtual methods

	// BW1W120 005e42e0 BW1M100 1004d770 void GLandscape::Draw(void)
	void Draw();
	// BW1W120 005e52e0 BW1M100 10379f50 void GLandscape::Open(char *)
	void Open(char* path);

	// BW1W120 005e5620 unsigned int GLandscape::PickPoint(LHCoord const &, LHPoint &, float *)
	uint32_t __fastcall PickPoint(const LHCoord& screen, LHPoint& point, float* depth);
	// BW1W120 005e5740 unsigned int GLandscape::PickMapCoords(LHCoord const &, MapCoords &, float *)
	uint32_t __fastcall PickMapCoords(const LHCoord& screen, MapCoords& coords, float* depth);
	// BW1W120 005e5b90 unsigned int GLandscape::PickPoint(Point2D const &, LHPoint &, float *)
	uint32_t __fastcall PickPoint(const Point2D& screen, LHPoint& point, float* depth);
	// BW1W120 005e5bd0 void GLandscape::ConvertCellToLandscapePoint(JustMapXZ const &, LHPoint &)
	static void ConvertCellToLandscapePoint(const JustMapXZ& cell, LHPoint& point);
	// BW1W120 005e5c90 LHPoint GLandscape::GetCentre(void)
	static LHPoint GetCentre();
};

// Provisional type names. Layouts below are supported by the Windows allocation,
// field accesses and drawing callbacks; they do not claim recovered Mac ownership.
struct LandscapeEffect
{
	LandscapeEffect* Next;          // 0x0
	LH3DObject*      Object3D;      // 0x4
	int              TimeRemaining; // 0x8

	// BW1W120 005e6350 LandscapeEffect::~LandscapeEffect(void)
	~LandscapeEffect();
	// BW1W120 005e6390 void LandscapeEffect::Draw(void)
	void Draw();
};
static_assert(sizeof(LandscapeEffect) == 0xc, "Data type is of wrong size");

struct LandscapeDebugText
{
	// Prefix used at 00d45630; do not allocate a global instance until its owning type is identified.
	uint32_t Active;         // 0x0
	char     Lines[20][256]; // 0x4
	float    TimeRemaining;  // 0x1404
	uint32_t DisplayAll;     // 0x1408

	// BW1W120 005e6630 void LandscapeDebugText::Draw(void)
	void Draw();
	// BW1W120 005e66a0 void LandscapeDebugText::AddDrawing(void)
	void AddDrawing();
};
static_assert(sizeof(LandscapeDebugText) == 0x140c, "Data type is of wrong size");

struct LandscapeWaterCircle
{
	// Original class name is not yet known; GWater owns the pool.
	LHPoint  Position; // 0x0
	uint32_t Flags;    // 0xc, bit 0 is active
	uint32_t Age;      // 0x10
	float    field_0x14;
	float    Growth;       // 0x18
	uint32_t MoveWithWind; // 0x1c
	float    Angle;        // 0x20
	float    Width;        // 0x24
	float    Height;       // 0x28
	float    Speed;        // 0x2c
	uint32_t SpriteFlags;  // 0x30
	uint32_t Colour;       // 0x34

	// BW1W120 005e5100 void LandscapeWaterCircle::Draw(void)
	void Draw();
};
static_assert(sizeof(LandscapeWaterCircle) == 0x38, "Data type is of wrong size");

// Free functions

// BW1W120 005e57b0 void ClearLight(void)
void ClearLight();

// BW1W120 005e55d0 unsigned int IntersectLandscapeWaterPlane(LHPoint const &, LHPoint const &, LHPoint &)
uint32_t IntersectLandscapeWaterPlane(const LHPoint& from, const LHPoint& to, LHPoint& point);

// BW1W120 005e6310 float LandscapeDistanceToCameraSquared(LHPoint const &)
float __fastcall LandscapeDistanceToCameraSquared(const LHPoint& point);

// BW1W120 005e5cb0 void SetLandscapeDebugColour(LHColor &)
void SetLandscapeDebugColour(LHColor& colour);

// BW1W120 005e3f70 void DrawLandscapeWaterLight(LHPoint, unsigned int)
void DrawLandscapeWaterLight(LHPoint point, uint32_t colour);

// BW1W120 005e57a0 void LandscapeTextureUpdated(void *, int, int, int)
void __fastcall LandscapeTextureUpdated(void* pixels, int size, int block_x, int block_z);

// BW1W120 005e6540 BW1M100 10378b00 void GoolooGooloo(Object *)
void GoolooGooloo(Object* object);

#endif /* BW1_DECOMP_LANDSCAPE_INCLUDED_H */
