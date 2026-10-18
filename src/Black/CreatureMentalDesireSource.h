#ifndef BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */

// Forward Declares

class Creature;

struct CreatureDesireSource
{
	float                  Value;
	float                  Threshold;
	float                  AccumulatedIncrement;
	CREATURE_DESIRE_SOURCE Type;

	// Constructors

	// BW1W120 004de150 BW1M119 01261c00
	CreatureDesireSource(CREATURE_DESIRE_SOURCE type, Creature* creature);
};
static_assert(sizeof(CreatureDesireSource) == 0x10, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_DESIRE_SOURCE_INCLUDED_H */
