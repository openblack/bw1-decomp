#ifndef BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H
#define BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H

#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define LH3D_SHADOW_CLIP_CODE_U_MIN  0x40
#define LH3D_SHADOW_CLIP_CODE_U_MAX  0x80
#define LH3D_SHADOW_CLIP_CODE_V_MIN  0x100
#define LH3D_SHADOW_CLIP_CODE_V_MAX  0x200
#define LH3D_SHADOW_CLIP_CODE_BEHIND 0x400

struct TShadowInfo
{
	uint32_t     field_0x0;
	TShadowInfo* Next; /* 0x4 */
	uint32_t     field_0x8;
	uint32_t     field_0xc;
	uint32_t     field_0x10;
	uint8_t      field_0x14[0x4];
	float        GroundHeight; /* 0x18 */
	float        MinX;
	float        MaxX;
	float        MinZ;
	float        MaxZ; /* 0x28 */
	float        BoundsMinX;
	float        BoundsMinZ;
	float        BoundsMaxX;
	float        BoundsMaxZ; /* 0x38 */
	int          Color;      /* 0x3c */
	uint8_t      field_0x40[0x400];
	float        MinDepth; /* 0x440 */
	LHPoint      Light;
	LHPoint      Direction; /* 0x450 */

	// BW1W120 00faa7e0 BW1M119 012d337c (LHCombined Release)
	static TShadowInfo* g_first;

	// Non-virtual methods

	// BW1W120 00881030 BW1M119 010215d0 (LHCombined Release)
	bool32_t IsUseable();
	// BW1W120 00880770 BW1M119 010392f0 (LHCombined Release)
	float __fastcall CalcShadowUV_Clipping(LHPoint& point, float& u, float& v);
	// BW1W120 00880800 BW1M119 010adff0 (LHCombined Release)
	void CalcShadowUV_World(LHPoint& point, float* u, float* v, float* depth);
};

#endif /* BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H */
