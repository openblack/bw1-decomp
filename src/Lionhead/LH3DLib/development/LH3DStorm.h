#ifndef BW1_DECOMP_LH3DSTORM_INCLUDED_H
#define BW1_DECOMP_LH3DSTORM_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h>

#include "LHPoint.h"
#include "WeatherInfo.h"

// Original standalone type name is corroborated by the Mac StormInfo constructor symbols.
// Member names are descriptive or unknown-offset placeholders. Save/Load transfer 0x50 bytes.
struct StormInfo
{
	LHPoint     Position;
	float       field_0xc;
	float       field_0x10;
	float       field_0x14;
	float       field_0x18;
	float       field_0x1c;
	uint32_t    field_0x20;
	float       field_0x24;
	float       field_0x28;
	float       field_0x2c;
	float       field_0x30;
	float       field_0x34;
	float       field_0x38;
	float       field_0x3c;
	float       field_0x40;
	float       field_0x44;
	WeatherInfo Weather; /* 0x48 */

	// BW1W120 0083f490; Mac __ct__9StormInfoFv
	StormInfo();
	// BW1W120 0083f4a0; Mac __ct__9StormInfoFRC7LHPointff
	StormInfo(const LHPoint& position, float param_2, float param_3);
};

static_assert(sizeof(StormInfo) == 0x50, "StormInfo size is incorrect");

// win1.41 00c24780 mac inlined LH3DStorm::`RTTI Type Descriptor'
// win1.41 009ba028 mac inlined LH3DStorm::`RTTI Base Class Descriptor'
// win1.41 009a3b00 mac 101cd534 LH3DStorm::`vftable'
class LH3DStorm
{
public:
	// The vptr occupies 0..3. Constructor 0083f590 copies the full StormInfo to this+8.
	uint32_t  field_0x4;
	StormInfo Info;             /* 0x8 */
	float     Age;              /* 0x58 */
	LHPoint   PreviousPosition; /* 0x5c */
	float     field_0x68;
	// TODO: Recover renderer-tail members. This is proven storage, not score-matching padding:
	// 0083f6f0 allocates 0x3c0 bytes; 0083f590 links through this+0x3bc. Initialization and
	// destruction of the tail remain the responsibility of the original external methods.
	uint8_t field_0x6c[0x354];

	// BW1W120 0083f590; Mac __ct__9LH3DStormFR9StormInfo
	LH3DStorm(StormInfo& info);
	// BW1W120 0083f6f0; Mac CreateStorm__9LH3DStormFR9StormInfo
	static LH3DStorm* CreateStorm(StormInfo& info);
	// BW1W120 0083f8d0; Mac ValidateStormPointer__9LH3DStormFP9LH3DStorm
	// Returns the live matching storm pointer, or NULL (not a Boolean).
	static LH3DStorm* ValidateStormPointer(LH3DStorm* storm);

	static void DebugDrawAll(); // 0083f890
	// Virtual functions

	virtual void Update(float param_1); /* 0x0 */
	virtual void DrawClouds();
	virtual void DebugDraw();
	virtual void CalcAtmos(LHPoint* point, WeatherInfo* info);
	virtual ~LH3DStorm(); /* 0x10 */
};

static_assert(sizeof(LH3DStorm) == 0x3c0, "LH3DStorm size is incorrect");

#endif /* BW1_DECOMP_LH3DSTORM_INCLUDED_H */
