#ifndef BW1_DECOMP_LH3D_WEATHER_INCLUDED_H
#define BW1_DECOMP_LH3D_WEATHER_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LHPoint.h" /* For struct LHPoint */

#define RAIN_CELL_LINES      128
#define RAIN_CELL_LINE_SLOTS 256
#define SNOW_CELL_FLAKES     256

struct RainLine
{
	float Time;
	float X;
	float Z;
	float DX;
	float DZ;
	float U;
	float USpeed;

	// BW1W120 00833d10 BW1M119 010d8040 (LHCombined Release)
	void Init();
};
static_assert(sizeof(RainLine) == 0x1c, "Data type is of wrong size");

class RainCell
{
public:
	RainLine Lines[RAIN_CELL_LINE_SLOTS];

	// BW1W120 inlined BW1M119 inlined
	RainCell() { Init(); }

	// BW1W120 00833da0 BW1M119 010d7f40 (LHCombined Release)
	void Init();
	// BW1W120 00833dc0 BW1M119 010317c0 (LHCombined Release)
	void PrepareForDraw(int colour);
	// BW1W120 00833ea0 BW1M119 0101f5d0 (LHCombined Release)
	void Update(float time);
	// BW1W120 00833f80 BW1M119 0101f770 (LHCombined Release)
	void Draw();
	// BW1W120 008341b0 BW1M119 0101bd80 (LHCombined Release)
	void AddDrawing(float x, float z, float angle, int count, int alpha);
	// BW1W120 00834370 BW1M119 0101ea10 (LHCombined Release)
	void Draw2(float x, float z, float angle, int count, int alpha);
};
static_assert(sizeof(RainCell) == 0x1c00, "Data type is of wrong size");

struct Snowflake
{
	LHPoint Pos;
	float   FallSpeed;
	float   SwaySpeed;
	float   Heading;
	float   SwayAngle;
	LHPoint Rotation;
	LHPoint RotationSpeed;

	// BW1W120 inlined BW1M119 010d5da0 (LHCombined Release)
	Snowflake() {}

	// BW1W120 008345f0 BW1M119 010d7680 (LHCombined Release)
	void Create(const LHPoint& pos);
	// BW1W120 00834700 BW1M119 010d75c0 (LHCombined Release)
	void Create();
	// BW1W120 00834770 BW1M119 010d73f0 (LHCombined Release)
	void Update(float time);
};
static_assert(sizeof(Snowflake) == 0x34, "Data type is of wrong size");

class SnowCell
{
public:
	Snowflake Flakes[SNOW_CELL_FLAKES];

	// BW1W120 inlined BW1M119 inlined
	SnowCell() { Init(); }

	// BW1W120 00834890 BW1M119 010d7360 (LHCombined Release)
	void Init();
	// BW1W120 008348c0 BW1M119 010d72b0 (LHCombined Release)
	void Update(float time);
	// BW1W120 00834900 BW1M119 010d7040 (LHCombined Release)
	void PrepareForDraw(int colour);
	// BW1W120 00834120 BW1M119 010d7a10 (LHCombined Release)
	void Draw();
	// BW1W120 00834290 BW1M119 010d7830 (LHCombined Release)
	void AddDrawing(float x, float z, float angle, int count, int alpha);
	// BW1W120 00834bf0 BW1M119 010d6cd0 (LHCombined Release)
	void Draw2(float x, float z, float angle, int count, int alpha);
};
static_assert(sizeof(SnowCell) == 0x3400, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3D_WEATHER_INCLUDED_H */
