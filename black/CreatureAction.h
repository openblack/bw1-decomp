#ifndef BW1_DECOMP_CREATURE_ACTION_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTION_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For NUM_CREATURE_ACTIONS */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "BaseInfo.h" /* For struct GBaseInfo */
#include "CreatureMorph.h" /* For struct LH3DCreature */

// Forward Declares

struct CreatureContext;
struct Morphable;

enum CREATURE_SUB_STATE_ACTIONS
{
  CREATURE_SUB_STATE_ACTIONS_0 = 0x0,
  _CREATURE_SUB_STATE_ACTIONS_COUNT = 0x1
};
static_assert(sizeof(enum CREATURE_SUB_STATE_ACTIONS) == 0x4, "Data type is of wrong size");

static const char* CREATURE_SUB_STATE_ACTIONS_strs[_CREATURE_SUB_STATE_ACTIONS_COUNT] = {
  "CREATURE_SUB_STATE_ACTIONS_0",
};

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
struct CreatureActionContext* __fastcall __ct__21CreatureActionContextFR15CreatureContextf(struct CreatureActionContext* this, const void* edx, struct CreatureContext* context, float param_2) asm("??0CreatureActionContext@@QAE@AAVCreatureContext@@M@Z");

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
struct CreatureActionOpinions* __fastcall __ct__22CreatureActionOpinionsFPC12CreatureInfo(struct CreatureActionOpinions* this) asm("??0CreatureActionOpinions@@QAE@PBVCreatureInfo@@@Z");

struct CreaturePreviousActions
{
  struct Base super;  /* 0x0 */
  float field_0x8[NUM_CREATURE_ACTIONS];
};
static_assert(sizeof(struct CreaturePreviousActions) == 0x528, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be02d8 mac inlined CreaturePreviousActions::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23CreaturePreviousActions asm("??_R0?AVCreaturePreviousActions@@@8");
// win1.41 009ab390 mac inlined CreaturePreviousActions::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23CreaturePreviousActions asm("??_R1A@?0A@A@CreaturePreviousActions@@8");
// win1.41 009ab3a8 mac inlined CreaturePreviousActions::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23CreaturePreviousActions asm("??_R2CreaturePreviousActions@@8");
// win1.41 009ab3b8 mac inlined CreaturePreviousActions::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23CreaturePreviousActions asm("??_R3CreaturePreviousActions@@8");
// win1.41 008d1548 mac 107875fc CreaturePreviousActions::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__23CreaturePreviousActions asm("??_R4CreaturePreviousActions@@6B@");
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

// Object Oriented datastructures

// win1.41 00bdfda8 mac inlined CreatureActionKnownAbout::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureActionKnownAbout asm("??_R0?AVCreatureActionKnownAbout@@@8");
// win1.41 009aaf90 mac inlined CreatureActionKnownAbout::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureActionKnownAbout asm("??_R1A@?0A@A@CreatureActionKnownAbout@@8");
// win1.41 009aafa8 mac inlined CreatureActionKnownAbout::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureActionKnownAbout asm("??_R2CreatureActionKnownAbout@@8");
// win1.41 009aafb8 mac inlined CreatureActionKnownAbout::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureActionKnownAbout asm("??_R3CreatureActionKnownAbout@@8");

// Override methods

// win1.41 004e29b0 mac 10266bf0 CreatureActionKnownAbout::_dt(void)
void __fastcall __dt__24CreatureActionKnownAboutFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionKnownAbout@@UAEPAXI@Z");

struct CreatureActionKnownAboutEntry
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureActionKnownAboutEntry) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdfe00 mac inlined CreatureActionKnownAboutEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__29CreatureActionKnownAboutEntry asm("??_R0?AVCreatureActionKnownAboutEntry@@@8");
// win1.41 009aafe0 mac inlined CreatureActionKnownAboutEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__29CreatureActionKnownAboutEntry asm("??_R1A@?0A@A@CreatureActionKnownAboutEntry@@8");
// win1.41 009aaff8 mac inlined CreatureActionKnownAboutEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__29CreatureActionKnownAboutEntry asm("??_R2CreatureActionKnownAboutEntry@@8");
// win1.41 009ab008 mac inlined CreatureActionKnownAboutEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__29CreatureActionKnownAboutEntry asm("??_R3CreatureActionKnownAboutEntry@@8");

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

// Object Oriented datastructures

// win1.41 00be9c18 mac inlined CreatureFalling::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CreatureFalling asm("??_R0?AVCreatureFalling@@@8");
// win1.41 009abfc0 mac inlined CreatureFalling::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CreatureFalling asm("??_R1A@?0A@A@CreatureFalling@@8");
// win1.41 009abfd8 mac inlined CreatureFalling::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CreatureFalling asm("??_R2CreatureFalling@@8");
// win1.41 009abff0 mac inlined CreatureFalling::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CreatureFalling asm("??_R3CreatureFalling@@8");

// Override methods

// win1.41 004803d0 mac inlined CreatureFalling::SetAnimTime(long, long)
void __fastcall SetAnimTime__15CreatureFallingFll(struct Morphable* this, const void* edx, int param_1, int param_2) asm("?SetAnimTime@CreatureFalling@@UAEXHH@Z");

struct CreatureMagicActionKnownAboutEntry
{
  struct CreatureActionKnownAboutEntry super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureMagicActionKnownAboutEntry) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdfe30 mac inlined CreatureMagicActionKnownAboutEntry::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__34CreatureMagicActionKnownAboutEntry asm("??_R0?AVCreatureMagicActionKnownAboutEntry@@@8");
// win1.41 009ab030 mac inlined CreatureMagicActionKnownAboutEntry::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__34CreatureMagicActionKnownAboutEntry asm("??_R1A@?0A@A@CreatureMagicActionKnownAboutEntry@@8");
// win1.41 009ab048 mac inlined CreatureMagicActionKnownAboutEntry::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__34CreatureMagicActionKnownAboutEntry asm("??_R2CreatureMagicActionKnownAboutEntry@@8");
// win1.41 009ab060 mac inlined CreatureMagicActionKnownAboutEntry::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__34CreatureMagicActionKnownAboutEntry asm("??_R3CreatureMagicActionKnownAboutEntry@@8");

// Override methods

// win1.41 004e2e50 mac 10267580 CreatureMagicActionKnownAboutEntry::_dt(void)
void __fastcall __dt__34CreatureMagicActionKnownAboutEntryFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureMagicActionKnownAboutEntry@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_ACTION_INCLUDED_H */
