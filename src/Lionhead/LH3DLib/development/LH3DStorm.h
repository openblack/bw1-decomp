#ifndef BW1_DECOMP_LH3DSTORM_INCLUDED_H
#define BW1_DECOMP_LH3DSTORM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LHPoint.h"     /* For struct LHPoint */
#include "WeatherInfo.h" /* For struct WeatherInfo */

struct StormInfo
{
	LHPoint     Pos;
	float       field_0xc;
	float       field_0x10;
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

#endif /* BW1_DECOMP_LH3DSTORM_INCLUDED_H */
