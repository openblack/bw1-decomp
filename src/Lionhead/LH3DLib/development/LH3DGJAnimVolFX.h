#ifndef BW1_DECOMP_LH3D_GJ_ANIM_VOL_FX_INCLUDED_H
#define BW1_DECOMP_LH3D_GJ_ANIM_VOL_FX_INCLUDED_H

#include <stdint.h> /* For uint8_t */

enum
{
	// The volumetric effect draws the faces of its extruded triangles in batches through Draw3DClipTriangle.
	LH3D_GJ_ANIM_VOL_FX_TRIANGLE_BATCH = 64,
	// The front face and two triangles for each side.
	LH3D_GJ_ANIM_VOL_FX_FACES_PER_TRIANGLE = 7,
	// The batch is built at the start of the transformed-vertex cache, so the extruded vertices are kept further on.
	LH3D_GJ_ANIM_VOL_FX_FIRST_POINT = 676,
};

// Which component of the rotated normal LH3DGJAnimVolFX::g_vol_fx_go_by_norm takes the texture's u coordinate from.
enum
{
	LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_Y = 1,
	LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_X = 2,
	LH3D_GJ_ANIM_VOL_FX_U_BY_NORMAL_Z = 3,
};

// An animated volumetric effect drawn over an object.
struct LH3DGJAnimVolFX
{
	// BW1W120 00c3909c BW1M119 011d17c0 (LHCombined Release)
	static bool g_vol_fx_anim_uv;
	// BW1W120 00c390a0 BW1M119 011d17c4 (LHCombined Release)
	static float g_vol_fx_texture_frac_u;
	// BW1W120 00c390a4 BW1M119 011d17c8 (LHCombined Release)
	static float g_vol_fx_texture_frac_v;
	// BW1W120 00c390a8 BW1M119 011d17cc (LHCombined Release)
	static float g_vol_fx_xy_for_color_0;
	// BW1W120 00c390ac BW1M119 011d17d0 (LHCombined Release)
	static float g_vol_fx_xy_for_color_255;
	// BW1W120 00c390b0 BW1M119 011d17d4 (LHCombined Release)
	static float g_vol_fx_zoom;
	// BW1W120 00c390b4 BW1M119 011d17d8 (LHCombined Release)
	static uint8_t g_vol_fx_go_by_norm;
	// BW1W120 00eddd1c BW1M119 0134221c (LHCombined Release)
	static float g_vol_fx_offset_u;
	// BW1W120 00eddd20 BW1M119 01342218 (LHCombined Release)
	static float g_vol_fx_offset_v;
	// BW1W120 00eddd24 BW1M119 01342214 (LHCombined Release)
	static float g_vol_fx_normal_offset_x;
	// BW1W120 00eddd28 BW1M119 01342210 (LHCombined Release)
	static float g_vol_fx_normal_offset_z;
};

#endif /* BW1_DECOMP_LH3D_GJ_ANIM_VOL_FX_INCLUDED_H */
