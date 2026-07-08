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

class CreatureContext : public Base
{
public:
	CreaturePlan               plan; /* 0x8 */
	uint8_t                    field_0x38[0xc];
	int                        field_0x44;
	uint8_t                    field_0x48[0xc];
	uint32_t                   field_0x54;
	CREATURE_DESIRE_SOURCE     desire_source;
	CreatureActionContextStart field_0x5c;

	// Override methods

	// BW1W120 004cfe60 BW1M100 101da7e0 CreatureContext::_dt(void)
	virtual ~CreatureContext();
};

#endif /* BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H */
