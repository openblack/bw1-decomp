#ifndef BW1_DECOMP_CREATURE_DESIRE_SOURCE_ENTRY_INCLUDED_H
#define BW1_DECOMP_CREATURE_DESIRE_SOURCE_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_DESIRE_SOURCES */

class Creature;

struct CreatureDesireSourceEntry
{
	float (Creature::*Get)();
	void (Creature::*Set)(float value);

	// BW1W120 00c8d478 BW1M119 01964154
	static CreatureDesireSourceEntry Table[NUM_CREATURE_DESIRE_SOURCES];
};
static_assert(sizeof(CreatureDesireSourceEntry) == 0x20, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_DESIRE_SOURCE_ENTRY_INCLUDED_H */
