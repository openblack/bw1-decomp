#ifndef BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H
#define BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

// The wet footprints a creature leaves after walking through water.
#define LH3D_WET_FEET_MAX               256
#define LH3D_WET_FEET_VERTICES_PER_FOOT 4
#define LH3D_WET_FEET_INDICES_PER_FOOT  6
#define LH3D_WET_FEET_CREATURE_TYPES    18

struct LH3DWetFeetSprite
{
	long  Offset;
	float U;
	float V;
	float Scale;
};

class LH3DWetFeet
{
public:
	// BW1W120 00eb9974 BW1M119 011f2490 (LHCombined Release)
	static LHPoint* g_vertex_list;
	// BW1W120 00eb9978 BW1M119 011f248c (LHCombined Release)
	static long g_feet_count;
	// BW1W120 00eb997c BW1M119 011f2488 (LHCombined Release)
	static LH3DColor* g_list_color;
	// BW1W120 00eb9980 BW1M119 011f2484 (LHCombined Release)
	static float* g_list_uv;
	// BW1W120 00eb9984 BW1M119 011f2480 (LHCombined Release)
	static long* g_list_index;

	// Static methods

	// BW1W120 0081f2c0 BW1M119 010c8c00 (LHCombined Release)
	static void Open();
	// BW1W120 0081f2d0 BW1M119 010c8820 (LHCombined Release)
	static void Close();
	// BW1W120 0081f340 BW1M119 010c8650 (LHCombined Release)
	static long GetSpriteOffsetFromCreatureType(unsigned long creature_type);
	// BW1W120 0081f360 BW1M119 010806a0 (LHCombined Release)
	static void Add(LHPoint* pos, float heading, float size, long creature_type, int left);
	// BW1W120 0081f820 BW1M119 0103c160 (LHCombined Release)
	static void Draw();
};

#endif /* BW1_DECOMP_LH3D_WET_FEET_INCLUDED_H */
