#ifndef BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H

#include "LHPoint.h" /* For struct LHPoint */

#include <re_common.h> /* For bool32_t */

#define INFLUENCE_CIRCLE_PLAYER_COUNT 8

struct LH3DMaterial;

class InfluenceCircle
{
public:
	// BW1W120 00eb9a1c BW1M119 011cea38 (LHCombined Release)
	static bool32_t g_b_valid[INFLUENCE_CIRCLE_PLAYER_COUNT];
	// BW1W120 00ea9efc BW1M119 011f1de4 (LHCombined Release)
	static unsigned long g_players_color[INFLUENCE_CIRCLE_PLAYER_COUNT];
	// BW1W120 00eb9a3c BW1M119 011f1e04 (LHCombined Release)
	static float g_yangle_inside_citadel;
	// BW1W120 00eb9a18 BW1M119 011f1e14 (LHCombined Release)
	static LH3DMaterial* g_material;
	// BW1W120 00eb9a14 BW1M119 011f1e18 (LHCombined Release)
	static InfluenceCircle* g_first;
	// BW1W120 00c383dc BW1M119 011cea58 (LHCombined Release)
	static float g_scale_inside_citadel;
	// BW1W120 00ea9f20 BW1M119 011f1e08 (LHCombined Release)
	static LHPoint g_pos_inside_citadel;

	static void Draw(int mode); // 00826c90
	// BW1W120 00826c50 BW1M119 01047c00 (LHCombined Release)
	static void Reset();
	// BW1W120 00826fa0 BW1M119 010bede0 (LHCombined Release)
	static void Add(long player, const LHPoint& position, float influence);
};

// BW1W120 00828a50 BW1M119 0104b990 (LHCombined Release)
void ResetAllWhenLandscapeChange();

#endif /* BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H */
