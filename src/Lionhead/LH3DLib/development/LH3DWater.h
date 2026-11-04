#ifndef BW1_DECOMP_LH3D_WATER_INCLUDED_H
#define BW1_DECOMP_LH3D_WATER_INCLUDED_H

#include <stdint.h> /* For uint16_t, uint32_t */

#include <re_common.h> /* For bool32_t */

#include "LH3DVertex.h" /* For struct LH3DVertex */
#include "LHPoint.h"    /* For struct LHPoint */

struct LH3DMaterial;

class LH3DWater
{
public:
	// BW1W120 00fa9354 BW1M119 01342380 (LHCombined Release)
	static bool32_t g_open;
	// BW1W120 00fa9358 BW1M119 0134237c (LHCombined Release)
	static Vertex3D* g_points;
	// BW1W120 00fa935c BW1M119 01342378 (LHCombined Release)
	static uint16_t* g_indice;
	// BW1W120 00fa9360 BW1M119 01342374 (LHCombined Release)
	static int g_nb_max_line;
	// BW1W120 00fa9364 BW1M119 01342370 (LHCombined Release)
	static int g_nb_max_point;
	// BW1W120 00fa9368 BW1M119 0134236c (LHCombined Release)
	static int g_nb_max_indice;
	// BW1W120 00fa936c BW1M119 01342368 (LHCombined Release)
	static float g_water_altitude;
	// BW1W120 00fa9370 BW1M119 01342364 (LHCombined Release)
	static float g_u_inc;
	// BW1W120 00fa9374 BW1M119 01342360 (LHCombined Release)
	static float g_v_inc;
	// BW1W120 00fa9378 BW1M119 0134235c (LHCombined Release)
	static uint32_t g_specular_sky;
	// BW1W120 00c398fc BW1M119 011d17f4 (LHCombined Release)
	static uint32_t g_color_water;

	// BW1W120 008792e0 BW1M119 010d1f80 (LHCombined Release)
	static void __fastcall Open(long screen_height);
	// BW1W120 008794a0 BW1M119 010d1ec0 (LHCombined Release)
	static void Close();
	// BW1W120 00879500 BW1M119 01011150 (LHCombined Release)
	static bool32_t ComputeHorizon();
	// BW1W120 008797f0 BW1M119 0100b870 (LHCombined Release)
	static void __fastcall Transform(LHPoint* points, long count);
	// BW1W120 00879930 BW1M119 0101b030 (LHCombined Release)
	static void __fastcall DrawSea(LH3DMaterial* material);
};

#endif /* BW1_DECOMP_LH3D_WATER_INCLUDED_H */
