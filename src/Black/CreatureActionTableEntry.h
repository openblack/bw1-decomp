#ifndef BW1_DECOMP_CREATURE_ACTION_TABLE_ENTRY_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_TABLE_ENTRY_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum MAGIC_TYPE */
#include <re_common.h>           /* For bool32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

class Creature;
class CreatureAgenda;
class CreaturePlan;

struct CreatureActionTableEntry
{
	const char* Name;
	bool32_t (Creature::*IsPossible)(CreaturePlan& plan, CREATURE_ACTION action);
	int (CreatureAgenda::*ConstructSubActions)(unsigned long action_argument);
	MAGIC_TYPE MagicType;
	bool32_t (GameThingWithPos::*IsValidObjectToActOn)(Creature* creature);
	bool32_t (GameThingWithPos::*IsValidObjectToUse)(Creature* creature);
	bool32_t (GameThingWithPos::*IsValidObjectToUseToo)(Creature* creature);
	uint32_t (GameThingWithPos::*AttitudeToCreature)();
	bool32_t NeedsObjectToUse;
	float (GameThingWithPos::*UsefulnessMultiplier)(Creature* creature);
};
static_assert(sizeof(CreatureActionTableEntry) == 0x50, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ACTION_TABLE_ENTRY_INCLUDED_H */
