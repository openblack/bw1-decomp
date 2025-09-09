#ifndef BW1_DECOMP_CREATURE_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "CreatureMorph.h" /* For struct LH3DCreature */

// Forward Declares

struct CreatureContext;
struct Morphable;

struct CreatureActionContextStart
{
  uint32_t field_0x0;
  struct CreatureActionContext* field_0x4;
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct CreatureActionContextStart) == 0x14, "Data type is of wrong size");

struct CreatureActionContext
{
  struct CreatureActionContextStart start;  /* 0x0 */
  float field_0x14;
};
static_assert(sizeof(struct CreatureActionContext) == 0x18, "Data type is of wrong size");

// Constructors

// win1.41 004c3960 mac 10230320 CreatureActionContext::CreatureActionContext(CreatureContext &, float)
struct CreatureActionContext* __fastcall __ct__21CreatureActionContextFR15CreatureContextf(struct CreatureActionContext* this, const void* edx, struct CreatureContext* context, float param_2);

struct PreviousActionContextStack
{
  uint32_t indexes[0x2][0x148];  /* 0x0 */
  struct CreatureActionContext stack[0x148][0xa];  /* 0xa40 */
};
static_assert(sizeof(struct PreviousActionContextStack) == 0x13dc0, "Data type is of wrong size");

struct CreatureActionOpinions
{
  uint32_t entries[NUM_CREATURE_ACTIONS];  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionOpinions) == 0x520, "Data type is of wrong size");

// Constructors

// win1.41 004c3930 mac 102303a0 CreatureActionOpinions::CreatureActionOpinions(CreatureInfo const *)
struct CreatureActionOpinions* __fastcall __ct__22CreatureActionOpinionsFPC12CreatureInfo(struct CreatureActionOpinions* this);

struct CreaturePreviousActions
{
  struct Base super;  /* 0x0 */
  float field_0x8[NUM_CREATURE_ACTIONS];
};
static_assert(sizeof(struct CreaturePreviousActions) == 0x528, "Data type is of wrong size");

// win1.41 008d1548 mac 107875fc CreaturePreviousActions::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__23CreaturePreviousActions asm("??_R4CreaturePreviousActions@@6B@");

// win1.41 008d154c mac 10787604 CreaturePreviousActions::`vftable'
extern const struct BaseVftable __vt__23CreaturePreviousActions asm("??_7CreaturePreviousActions@@6B@");

// Override methods

// win1.41 004f2040 mac 10246760 CreaturePreviousActions::_dt(void)
void __fastcall __dt__23CreaturePreviousActionsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreaturePreviousActions@@UAEPAXI@Z");

struct CreatureActionKnownAbout
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionKnownAbout) == 0x8, "Data type is of wrong size");

// Override methods

// win1.41 004e29b0 mac 10266bf0 CreatureActionKnownAbout::_dt(void)
void __fastcall __dt__24CreatureActionKnownAboutFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionKnownAbout@@UAEPAXI@Z");

struct CreatureActionKnownAboutEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionKnownAboutEntry) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004e2db0 mac 102676b0 CreatureActionKnownAboutEntry::_dt(void)
void __fastcall __dt__29CreatureActionKnownAboutEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionKnownAboutEntry@@UAEPAXI@Z");
// win1.41 004e2d50 mac 10267920 CreatureActionKnownAboutEntry::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__29CreatureActionKnownAboutEntryFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureActionKnownAboutEntry@@UAEPAVGBaseInfo@@AAI@Z");

struct CreatureFalling
{
  struct LH3DCreature super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureFalling) == 0x57b8, "Data type is of wrong size");

// Override methods

// win1.41 004803d0 mac inlined CreatureFalling::SetAnimTime(long, long)
void __fastcall SetAnimTime__15CreatureFallingFll(struct Morphable* this, const void* edx, int param_1, int param_2) asm("?SetAnimTime@CreatureFalling@@UAEXHH@Z");

struct CreatureMagicActionKnownAboutEntry
{
  struct CreatureActionKnownAboutEntry super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureMagicActionKnownAboutEntry) == 0x10, "Data type is of wrong size");

// Override methods

// win1.41 004e2e50 mac 10267580 CreatureMagicActionKnownAboutEntry::_dt(void)
void __fastcall __dt__34CreatureMagicActionKnownAboutEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMagicActionKnownAboutEntry@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_ACTION_INCLUDED_H */
