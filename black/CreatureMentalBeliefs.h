#ifndef BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H
#define BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Base.h" /* For struct Base */

struct CreatureBeliefList
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8;
  uint32_t field_0xc;
  uint32_t field_0x10;
};
static_assert(sizeof(struct CreatureBeliefList) == 0x14, "Data type is of wrong size");

// win1.41 008cf908 mac 10787474 CreatureBeliefList::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18CreatureBeliefList asm("??_R4CreatureBeliefList@@6B@");

// win1.41 008cf90c mac 1078747c CreatureBeliefList::`vftable'
extern const struct BaseVftable __vt__18CreatureBeliefList asm("??_7CreatureBeliefList@@6B@");

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

// win1.41 008cfe54 mac 107874ac AllocatedBeliefList::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__19AllocatedBeliefList asm("??_R4AllocatedBeliefList@@6B@");

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

// win1.41 008cf8e8 mac 109899cc CreatureBeliefs::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__15CreatureBeliefs asm("??_R4CreatureBeliefs@@6B@");

// win1.41 008cf8ec mac 109899d4 CreatureBeliefs::`vftable'
extern const struct BaseVftable __vt__15CreatureBeliefs asm("??_7CreatureBeliefs@@6B@");

// Non-virtual methods

// win1.41 004d8ea0 mac 10250c70 CreatureBeliefs::Initialise(void)
void __fastcall Initialise__15CreatureBeliefsFv(struct CreatureBeliefs* this);

// Override methods

// win1.41 004d2510 mac 10252390 CreatureBeliefs::_dt(void)
void __fastcall __dt__15CreatureBeliefsFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureBeliefs@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_MENTAL_BELIEFS_INCLUDED_H */
