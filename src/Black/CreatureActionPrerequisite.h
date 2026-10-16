#ifndef BW1_DECOMP_CREATURE_ACTION_PREREQUISITE_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_PREREQUISITE_INCLUDED_H

#include <assert.h> /* For static_assert */

#include <chlasm/Enum.h> /* For enum CREATURE_ACTION_LEARNING_TYPE, MAGIC_TYPE_LAST */

struct CreatureActionPrerequisite
{
	CREATURE_ACTION_LEARNING_TYPE Type;
	unsigned long                 Action;

	// BW1W120 00bdfae0
	static CreatureActionPrerequisite Table[CREATURE_ACTION_LEARNING_TYPE_LAST][MAGIC_TYPE_LAST];
};
static_assert(sizeof(CreatureActionPrerequisite) == 0x8, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ACTION_PREREQUISITE_INCLUDED_H */
