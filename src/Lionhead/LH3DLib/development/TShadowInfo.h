#ifndef BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H
#define BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <stdint.h>    /* For uint32_t, uint8_t */
#include <re_common.h> /* For bool32_t */

#include "BBox2D.h"  /* For struct BBox2D */
#include "LHPoint.h" /* For struct LHPoint */

class LH3DObject;
struct LH3DMaterial;

#define LH3D_SHADOW_CLIP_CODE_U_MIN  0x40
#define LH3D_SHADOW_CLIP_CODE_U_MAX  0x80
#define LH3D_SHADOW_CLIP_CODE_V_MIN  0x100
#define LH3D_SHADOW_CLIP_CODE_V_MAX  0x200
#define LH3D_SHADOW_CLIP_CODE_BEHIND 0x400

#define LH3D_SHADOW_SIZE 32

#define LH3D_SHADOW_ALPHA_OPAQUE 255

// The extent a shadow's bounds and depth start from before its mesh is projected.
#define LH3D_SHADOW_FAR 1e20f

struct TShadowInfo
{
	LH3DObject*   Object;
	TShadowInfo*  Next; /* 0x4 */
	bool32_t      Enabled;
	bool32_t      DynamicShadow;
	int           Alpha; /* 0x10 */
	int           BaseAlpha;
	float         GroundHeight; /* 0x18 */
	float         MinX;
	float         MaxX;
	float         MinZ;
	float         MaxZ; /* 0x28 */
	BBox2D        Bounds;
	int           Color; /* 0x3c */
	uint8_t       Buffer[LH3D_SHADOW_SIZE * LH3D_SHADOW_SIZE];
	float         MinDepth; /* 0x440 */
	LHPoint       Light;
	LHPoint       Direction; /* 0x450 */
	uint32_t      field_0x45c;
	LH3DMaterial* Material; /* 0x460 */
	LH3DObject*   Caster;
	uint8_t       field_0x468[0x44];

	// BW1W120 00faa7e0 BW1M119 012d337c (LHCombined Release)
	static TShadowInfo* g_first;

	// Static methods

	// BW1W120 0087fd50 BW1M119 010af140 (LHCombined Release)
	static TShadowInfo* Create();

	// Non-virtual methods

	// BW1W120 0087ff10 BW1M119 010af090 (LHCombined Release)
	void Release();
	// BW1W120 00881030 BW1M119 010215d0 (LHCombined Release)
	bool32_t IsUseable();
	// BW1W120 008801d0 BW1M119 0100c150 (LHCombined Release)
	void Prepare();
	// BW1W120 00880770 BW1M119 010392f0 (LHCombined Release)
	float __fastcall CalcShadowUV_Clipping(LHPoint& point, float& u, float& v);
	// BW1W120 00880800 BW1M119 010adff0 (LHCombined Release)
	void CalcShadowUV_World(LHPoint& point, float* u, float* v, float* depth);
	// BW1W120 00880fc0 BW1M119 0100c350 (LHCombined Release)
	void __fastcall renderbuffer(uint16_t* buffer, long pitch);
};
static_assert(sizeof(TShadowInfo) == 0x4ac, "Data type is of wrong size");

// BW1W120 00874600 BW1M119 010138d0 (LHCombined Release)
float GetAlphaForShadow(LH3DObject* object);

#endif /* BW1_DECOMP_T_SHADOW_INFO_INCLUDED_H */
