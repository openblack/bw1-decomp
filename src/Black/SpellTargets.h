#ifndef BW1_DECOMP_SPELL_TARGETS_INCLUDED_H
#define BW1_DECOMP_SPELL_TARGETS_INCLUDED_H

#include <assert.h>
#include <stddef.h>

#include <Lionhead/LH3DLib/development/LHPoint.h>
#include <Lionhead/LHLib/ver5.0/GJVector.h>

#include "GTPointer.h"

class GameThing;

class SpellTargets
{
public:
	GJVector<GTPointer<GameThing> > Objects;       /* 0x0 */
	GJVector<LHPoint>               Points;        /* 0x14 */
	long                            CurrentTarget; /* 0x28 */

	// Also inlined in BW1M119 PSysManager constructors.
	// BW1W120 00670b60
	SpellTargets() : CurrentTarget(0)
	{
		Points.Clear();
		Objects.Clear();
	}

	// Vector destructors release storage after the clears.
	// BW1W120 00670bc0
	~SpellTargets()
	{
		Points.Clear();
		Objects.Clear();
	}
};

static_assert(offsetof(SpellTargets, Points) == 0x14, "SpellTargets points offset is incorrect");
static_assert(offsetof(SpellTargets, CurrentTarget) == 0x28, "SpellTargets index offset is incorrect");
static_assert(sizeof(SpellTargets) == 0x2c, "SpellTargets size is incorrect");

#endif /* BW1_DECOMP_SPELL_TARGETS_INCLUDED_H */
