#ifndef BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H
#define BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS */
#include <re_common.h>   /* For bool32_t */

// Forward Declares

class GameThingWithPos;
class Living;
struct MapCoords;
class Reaction;

struct ReactionFunction
{
	char     Name[64];
	bool32_t TimeLimited;
	bool32_t CanSwitchToSameType;
	bool32_t BeliefButNotReaction;
	void (Living::*SetupFunction)(GameThingWithPos* thing, Reaction* reaction);
	uint8_t (Living::*PriorityFunction)(Reaction* reaction, Reaction* current_reaction);
	uint32_t (Living::*NumGameTurnsToReactFunction)(GameThingWithPos* thing, uint32_t reaction, float distance);
	uint32_t (Living::*NumGameTurnsBeforeReactingAgainFunction)(GameThingWithPos* thing, uint32_t reaction,
	                                                            float distance);
	float (Reaction::*ImpressiveMultiplierFunction)(Living* living);
	MapCoords (Reaction::*GetPosFunction)();
	void (Reaction::*ModifyAlignmentFunction)(Living* living);

	// Static data

	// BW1W120 00c09c80 BW1M119 01730978
	static ReactionFunction Functions[NUM_REACTION_FUNCTIONS];
};
static_assert(sizeof(ReactionFunction) == 0xc0, "Data type is of wrong size");

#endif /* BW1_DECOMP_REACTION_FUNCTION_INCLUDED_H */
