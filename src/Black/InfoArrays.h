#ifndef BW1_DECOMP_INFO_ARRAYS_INCLUDED_H
#define BW1_DECOMP_INFO_ARRAYS_INCLUDED_H

#include <chlasm/CreatureEnum.h> /* For CREATURE_TYPE_LAST */
#include <chlasm/Enum.h>         /* For NUM_REACTION_FUNCTIONS */

// Forward Declares

class GScriptOpposingCreature;
class ReactionInfo;

class GInfoArrays
{
public:
	// BW1W120 00d4f6b0
	static ReactionInfo ReactionInfos[NUM_REACTION_FUNCTIONS];
	// BW1W120 00d95e50
	static GScriptOpposingCreature ScriptOpposingCreatures[CREATURE_TYPE_LAST];
};

#endif /* BW1_DECOMP_INFO_ARRAYS_INCLUDED_H */
