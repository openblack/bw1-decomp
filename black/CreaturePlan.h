#ifndef BW1_DECOMP_CREATURE_PLAN_INCLUDED_H
#define BW1_DECOMP_CREATURE_PLAN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

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

// Object Oriented datastructures

// win1.41 009cf928 mac inlined CreaturePlan::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12CreaturePlan asm("??_R0?AVCreaturePlan@@@8");
// win1.41 009a9450 mac inlined CreaturePlan::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12CreaturePlan asm("??_R1A@?0A@A@CreaturePlan@@8");
// win1.41 009a9468 mac inlined CreaturePlan::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12CreaturePlan asm("??_R2CreaturePlan@@8");
// win1.41 009a9478 mac inlined CreaturePlan::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12CreaturePlan asm("??_R3CreaturePlan@@8");
// win1.41 008cc7c8 mac 1098d1c0 CreaturePlan::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__12CreaturePlan asm("??_R4CreaturePlan@@6B@");
// win1.41 008cc7cc mac 1098d1c8 CreaturePlan::`vftable'
extern const struct BaseVftable __vt__12CreaturePlan asm("??_7CreaturePlan@@6B@");

// Constructors

// win1.41 004f1230 mac 10278a10 CreaturePlan::CreaturePlan(CREATURE_DESIRES, CREATURE_ACTION, CreatureBelief *, CreatureBelief *, CreatureBelief *, float)
struct CreaturePlan* __fastcall __ct__12CreaturePlanF16CREATURE_DESIRES15CREATURE_ACTIONP14CreatureBeliefP14CreatureBeliefP14CreatureBelieff(struct CreaturePlan* this, const void* edx, enum CREATURE_DESIRES param_1, enum CREATURE_ACTION param_2, struct CreatureBelief* param_3, struct CreatureBelief* param_4, struct CreatureBelief* param_5, float param_6) asm("??0CreaturePlan@@QAE@W4CREATURE_DESIRES@@W4CREATURE_ACTION@@PAVCreatureBelief@@22M@Z");

// Override methods

// win1.41 00473b70 mac 10278860 CreaturePlan::_dt(void)
void __fastcall __dt__12CreaturePlanFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePlan@@UAEPAXI@Z");

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
struct CreaturePlanState* __fastcall __ct__17CreaturePlanStateFv(struct CreaturePlanState* this) asm("??0CreaturePlanState@@QAE@XZ");

// Non-virtual methods

// win1.41 004f13e0 mac 10278490 CreaturePlanState::Initialise(CreatureMental *)
void __fastcall Initialise__17CreaturePlanStateFP14CreatureMental(struct CreaturePlanState* this, const void* edx, struct CreatureMental* mental) asm("?Initialise@CreaturePlanState@@QAEXPAVCreatureMental@@@Z");
// win1.41 004f1480 mac 10278340 CreaturePlanState::SetupRemainingGoalsToPlanFor(Creature *)
void __fastcall SetupRemainingGoalsToPlanFor__17CreaturePlanStateFP8Creature(struct CreaturePlanState* this, const void* edx, struct Creature* creature) asm("?SetupRemainingGoalsToPlanFor@CreaturePlanState@@QAEXPAVCreature@@@Z");

struct CreatureTimeToWait
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureTimeToWait) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdfe90 mac inlined CreatureTimeToWait::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18CreatureTimeToWait asm("??_R0?AVCreatureTimeToWait@@@8");
// win1.41 009ab088 mac inlined CreatureTimeToWait::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18CreatureTimeToWait asm("??_R1A@?0A@A@CreatureTimeToWait@@8");
// win1.41 009ab0a0 mac inlined CreatureTimeToWait::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18CreatureTimeToWait asm("??_R2CreatureTimeToWait@@8");
// win1.41 009ab0b0 mac inlined CreatureTimeToWait::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18CreatureTimeToWait asm("??_R3CreatureTimeToWait@@8");

// Override methods

// win1.41 004e34e0 mac inlined CreatureTimeToWait::_dt(void)
void __fastcall __dt__18CreatureTimeToWaitFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureTimeToWait@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_PLAN_INCLUDED_H */
