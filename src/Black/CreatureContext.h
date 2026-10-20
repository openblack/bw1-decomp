#ifndef BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H
#define BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */
#include <re_common.h>           /* For bool32_t */

#include "Base.h"           /* For struct Base */
#include "CreatureAction.h" /* For NUM_ACTION_CONTEXT_VALUES */
#include "CreaturePlan.h"   /* For struct CreaturePlan */

// Forward Declares

class Creature;
class CreatureBelief;

enum CREATURE_CONTEXT_SELECTION
{
	CREATURE_CONTEXT_SELECTION_CURRENT = 0x0,
	CREATURE_CONTEXT_SELECTION_CURRENT_AS_PREVIOUS_TOO_OLD = 0x1,
	CREATURE_CONTEXT_SELECTION_PREVIOUS = 0x2,
	CREATURE_CONTEXT_SELECTION_SELECTED = 0x3,
	CREATURE_CONTEXT_SELECTION_OLDEST = 0x5
};

class CreatureContext : public Base
{
public:
	CreaturePlan               plan; /* 0x8 */
	uint32_t                   field_0x38;
	bool32_t                   WasSeen;
	bool32_t                   HasBeenLearntFrom;
	bool32_t                   ForcedByPlayer;
	bool32_t                   FinishedSuccessfully;
	uint32_t                   GameTurnWasSeen;
	CREATURE_CONTEXT_SELECTION Selection;
	CreatureBelief*            ContextBelief;
	CREATURE_DESIRE_SOURCE     DesireSource;
	float                      ActionContextStart[NUM_ACTION_CONTEXT_VALUES];

	// BW1W120 004e1b40 BW1M119 01266bd0
	CreatureContext();
	// BW1W120 004e1b80 BW1M119 012669f0
	CreatureContext(Creature* creature, CreaturePlan& plan, CREATURE_DESIRE_SOURCE desire_source,
	                bool32_t forced_by_player, CreatureBelief* context_belief);
	// BW1W120 004e1c50 BW1M119 01266900
	void CleanUp();
	// BW1W120 004e0600 BW1M119 01268bb0
	float CalculateLearningPriority();
};
static_assert(sizeof(CreatureContext) == 0x70, "Data type is of wrong size");

#define NUM_PREVIOUS_CONTEXTS 5

struct PreviousContextStack
{
	Creature* creature;                       /* 0x0 */
	void (Creature::*ProcessOldestContext)(); /* 0x10 */
	uint32_t        NextSlot;                 /* 0x20 */
	uint32_t        Size;                     /* 0x24 */
	CreatureContext contexts[NUM_PREVIOUS_CONTEXTS];

	// BW1W120 004f2320 BW1M119 0127e9c0
	PreviousContextStack(Creature* creature, void (Creature::*process_oldest_context)());
	// BW1W120 004f2370 BW1M119 0127e8f0
	~PreviousContextStack();

	// BW1W120 004f23c0 BW1M119 null
	bool32_t HasContexts();
	// BW1W120 004f23d0 BW1M119 0127e6b0
	void Push(const CreatureContext& context);
	// BW1W120 004f25c0 BW1M119 0127e650
	CreatureContext* GetTop();
	// BW1W120 004f25d0 BW1M119 0127e5f0
	CreatureContext* GetNth(unsigned long n);
	// BW1W120 004f25f0 BW1M119 0127e5b0
	unsigned long GetSize();
};
static_assert(sizeof(PreviousContextStack) == 0x258, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H */
