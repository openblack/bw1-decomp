#ifndef BW1_DECOMP_CREATURE_PLAN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h>           /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h>                   /* For enum CREATURE_DESIRES, NUM_CREATURE_DESIRES */
#include <Lionhead/LHLib/ver5.0/LHStack.h> /* For struct LHStack */
#include <re_common.h>                     /* For bool32_t */

#include "Base.h" /* For struct Base */

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureInfo;
class CreatureMental;

#define MAX_ACTIONS_TRIED 31

typedef LHStack<CREATURE_DESIRES, NUM_CREATURE_DESIRES + 1> CreatureDesiresTried;
typedef LHStack<CREATURE_ACTION, MAX_ACTIONS_TRIED>         CreatureActionsTried;

class CreaturePlan : public Base
{
public:
	CREATURE_DESIRES CreatureDesire; /* 0x8 */
	CreatureBelief*  ActivityObject; /* 0xc */
	CreatureBelief*  ObjectToActOn;  /* 0x10 */
	CreatureBelief*  ObjectToUse;    /* 0x14 */
	CREATURE_ACTION  creature_action;
	float            ActivityPriority;
	float            ObjectToActOnPriority;
	float            ObjectToUsePriority;
	float            ActionPriority;
	float            AgendaPriority;

	// Override methods

	// BW1W120 004f12d0 BW1M119 0127c5c0
	virtual ~CreaturePlan();

	// Constructors

	// BW1W120 inlined BW1M119 0127c3b0
	CreaturePlan() { Clear(); }
	// BW1W120 004f1230 BW1M119 0127c760
	CreaturePlan(CREATURE_DESIRES desire, CREATURE_ACTION action, CreatureBelief* activity_object,
	             CreatureBelief* object_to_act_on, CreatureBelief* object_to_use, float priority);

	// Non-virtual methods

	// BW1W120 004f1270 BW1M119 0127c6b0
	void Force(CREATURE_DESIRES desire, CREATURE_ACTION action, CreatureBelief* activity_object,
	           CreatureBelief* object_to_act_on, CreatureBelief* object_to_use, float priority);
	// BW1W120 004f12b0 BW1M119 0127c650
	void Clear();
	// BW1W120 004f12e0 BW1M119 0127c4e0
	bool32_t IsValid();
	// BW1W120 004f1340 BW1M119 0127c430
	bool32_t IsActivityValid();
};
static_assert(sizeof(CreaturePlan) == 0x30, "Data type is of wrong size");

struct CreaturePlanState
{
	CreaturePlan         plans[NUM_CREATURE_DESIRES];
	int                  BestPlan;
	CREATURE_DESIRES     CurrentGoal;
	CreatureDesiresTried RemainingGoals;

	// Constructors

	// BW1W120 004f1380 BW1M119 0127c280
	CreaturePlanState();

	// Non-virtual methods

	// BW1W120 004f13e0 BW1M119 0127c200
	void Initialise(CreatureMental* mental);
	// BW1W120 004f1410 BW1M119 inlined
	void FindBestPlan();
	// BW1W120 004f1480 BW1M119 0127c0b0
	void SetupRemainingGoalsToPlanFor(Creature* creature);
};
static_assert(sizeof(CreaturePlanState) == 0x830, "Data type is of wrong size");

class CreatureTimeToWait : public Base
{
public:
	uint32_t field_0x8;
	uint32_t field_0xc;
	uint32_t field_0x10;

	// BW1W120 004e34a0 BW1M119 null
	CreatureTimeToWait(const CreatureInfo* info);
};
static_assert(sizeof(CreatureTimeToWait) == 0x14, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_PLAN_INCLUDED_H */
