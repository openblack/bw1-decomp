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
	float       field_0x1c;
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

// win1.41 00c24780 mac inlined LH3DStorm::`RTTI Type Descriptor'
// win1.41 009ba028 mac inlined LH3DStorm::`RTTI Base Class Descriptor'
// win1.41 009a3b00 mac 101cd534 LH3DStorm::`vftable'
class LH3DStorm
{
public:
	uint32_t           field_0x4;
	StormInfo          Info;
	uint8_t            field_0x58[0x18];
	LH3DLightningSheet Sheet;
	int                Killed;
	uint8_t            field_0x98[0x324];
	LH3DStorm*         Next;

	// BW1W120 00eea37c BW1M119 012d37d4 (LHCombined Release)
	static LH3DStorm* first;
	// BW1W120 00ee9d3c BW1M119 012d37d8 (LHCombined Release)
	static uint8_t shadowtex[LH3D_STORM_SHADOW_SIZE * LH3D_STORM_SHADOW_SIZE];

	// BW1W120 0083f840 BW1M119 0103a860 (LHCombined Release)
	static void UpdateAll(float time);
	static void DebugDrawAll(); // 0083f890
	// BW1W120 0083f810 BW1M119 010ba480 (LHCombined Release)
	static void ReallyKillAll();
	// Virtual functions

	virtual void Update(float param_1);
	virtual void DrawClouds();
	virtual void DebugDraw();
	virtual void CalcAtmos(LHPoint* point, WeatherInfo* info);
	virtual ~LH3DStorm();
};
static_assert(sizeof(LH3DStorm) == 0x3c0, "Data type is of wrong size");

#endif /* BW1_DECOMP_LH3DSTORM_INCLUDED_H */
