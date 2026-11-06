#ifndef BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "GameThingWithPos.h" /* For class GameThingWithPos */

#ifdef VERSION_BW1WCI
#include <Lionhead/LH3DLib/development/LH3DColor.h> /* For struct LH3DColor */
#include <Lionhead/LH3DLib/development/LHPoint.h>   /* For struct LHPoint */
#include <Lionhead/LHFile/ver3.0/LHFile.h>          /* For class LHFile */

#include "Game.h" /* For class GGame */

enum ENUM_SPOT_VISUAL_ALEX
{
	SPOT_VISUAL_ALEX_TYPE_HULA_HOOP = 0,
	SPOT_VISUAL_ALEX_TYPE_FENCE = 1,
};

#define GAME_THING_TYPE_SPOT_VISUAL_ALEX 0x118
#define GAME_THING_TYPE_FENCE_VIS        0x119
#define GAME_THING_TYPE_HULA_HOOP_VIS    0x11a

#define FENCE_VIS_RADIUS      3.0f
#define FENCE_VIS_STREAK_SIZE 100.0f
#define HULA_HOOP_VIS_HEIGHT  20.0f
#define HULA_HOOP_VIS_RADIUS  10.0f
#define HULA_HOOP_VIS_DENSITY 10
#endif

class SpotVisualAlex : public GameThingWithPos
{
public:
	LHListNode<SpotVisualAlex> next;

#ifdef VERSION_BW1WCI
	uint32_t field_0x2c;

	// BW1WCI inlined BW1MCI119 01537780
	SpotVisualAlex(ENUM_SPOT_VISUAL_ALEX type) { GGame::g_game->GameLists.SpotVisualAlexes.AddToFirst(this); }
	// BW1WCI 00576590 BW1MCI119 0132c130
	virtual ~SpotVisualAlex() { GGame::g_game->GameLists.SpotVisualAlexes.Remove(this); }

	// BW1WCI 005764a0 BW1MCI119 01331940
	virtual const char* GetText() { return "Alex Spot Visual"; }
	// BW1WCI 00576570 BW1MCI119 01331980
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_SPOT_VISUAL_ALEX; }
	// BW1WCI 00576580 BW1MCI119 013319c0
	virtual char* GetDebugText() { return "SpotVisualAlex:"; }
	// BW1WCI purecall BW1MCI119 purecall
	virtual void AddDrawing() = 0;
#endif
};

#ifdef VERSION_BW1WCI
struct FenceVis : public SpotVisualAlex
{
	int       NumPoints;  /* 0x30 */
	LHPoint*  Points;     /* 0x34 */
	float     Radius;     /* 0x38 */
	LH3DColor Colour;     /* 0x3c */
	float     StreakSize; /* 0x40 */

	// BW1WCI inlined BW1MCI119 inlined
	FenceVis(const char* file_name, const LH3DColor& colour) : SpotVisualAlex(SPOT_VISUAL_ALEX_TYPE_FENCE)
	{
		Colour = colour;
		Radius = FENCE_VIS_RADIUS;
		StreakSize = FENCE_VIS_STREAK_SIZE;
		LHFile file(file_name);
		if (file.Open(LH_FILE_MODE_READ_ONLY) == LH_FILE_RESULT_OK)
		{
			SetFromFile(&file, true);
			file.Close();
		}
		else
		{
			Points = NULL;
			NumPoints = 0;
		}
	}
	// BW1WCI 005764f0 BW1MCI119 016262a0
	virtual ~FenceVis() { delete Points; }

	// BW1WCI 005764b0 BW1MCI119 01626220
	virtual void Set2DRadius(float radius) { Radius = radius; }
	// BW1WCI 005764c0 BW1MCI119 01626260
	virtual float Get2DRadius() { return Radius; }
	// BW1WCI 005764d0 BW1MCI119 016264c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_FENCE_VIS; }
	// BW1WCI 005764e0 BW1MCI119 01626500
	virtual char* GetDebugText() { return "FenceVis:"; }
	// BW1WCI 0074a1a0 BW1MCI119 01627b20
	virtual bool32_t Save(GameOSFile& file);
	// BW1WCI 0074a3b0 BW1MCI119 01627820
	virtual bool32_t Load(GameOSFile& file);
	// BW1WCI 0074ad30 BW1MCI119 01626bb0
	virtual void AddDrawing();

	// BW1WCI 0074aaa0 BW1MCI119 01626d20
	void SetFromFile(LHFile* file, bool32_t fit_to_ground);
};

struct HulaHoopVis : public SpotVisualAlex
{
	LHPoint   Point;   /* 0x30 */
	float     Height;  /* 0x3c */
	float     Radius;  /* 0x40 */
	int       Density; /* 0x44 */
	LH3DColor Colour;  /* 0x48 */

	// BW1WCI 00727570 BW1MCI119 inlined
	HulaHoopVis(LHPoint point, float height, float radius, int density, const LH3DColor& colour)
		: SpotVisualAlex(SPOT_VISUAL_ALEX_TYPE_HULA_HOOP)
	{
		Set(point, height, radius, density, colour);
	}
	// BW1WCI 00576790 BW1MCI119 01628100
	virtual ~HulaHoopVis() { Height = 0.0f; }

	// BW1WCI 00576640 BW1MCI119 01627e70
	virtual void SetPos(const MapCoords& pos)
	{
		Point = pos.Get3DPoint();
		Pos = pos;
	}
	// BW1WCI 00576690 BW1MCI119 01627f00
	virtual void SetHeight(float height) { Height = height; }
	// BW1WCI 005766a0 BW1MCI119 01627f40
	virtual void Set2DRadius(float radius) { Radius = radius; }
	// BW1WCI 005766b0 BW1MCI119 01627f80
	virtual float Get2DRadius() { return Radius; }
	// BW1WCI 005766c0 BW1MCI119 01627fc0
	virtual float GetHeight() { return Height; }
	// BW1WCI 005766d0 BW1MCI119 01628000
	virtual void SetDensity(float density) { Density = (int)density; }
	// BW1WCI 005766f0 BW1MCI119 01628050
	virtual float GetDensity() { return (float)Density; }
	// BW1WCI 00576700 BW1MCI119 016280b0
	virtual void SetColour(LH3DColor& colour) { Colour = colour; }
	// BW1WCI 00576770 BW1MCI119 016282c0
	virtual uint32_t GetSaveType() { return GAME_THING_TYPE_HULA_HOOP_VIS; }
	// BW1WCI 00576780 BW1MCI119 01628300
	virtual char* GetDebugText() { return "HulaHoopVis:"; }
	// BW1WCI 0074a5e0 BW1MCI119 01627610
	virtual bool32_t Save(GameOSFile& file);
	// BW1WCI 0074a730 BW1MCI119 01627410
	virtual bool32_t Load(GameOSFile& file);
	// BW1WCI 00576710 BW1MCI119 016281c0
	virtual void AddDrawing();

	// BW1WCI 007275f0 BW1MCI119 01537710
	void Set(LHPoint point, float height, float radius, int density, const LH3DColor& colour)
	{
		Point = point;
		Height = height;
		Density = density;
		Colour = colour;
		Radius = radius;
	}
};

static_assert(sizeof(FenceVis) == 0x44, "FenceVis has the wrong size");
static_assert(sizeof(HulaHoopVis) == 0x4c, "HulaHoopVis has the wrong size");
#endif

#endif /* BW1_DECOMP_SPOT_VISUAL_ALEX_INCLUDED_H */
