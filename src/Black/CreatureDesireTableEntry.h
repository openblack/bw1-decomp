#ifndef BW1_DECOMP_CREATURE_DESIRE_TABLE_ENTRY_INCLUDED_H
#define BW1_DECOMP_CREATURE_DESIRE_TABLE_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/CreatureSpec.h> /* For enum CREATURE_ANIMATIONS */
#include <chlasm/Enum.h>         /* For NUM_CREATURE_DESIRES */
#include <re_common.h>           /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

class Creature;

struct CreatureDesireTableEntry
{
	bool32_t (Creature::*IsApplicable)();
	bool32_t (GameThingWithPos::*IsValidActivityObject)(Creature* creature);
	bool32_t (GameThingWithPos::*IsValidObjectToActOn)(Creature* creature);
	bool32_t            Manifestable;
	CREATURE_ANIMATIONS ManifestAnimation;
	bool32_t            NeedsSeparateObjectToActOn;
	float (GameThingWithPos::*UsefulnessMultiplier)(Creature* creature);

	// BW1W120 00c87850
	static CreatureDesireTableEntry Table[NUM_CREATURE_DESIRES];
};
static_assert(sizeof(CreatureDesireTableEntry) == 0x28, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_DESIRE_TABLE_ENTRY_INCLUDED_H */
