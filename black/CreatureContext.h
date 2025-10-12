#ifndef BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H
#define BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/CreatureEnum.h> /* For enum CREATURE_DESIRE_SOURCE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */
#include "CreatureAction.h" /* For struct CreatureActionContextStart */
#include "CreaturePlan.h" /* For struct CreaturePlan */

// Forward Declares

struct Creature;

struct CreatureContext
{
  struct Base super;  /* 0x0 */
  struct CreaturePlan plan;
  uint8_t field_0x38[0xc];
  int field_0x44;
  uint8_t field_0x48[0xc];
  uint32_t field_0x54;
  enum CREATURE_DESIRE_SOURCE desire_source;
  struct CreatureActionContextStart field_0x5c;
};
static_assert(sizeof(struct CreatureContext) == 0x70, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd720 mac inlined CreatureContext::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CreatureContext asm("??_R0?AVCreatureContext@@@8");
// win1.41 009aa220 mac inlined CreatureContext::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CreatureContext asm("??_R1A@?0A@A@CreatureContext@@8");
// win1.41 009aa238 mac inlined CreatureContext::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CreatureContext asm("??_R2CreatureContext@@8");
// win1.41 009aa248 mac inlined CreatureContext::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CreatureContext asm("??_R3CreatureContext@@8");

// Override methods

// win1.41 004cfe60 mac 101da7e0 CreatureContext::_dt(void)
void __fastcall __dt__15CreatureContextFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureContext@@UAEPAXI@Z");

struct PreviousContextStack
{
  struct Creature* creature;  /* 0x0 */
  uint8_t field_0x4[0x1c];
  uint32_t field_0x20;
  uint32_t field_0x24;
  struct CreatureContext contexts[0x5];
};
static_assert(sizeof(struct PreviousContextStack) == 0x258, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_CONTEXT_INCLUDED_H */
