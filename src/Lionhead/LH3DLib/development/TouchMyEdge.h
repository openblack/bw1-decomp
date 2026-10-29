#ifndef BW1_DECOMP_TOUCH_MY_EDGE_INCLUDED_H
#define BW1_DECOMP_TOUCH_MY_EDGE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "InfluenceCircle.h" /* For INFLUENCE_CIRCLE_PLAYER_COUNT */
#include "LH3DColor.h"       /* For struct LH3DColor */
#include "LHMatrix.h"        /* For struct LHMatrix */
#include "LHPoint.h"         /* For struct LHPoint */

#define TOUCH_MY_EDGE_RINGS 7

// Forward Declares

struct LH3DSprite;

// The rings rising from the edge of an influence circle where the hand crosses it.
class TouchMyEdge
{
public:
	// Static members

	// BW1W120 00eb9a44 BW1M119 011f1de0 (LHCombined Release)
	static TouchMyEdge* g_first;
	// BW1W120 00eb9a48 BW1M119 011cea68 (LHCombined Release)
	static bool32_t g_player_inside[INFLUENCE_CIRCLE_PLAYER_COUNT];
	// BW1W120 00eb9a68 BW1M119 011f1ddc (LHCombined Release)
	static bool32_t g_b_init;
	// BW1W120 00ea9ef0 BW1M119 011f1dd0 (LHCombined Release)
	static LHPoint g_last_pos;
	// BW1W120 00eb9a6c BW1M119 011f1dcc (LHCombined Release)
	static bool32_t g_b_collide;

	LHPoint      Pos;
	long         Life;
	TouchMyEdge* Next;
	LH3DSprite*  Sprites;
	bool32_t     FirstGrowth[TOUCH_MY_EDGE_RINGS];
	LH3DColor    Colour;
	LHMatrix     Matrix;

	// Constructors

	// BW1W120 00827250 BW1M119 01077dc0 (LHCombined Release)
	TouchMyEdge(LHPoint* pos, LH3DColor colour, float angle);

	// Destructor

	// BW1W120 00827450 BW1M119 010ccec0 (LHCombined Release)
	~TouchMyEdge();

	// Static methods

	// BW1W120 00827670 BW1M119 010af780 (LHCombined Release)
	static void GetIntersect(InfluenceCircle* circle, LHPoint* intersect, LHPoint* inside, LHPoint* outside);
	// BW1W120 008277b0 BW1M119 0113aa40 (LHCombined Release)
	static InfluenceCircle* GetCircle(LHPoint* from, LHPoint* to, long player);
	// BW1W120 00827820 BW1M119 0100b0d0 (LHCombined Release)
	static void Check(LHPoint& pos);

	// Non-virtual methods

	// BW1W120 008274a0 BW1M119 0104f770 (LHCombined Release)
	bool32_t PreDraw();
	// BW1W120 00827500 BW1M119 010b9ce0 (LHCombined Release)
	void PostDraw();
};
static_assert(sizeof(TouchMyEdge) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_TOUCH_MY_EDGE_INCLUDED_H */
