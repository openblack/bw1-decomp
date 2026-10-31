#ifndef BW1_DECOMP_CREATURE_DEVELOPMENT_PHASE_FUNCTIONS_INCLUDED_H
#define BW1_DECOMP_CREATURE_DEVELOPMENT_PHASE_FUNCTIONS_INCLUDED_H

#include <chlasm/CreatureEnum.h> /* For DEVELOPMENT_PHASE_LAST */
#include <re_common.h>           /* For bool32_t */

// Forward Declares

class Creature;

struct CreatureDevelopmentPhaseFunctions
{
	bool32_t (Creature::*HasFinished)();
	bool32_t (Creature::*OnFinished)();

	// BW1W120 00c82660
	static CreatureDevelopmentPhaseFunctions Table[DEVELOPMENT_PHASE_LAST];
};

#endif /* BW1_DECOMP_CREATURE_DEVELOPMENT_PHASE_FUNCTIONS_INCLUDED_H */
