#ifndef BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H
#define BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H

#include <assert.h>    /* For static_assert */
#include <re_common.h> /* For bool32_t */

#include "Base.h"               /* For struct Base */
#include "CreatureBeliefType.h" /* For CREATURE_BELIEF_TYPE_LAST */

class CreatureObjectsInspected : public Base
{
public:
	bool32_t Inspected[CREATURE_BELIEF_TYPE_LAST];

	// BW1W120 004e3500 BW1M119 0126aca0
	CreatureObjectsInspected();
};
static_assert(sizeof(CreatureObjectsInspected) == 0x68, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_OBJECTS_INSPECTED_INCLUDED_H */
