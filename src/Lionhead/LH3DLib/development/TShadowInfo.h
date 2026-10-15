#ifndef BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H
#define BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H

#include <stdint.h> /* For uint8_t */

#include "LHPoint.h" /* For struct LHPoint */

// What the shadow passes add to the per-vertex clip flags: the vertex is behind the shadow caster, or its shadow
// texture coordinates are outside the texture.
#define LH3D_SHADOW_CLIP_CODE_U_MIN  0x40
#define LH3D_SHADOW_CLIP_CODE_U_MAX  0x80
#define LH3D_SHADOW_CLIP_CODE_V_MIN  0x100
#define LH3D_SHADOW_CLIP_CODE_V_MAX  0x200
#define LH3D_SHADOW_CLIP_CODE_BEHIND 0x400

// A shadow texture projected onto the landscape.
struct TShadowInfo
{
	uint8_t field_0x0[0x18];
	float   GroundHeight; /* 0x18 */
	float   MinX;
	float   MaxX;
	float   MinZ;
	float   MaxZ; /* 0x28 */
	uint8_t field_0x2c[0x10];
	int     Color; /* 0x3c */
	uint8_t field_0x40[0x400];
	float   MinDepth; /* 0x440 */
	LHPoint Light;
	LHPoint Direction; /* 0x450 */

	// Non-virtual methods

	// BW1W120 00880770 BW1M119 010392f0 (LHCombined Release)
	float __fastcall CalcShadowUV_Clipping(LHPoint& point, float& u, float& v);
	// BW1W120 00880800 BW1M119 010adff0 (LHCombined Release)
	void CalcShadowUV_World(LHPoint& point, float* u, float* v, float* depth);
};

#endif /* BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H */
