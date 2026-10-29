#ifndef BW1_DECOMP_ROOTS_PILE_INCLUDED_H
#define BW1_DECOMP_ROOTS_PILE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For int32_t */

#include "LHPoint.h" /* For struct LHPoint */

// Forward Declares

class LH3DObject;

class RootsPile
{
public:
	// Static members

	// BW1W120 00eb9a00 BW1M119 011f1e34 (LHCombined Release)
	static RootsPile* g_first;

	RootsPile*  Next;
	LH3DObject* Object;
	int32_t     TimeLeft;

	// Constructors

	// BW1W120 008251c0 BW1M119 0109ece0 (LHCombined Release)
	RootsPile(const LHPoint& pos, float angle, float scale, long mesh);
	// BW1W120 008251f0 BW1M119 01047c90 (LHCombined Release)
	RootsPile(LH3DObject* object, long mesh);

	// Destructor

	// BW1W120 00825300 BW1M119 0104e1a0 (LHCombined Release)
	~RootsPile();

	// Static methods

	// BW1W120 00825350 BW1M119 0100b6d0 (LHCombined Release)
	static void DrawAll();

	// Non-virtual methods

	// BW1W120 00825240 BW1M119 0107ced0 (LHCombined Release)
	void Init(const LHPoint& pos, float angle, float scale, long mesh);
};
static_assert(sizeof(RootsPile) == 0xc, "Data type is of wrong size");

#endif /* BW1_DECOMP_ROOTS_PILE_INCLUDED_H */
