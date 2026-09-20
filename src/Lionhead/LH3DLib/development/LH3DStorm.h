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

	// BW1W120 0083f490 BW1M100 100bb690 StormInfo::StormInfo(void)
	StormInfo();
	// BW1W120 0083f4a0 BW1M100 100bb5f0 StormInfo::StormInfo(const LHPoint&, float, float)
	StormInfo(const LHPoint& position, float param_2, float param_3);
};

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

	// BW1W120 0083f590 BW1M100 100bb1d0 LH3DStorm::LH3DStorm(StormInfo&)
	LH3DStorm(StormInfo& info);
	// BW1W120 0083f6f0 BW1M100 100bb030 LH3DStorm::CreateStorm(StormInfo&)
	static LH3DStorm* CreateStorm(StormInfo& info);
	// BW1W120 0083f8d0 BW1M100 10005d60 LH3DStorm::ValidateStormPointer(LH3DStorm*)
	static LH3DStorm* ValidateStormPointer(LH3DStorm* storm);

	// BW1W120 0083f890 BW1M100 100bac00 LH3DStorm::DebugDrawAll(void)
	static void DebugDrawAll();
	// Virtual functions

	// BW1W120 0083f900 BW1M100 1000e110 LH3DStorm::Update(float)
	virtual void Update(float param_1); /* 0x0 */
	// BW1W120 0083fc90 BW1M100 1001de80 LH3DStorm::DrawClouds(void)
	virtual void DrawClouds();
	// BW1W120 008402e0 BW1M100 100ba4c0 LH3DStorm::DebugDraw(void)
	virtual void DebugDraw();
	// BW1W120 008400e0 BW1M100 100200b0 LH3DStorm::CalcAtmos(LHPoint&, WeatherInfo&)
	virtual void CalcAtmos(LHPoint* point, WeatherInfo* info);
	// BW1W120 0083f630 BW1M100 100bb0c0 LH3DStorm::~LH3DStorm(void)
	virtual ~LH3DStorm(); /* 0x10 */
};

#endif /* BW1_DECOMP_LH3DSTORM_INCLUDED_H */
