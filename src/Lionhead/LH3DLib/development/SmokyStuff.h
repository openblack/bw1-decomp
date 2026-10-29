#ifndef BW1_DECOMP_SMOKY_STUFF_INCLUDED_H
#define BW1_DECOMP_SMOKY_STUFF_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "LH3DColor.h" /* For struct LH3DColor */
#include "LHPoint.h"   /* For struct LHPoint */

// Forward Declares

struct LH3DSprite;

#define SMOKY_STUFF_PUFFS 15

struct SmokyStuff
{
	// BW1W120 00eb99cc BW1M119 011f1e70 (LHCombined Release)
	static SmokyStuff* g_first;
	// BW1W120 00c383cc BW1M119 011cea30 (LHCombined Release)
	static float g_dt;

	LHPoint     Directions[SMOKY_STUFF_PUFFS];
	SmokyStuff* Next;
	LH3DSprite* Sprites;
	float       Life;
	long        Type;
	float       Size;
	LH3DColor   Color;

	// Static methods

	// BW1W120 00823c90 BW1M119 010bcfc0 (LHCombined Release)
	static SmokyStuff* Create(const LHPoint* pos, long type, float size, LH3DColor color);
	// BW1W120 00824140 BW1M119 0100af90 (LHCombined Release)
	static void ProcessAll();

	// Non-virtual methods

	// BW1W120 00823f20 BW1M119 010a1f10 (LHCombined Release)
	void Release();
	// BW1W120 00823f70 BW1M119 010c8e90 (LHCombined Release)
	void Process();
};
static_assert(sizeof(SmokyStuff) == 0xcc, "Data type is of wrong size");

#endif /* BW1_DECOMP_SMOKY_STUFF_INCLUDED_H */
