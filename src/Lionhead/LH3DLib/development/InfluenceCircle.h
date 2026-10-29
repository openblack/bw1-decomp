#ifndef BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

#define INFLUENCE_CIRCLE_PLAYER_COUNT 8

// Forward Declares

struct LH3DMaterial;

class InfluenceCircle
{
public:
	// Static members

	// BW1W120 00eb9a14 BW1M119 011f1e18 (LHCombined Release)
	static InfluenceCircle* g_first;
	// BW1W120 00eb9a18 BW1M119 011f1e14 (LHCombined Release)
	static LH3DMaterial* g_material;
	// BW1W120 00eb9a1c BW1M119 011cea38 (LHCombined Release)
	static bool32_t g_b_valid[INFLUENCE_CIRCLE_PLAYER_COUNT];
	// BW1W120 00ea9f20 BW1M119 011f1e08 (LHCombined Release)
	static LHPoint g_pos_inside_citadel;
	// BW1W120 00eb9a3c BW1M119 011f1e04 (LHCombined Release)
	static float g_yangle_inside_citadel;
	// BW1W120 00c383dc BW1M119 011cea58 (LHCombined Release)
	static float g_scale_inside_citadel;
	// BW1W120 00ea9efc BW1M119 011f1de4 (LHCombined Release)
	static LH3DColor g_players_color[INFLUENCE_CIRCLE_PLAYER_COUNT];

	InfluenceCircle* Next;
	LHPoint          Pos;
	float            Radius;
	long             Segments;
	bool32_t*        Hidden;
	LHPoint*         Points;
	unsigned long*   Colours;
	long*            Indices;
	float*           UVs;
	long             Player;
	bool32_t         Dead;
	unsigned long    Alpha;

	// Constructors

	// BW1W120 008265f0 BW1M119 01167b60 (LHCombined Release)
	InfluenceCircle(long player, const LHPoint& pos, float radius);

	// Destructor

	// BW1W120 00826bc0 BW1M119 010b8db0 (LHCombined Release)
	~InfluenceCircle();

	// Static methods

	// BW1W120 00826c50 BW1M119 01047c00 (LHCombined Release)
	static void Reset();
	// BW1W120 00826c90 BW1M119 0100cef0 (LHCombined Release)
	static void Draw(int mode);
	// BW1W120 00826fa0 BW1M119 010bede0 (LHCombined Release)
	static void Add(long player, const LHPoint& position, float influence);
	// BW1W120 00827040 BW1M119 011602a0 (LHCombined Release)
	static void DeleteContact(InfluenceCircle* circle, InfluenceCircle* other);

	// Non-virtual methods

	// BW1W120 00827110 BW1M119 010b2470 (LHCombined Release)
	void HideContact(InfluenceCircle* other);
	// BW1W120 00827210 BW1M119 0104e510 (LHCombined Release)
	bool32_t Contains(float x, float z);
};
static_assert(sizeof(InfluenceCircle) == 0x38, "Data type is of wrong size");

// BW1W120 00828a50 BW1M119 0104b990 (LHCombined Release)
void ResetAllWhenLandscapeChange();

#endif /* BW1_DECOMP_INFLUENCE_CIRCLE_INCLUDED_H */
