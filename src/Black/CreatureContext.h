#ifndef BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H
#define BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */

#include "Base.h"           /* For struct Base */
#include "CreatureAction.h" /* For struct CreatureActionContextStart */
#include "CreaturePlan.h"   /* For struct CreaturePlan */

// Forward Declares

class Creature;
class CreatureBelief;

class CreatureContext : public Base
{
public:
	CreaturePlan               plan; /* 0x8 */
	uint8_t                    field_0x38[0xc];
	int                        field_0x44;
	uint8_t                    field_0x48[0xc];
	uint32_t                   field_0x54;
	CREATURE_DESIRE_SOURCE     DesireSource;
	CreatureActionContextStart ActionContextStart;

	// BW1W120 004e1b80 BW1M119 012669f0
	CreatureContext(Creature* creature, CreaturePlan& plan, CREATURE_DESIRE_SOURCE desire_source, int param_4,
	                CreatureBelief* context_belief);
	// BW1W120 004e1c50 BW1M119 01266900
	void CleanUp();
};

struct PreviousContextStack
{
	Creature*       creature; /* 0x0 */
	uint8_t         field_0x4[0x1c];
	uint32_t        field_0x20;
	uint32_t        field_0x24;
	CreatureContext contexts[0x5];
};

#endif /* BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H */
