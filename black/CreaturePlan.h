#ifndef BW1_DECOMP_CREATURE_PLAN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Creature;
struct CreatureBelief;
struct CreatureMental;

struct CreaturePlan
{
  struct Base super;  /* 0x0 */
  enum CREATURE_DESIRES creature_desire;
  struct CreatureBelief* field_0xc;
  struct CreatureBelief* field_0x10;
  struct CreatureBelief* field_0x14;
  enum CREATURE_ACTION creature_action;
  float field_0x1c;
  float field_0x20;
  float field_0x24;
  float field_0x28;
  float field_0x2c;
};
static_assert(sizeof(struct CreaturePlan) == 0x30, "Data type is of wrong size");

// win1.41 008cc7c8 mac 1098d1c0 CreaturePlan::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__12CreaturePlan asm("??_R4CreaturePlan@@6B@");

// win1.41 008cc7cc mac 1098d1c8 CreaturePlan::`vftable'
extern const struct BaseVftable __vt__12CreaturePlan asm("??_7CreaturePlan@@6B@");

struct CreaturePlanState
{
  struct CreaturePlan plans[0x28];  /* 0x0 */
  uint32_t field_0x780;
  uint32_t field_0x784;
  enum CREATURE_DESIRES desires[0x28];
  uint32_t field_0x788;  /* 0x828 */
  int desire_count;
};
static_assert(sizeof(struct CreaturePlanState) == 0x830, "Data type is of wrong size");

// Constructors

// win1.41 004f1380 mac 10278510 CreaturePlanState::CreaturePlanState(void)
struct CreaturePlanState* __fastcall __ct__17CreaturePlanStateFv(struct CreaturePlanState* this);

// Non-virtual methods

// win1.41 004f13e0 mac 10278490 CreaturePlanState::Initialise(CreatureMental *)
void __fastcall Initialise__17CreaturePlanStateFP14CreatureMental(struct CreaturePlanState* this, const void* edx, struct CreatureMental* mental);
// win1.41 004f1480 mac 10278340 CreaturePlanState::SetupRemainingGoalsToPlanFor(Creature *)
void __fastcall SetupRemainingGoalsToPlanFor__17CreaturePlanStateFP8Creature(struct CreaturePlanState* this, const void* edx, struct Creature* creature);

#endif /* BW1_DECOMP_CREATURE_PLAN_INCLUDED_H */
