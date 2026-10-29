#ifndef BW1_DECOMP_DANS_LES_NUAGES_INCLUDED_H
#define BW1_DECOMP_DANS_LES_NUAGES_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <re_common.h> /* For bool32_t */

#include "LHPoint.h" /* For struct LHPoint */

#define DANS_LES_NUAGES_SPRITES 2

// Forward Declares

struct LH3DSprite;

class DansLesNuages
{
public:
	// Static members

	// BW1W120 00eb9a90 BW1M119 011f1dc0 (LHCombined Release)
	static DansLesNuages* g_first;

	DansLesNuages* Next;
	LH3DSprite*    Sprites;
	float          Frames[DANS_LES_NUAGES_SPRITES];
	LHPoint        Offsets[DANS_LES_NUAGES_SPRITES];
	long           Time;

	// Constructors

	// BW1W120 00828db0 BW1M119 010d9070 (LHCombined Release)
	DansLesNuages();

	// Destructor

	// BW1W120 00828e20 BW1M119 010a0e50 (LHCombined Release)
	~DansLesNuages();

	// Static methods

	// BW1W120 00828e50 BW1M119 0100ae30 (LHCombined Release)
	static void DrawAll();

	// Non-virtual methods

	// BW1W120 00828a70 BW1M119 010c04a0 (LHCombined Release)
	bool32_t Draw();
};
static_assert(sizeof(DansLesNuages) == 0x2c, "Data type is of wrong size");

#endif /* BW1_DECOMP_DANS_LES_NUAGES_INCLUDED_H */
