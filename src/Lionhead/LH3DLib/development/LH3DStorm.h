#ifndef BW1_DECOMP_LH3DSTORM_INCLUDED_H
#define BW1_DECOMP_LH3DSTORM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LH3DLightningSheet.h" /* For class LH3DLightningSheet */
#include "LHPoint.h"            /* For struct LHPoint */
#include "WeatherInfo.h"        /* For struct WeatherInfo */

#define LH3D_STORM_SHADOW_SIZE 40

struct StormInfo
{
	LHPoint     Pos;
	float       InnerRadius;
	float       OuterRadius;
	float       Fade;
	float       Time;
	float       Intensity;
	int         Clouds;
	float       Shade;
	float       Height;
	float       FallSpeed;
	float       SheetLightningMin;
	float       SheetLightningMax;
	float       ForkLightningMin;
	float       ForkLightningMax;
	float       field_0x40;
	uint32_t    field_0x44;
	WeatherInfo Weather;

	// BW1W120 0083f490 BW1M119 010bac70 (LHCombined Release)
	StormInfo();
	// BW1W120 0083f4a0 BW1M119 010babd0 (LHCombined Release)
	StormInfo(const LHPoint& pos, float param_2, float param_3);

	// BW1W120 0083f3f0 BW1M119 010bacd0 (LHCombined Release)
	void InitDefault();
};
static_assert(sizeof(StormInfo) == 0x50, "Data type is of wrong size");

enum LH3D_STORM_PADDING
{
	LH3D_STORM_PADDING_0,
	LH3D_STORM_PADDING_1,
	LH3D_STORM_PADDING_2,
};

// win1.41 00c24780 mac inlined LH3DStorm::`RTTI Type Descriptor'
// win1.41 009ba028 mac inlined LH3DStorm::`RTTI Base Class Descriptor'
// win1.41 009a3b00 mac 101cd534 LH3DStorm::`vftable'
class LH3DStorm
{
public:
	typedef void(__stdcall* LightningCallback)(LH3DStorm* storm, LHPoint& pos, float radius);

	uint32_t           field_0x4;
	StormInfo          Info;
	float              Lifetime;    /* 0x58 */
	LHPoint            Destination; /* 0x5c */
	float              Radius;      /* 0x68 */
	uint8_t            field_0x6c[0x4];
	LH3DLightningSheet Sheet;
	int                Killed;
	uint8_t            field_0x98[0x324];
	LH3DStorm*         Next;

	// BW1W120 00eea388 BW1M119 012d37c8 (LHCombined Release)
	static LightningCallback g_sheetcallback;
	// BW1W120 00eea37c BW1M119 012d37d4 (LHCombined Release)
	static LH3DStorm* first;
	// BW1W120 00ee9d3c BW1M119 012d37d8 (LHCombined Release)
	static uint8_t shadowtex[LH3D_STORM_SHADOW_SIZE * LH3D_STORM_SHADOW_SIZE];

	// BW1W120 0083f840 BW1M119 0103a860 (LHCombined Release)
	static void UpdateAll(float time);
	static void DebugDrawAll(); // 0083f890
	// BW1W120 0083f8b0 BW1M119 0103a940 (LHCombined Release)
	static void DrawCloudsAll();
	// BW1W120 0083f810 BW1M119 010ba480 (LHCombined Release)
	static void ReallyKillAll();
	// BW1W120 0083f750 BW1M119 010ba660 (LHCombined Release)
	static void KillAllStormsInArea(LHPoint pos, float radius);
	// BW1W120 0083f6f0 BW1M119 010ba760 (LHCombined Release)
	static LH3DStorm* CreateStorm(StormInfo& info);
	// BW1W120 0083f7b0 BW1M119 010ba600 (LHCombined Release)
	static void KillStorm(LH3DStorm* storm);
	// BW1W120 0083f8d0 BW1M119 01005df0 (LHCombined Release)
	static LH3DStorm* ValidateStormPointer(LH3DStorm* storm);
	// Virtual functions

	virtual void Update(float param_1);
	virtual void DrawClouds();
	virtual void DebugDraw();
	virtual void CalcAtmos(LHPoint* point, WeatherInfo* info);
	virtual ~LH3DStorm();
};
static_assert(sizeof(LH3DStorm) == 0x3c0, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3DSTORM_INCLUDED_H */
