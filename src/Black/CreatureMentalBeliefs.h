#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h"               /* For struct Base */
#include "CreatureBeliefType.h" /* For enum CREATURE_BELIEF_TYPE */

#define NUM_ALLOCATED_TOWN_BELIEFS          40
#define NUM_ALLOCATED_FOREST_BELIEFS        50
#define NUM_ALLOCATED_CITADEL_BELIEFS       20
#define NUM_ALLOCATED_ABODE_BELIEFS         100
#define NUM_ALLOCATED_CITADEL_PART_BELIEFS  50
#define NUM_ALLOCATED_TREE_BELIEFS          100
#define NUM_ALLOCATED_VILLAGER_BELIEFS      100
#define NUM_ALLOCATED_ANIMAL_BELIEFS        100
#define NUM_ALLOCATED_CREATURE_BELIEFS      100
#define NUM_ALLOCATED_MAGIC_LIVING_BELIEFS  30
#define NUM_ALLOCATED_SPELL_BELIEFS         100
#define NUM_ALLOCATED_FIELD_BELIEFS         40
#define NUM_ALLOCATED_ROCK_BELIEFS          100
#define NUM_ALLOCATED_POO_BELIEFS           100
#define NUM_ALLOCATED_MAGIC_FOOD_BELIEFS    100
#define NUM_ALLOCATED_FEATURE_BELIEFS       100
#define NUM_ALLOCATED_POT_BELIEFS           100
#define NUM_ALLOCATED_SPELL_ICON_BELIEFS    100
#define NUM_ALLOCATED_SPELL_SEED_BELIEFS    100
#define NUM_ALLOCATED_MOBILE_OBJECT_BELIEFS 100
#define NUM_ALLOCATED_CONTEXT_BELIEFS       1
#define NUM_ALLOCATED_SMALL_OBJECT_BELIEFS  100
#define NUM_ALLOCATED_FLOCK_BELIEFS         40
#define NUM_ALLOCATED_TOTEM_STATUE_BELIEFS  20

// Forward Declares

class Creature;
class CreatureBelief;
class CreatureMental;
class GameThingWithPos;

class CreatureBeliefList : public Base
{
public:
	CreatureBelief* Head;       /* 0x8 */
	CreatureBelief* Tail;       /* 0xc */
	uint32_t        NumBeliefs; /* 0x10 */

	// Non-virtual methods

	// BW1W120 004d7bb0 BW1M119 012583f0
	CreatureBelief* GetBeliefAboutObject(GameThingWithPos* object);
	// BW1W120 004d7ce0 BW1M119 012580d0
	CreatureBelief* AddBeliefAboutObject(Creature* creature, GameThingWithPos* object);
	// BW1W120 004d7d60 BW1M119 inlined
	void Add(CreatureBelief* belief, CreatureMental* mental);
	// BW1W120 004d8980 BW1M119 01256a70
	void Remove(CreatureBelief* belief);
};
static_assert(sizeof(CreatureBeliefList) == 0x14, "Data type is of wrong size");

class AllocatedBeliefList : public Base
{
public:
	uint32_t        NumBeliefs;    /* 0x8 */
	uint32_t        NumSlotsInUse; /* 0xc */
	CreatureBelief* FirstBelief;   /* 0x10 */
	CreatureBelief* NextSlot;      /* 0x14 */

	// Constructors

	// BW1W120 004d78f0 BW1M119 01258c70
	AllocatedBeliefList();

	// Non-virtual methods

	// BW1W120 004d7930 BW1M119 01258c00
	void AddNewBelief(CreatureBelief* belief);
	// BW1W120 004d7950 BW1M119 012589d0
	CreatureBelief* GetSlot(CreatureMental* mental);
	// BW1W120 004d7ab0 BW1M119 01258710
	void FreeUpSlot(CreatureBelief* belief);
};
static_assert(sizeof(AllocatedBeliefList) == 0x18, "Data type is of wrong size");

class CreatureBeliefs : public Base
{
public:
	CreatureBeliefList  lists[0x2];                                /* 0x8 */
	AllocatedBeliefList AllocatedLists[CREATURE_BELIEF_TYPE_LAST]; /* 0x30 */

	// Override methods

	// BW1W120 004d8a20 BW1M119 01256960
	virtual ~CreatureBeliefs();

	// Non-virtual methods

	// BW1W120 004d8ea0 BW1M119 01255240
	void Initialise();
	// BW1W120 004d8af0 BW1M119 01256740
	uint32_t GetNumBeliefsAboutType(CREATURE_BELIEF_TYPE type);
};
static_assert(sizeof(CreatureBeliefs) == 0x270, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H */
