#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

// Forward Declares

struct Creature;
struct GameThingWithPos;

struct CreatureBeliefList
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct CreatureBeliefList) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd898 mac inlined CreatureBeliefList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18CreatureBeliefList asm("??_R0?AVCreatureBeliefList@@@8");
// win1.41 009aa3b0 mac inlined CreatureBeliefList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18CreatureBeliefList asm("??_R1A@?0A@A@CreatureBeliefList@@8");
// win1.41 009aa3c8 mac inlined CreatureBeliefList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18CreatureBeliefList asm("??_R2CreatureBeliefList@@8");
// win1.41 009aa3d8 mac inlined CreatureBeliefList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18CreatureBeliefList asm("??_R3CreatureBeliefList@@8");
// win1.41 008cf908 mac 10787474 CreatureBeliefList::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18CreatureBeliefList asm("??_R4CreatureBeliefList@@6B@");
// win1.41 008cf90c mac 1078747c CreatureBeliefList::`vftable'
extern const struct BaseVftable __vt__18CreatureBeliefList asm("??_7CreatureBeliefList@@6B@");

// Non-virtual methods

// win1.41 004d7bb0 mac 10253e30 CreatureBeliefList::GetBeliefAboutObject(GameThingWithPos *)
void* __fastcall GetBeliefAboutObject__18CreatureBeliefListFP16GameThingWithPos(struct CreatureBeliefList* this, const void* edx, struct GameThingWithPos* param_1) asm("?GetBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVGameThingWithPos@@@Z");
// win1.41 004d7ce0 mac 10253b10 CreatureBeliefList::AddBeliefAboutObject(Creature *, GameThingWithPos *)
void* __fastcall AddBeliefAboutObject__18CreatureBeliefListFP8CreatureP16GameThingWithPos(struct CreatureBeliefList* this, const void* edx, struct Creature* param_1, struct GameThingWithPos* param_2) asm("?AddBeliefAboutObject@CreatureBeliefList@@QAEPAXPAVCreature@@PAVGameThingWithPos@@@Z");

// Override methods

// win1.41 004d24f0 mac 10246b60 CreatureBeliefList::_dt(void)
void __fastcall __dt__18CreatureBeliefListFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefList@@UAEPAXI@Z");

struct AllocatedBeliefList
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
  uint32_t field_0x14;
};
static_assert(sizeof(struct AllocatedBeliefList) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf390 mac inlined AllocatedBeliefList::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__19AllocatedBeliefList asm("??_R0?AVAllocatedBeliefList@@@8");
// win1.41 009aaa40 mac inlined AllocatedBeliefList::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__19AllocatedBeliefList asm("??_R1A@?0A@A@AllocatedBeliefList@@8");
// win1.41 009aaa58 mac inlined AllocatedBeliefList::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__19AllocatedBeliefList asm("??_R2AllocatedBeliefList@@8");
// win1.41 009aaa68 mac inlined AllocatedBeliefList::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__19AllocatedBeliefList asm("??_R3AllocatedBeliefList@@8");
// win1.41 008cfe54 mac 107874ac AllocatedBeliefList::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__19AllocatedBeliefList asm("??_R4AllocatedBeliefList@@6B@");
// win1.41 008cfe58 mac 107874b4 AllocatedBeliefList::`vftable'
extern const struct BaseVftable __vt__19AllocatedBeliefList asm("??_7AllocatedBeliefList@@6B@");

// Override methods

// win1.41 004d7910 mac 10246ad0 AllocatedBeliefList::_dt(void)
void __fastcall __dt__19AllocatedBeliefListFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GAllocatedBeliefList@@UAEPAXI@Z");

struct CreatureBeliefs
{
  struct Base super;  /* 0x0 */
  struct CreatureBeliefList lists[0x2];
  struct AllocatedBeliefList allocated_list;  /* 0x30 */
  uint8_t field_0x48[0x228];
};
static_assert(sizeof(struct CreatureBeliefs) == 0x270, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd878 mac inlined CreatureBeliefs::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CreatureBeliefs asm("??_R0?AVCreatureBeliefs@@@8");
// win1.41 009aa360 mac inlined CreatureBeliefs::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CreatureBeliefs asm("??_R1A@?0A@A@CreatureBeliefs@@8");
// win1.41 009aa378 mac inlined CreatureBeliefs::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CreatureBeliefs asm("??_R2CreatureBeliefs@@8");
// win1.41 009aa388 mac inlined CreatureBeliefs::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CreatureBeliefs asm("??_R3CreatureBeliefs@@8");
// win1.41 008cf8e8 mac 109899cc CreatureBeliefs::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15CreatureBeliefs asm("??_R4CreatureBeliefs@@6B@");
// win1.41 008cf8ec mac 109899d4 CreatureBeliefs::`vftable'
extern const struct BaseVftable __vt__15CreatureBeliefs asm("??_7CreatureBeliefs@@6B@");

// Non-virtual methods

// win1.41 004d8ea0 mac 10250c70 CreatureBeliefs::Initialise(void)
void __fastcall Initialise__15CreatureBeliefsFv(struct CreatureBeliefs* this) asm("?Initialise@CreatureBeliefs@@QAEXXZ");

// Override methods

// win1.41 004d2510 mac 10252390 CreatureBeliefs::_dt(void)
void __fastcall __dt__15CreatureBeliefsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefs@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H */
