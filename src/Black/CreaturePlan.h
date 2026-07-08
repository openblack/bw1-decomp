#ifndef BW1_DECOMP_CREATURE_PLAN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>         /* For enum CREATURE_DESIRES */

#include "Base.h" /* For struct Base */

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureMental;

class CreaturePlan : public Base
{
public:
	CREATURE_DESIRES creature_desire; /* 0x8 */
	CreatureBelief*  field_0xc;
	CreatureBelief*  field_0x10;
	CreatureBelief*  field_0x14;
	CREATURE_ACTION  creature_action;
	float            field_0x1c;
	float            field_0x20;
	float            field_0x24;
	float            field_0x28;
	float            field_0x2c;

	// Override methods

	// BW1W120 00473b70 BW1M100 10278860 CreaturePlan::_dt(void)
	virtual ~CreaturePlan();

	// Constructors

	// BW1W120 004f1230 BW1M100 10278a10 CreaturePlan::CreaturePlan(CREATURE_DESIRES, CREATURE_ACTION, CreatureBelief *, CreatureBelief *, CreatureBelief *, float)
	CreaturePlan(CREATURE_DESIRES param_1, CREATURE_ACTION param_2, CreatureBelief* param_3, CreatureBelief* param_4,
	             CreatureBelief* param_5, float param_6);
};

struct CreaturePlanState
{
	CreaturePlan     plans[0x28]; /* 0x0 */
	uint32_t         field_0x780;
	uint32_t         field_0x784;
	CREATURE_DESIRES desires[0x28];
	uint32_t         field_0x788; /* 0x828 */
	int              desire_count;

	// Constructors

	// BW1W120 004f1380 BW1M100 10278510 CreaturePlanState::CreaturePlanState(void)
	CreaturePlanState();

	// Non-virtual methods

	// BW1W120 004f13e0 BW1M100 10278490 CreaturePlanState::Initialise(CreatureMental *)
	void Initialise(CreatureMental* mental);
	// BW1W120 004f1480 BW1M100 10278340 CreaturePlanState::SetupRemainingGoalsToPlanFor(Creature *)
	void SetupRemainingGoalsToPlanFor(Creature* creature);
};

class CreatureTimeToWait : public Base
{
public:
	// Override methods

	// BW1W120 004e34e0 BW1M100 inlined CreatureTimeToWait::_dt(void)
	virtual ~CreatureTimeToWait();
};

#endif /* BW1_DECOMP_CREATURE_PLAN_INCLUDED_H */
