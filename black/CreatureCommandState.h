#ifndef BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H
#define BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureCommandState
{
  struct Base super;  /* 0x0 */
  uint8_t field_0x8[0x14];
  uint32_t field_0x1c;
  uint32_t field_0x20;
  uint32_t field_0x24;
  int field_0x28;
};
static_assert(sizeof(struct CreatureCommandState) == 0x2c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009dd8e0 mac inlined CreatureCommandState::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20CreatureCommandState asm("??_R0?AVCreatureCommandState@@@8");
// win1.41 009aa450 mac inlined CreatureCommandState::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20CreatureCommandState asm("??_R1A@?0A@A@CreatureCommandState@@8");
// win1.41 009aa468 mac inlined CreatureCommandState::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20CreatureCommandState asm("??_R2CreatureCommandState@@8");
// win1.41 009aa478 mac inlined CreatureCommandState::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20CreatureCommandState asm("??_R3CreatureCommandState@@8");
// win1.41 008cf96c mac 10787554 CreatureCommandState::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20CreatureCommandState asm("??_R4CreatureCommandState@@6B@");
// win1.41 008cf970 mac 1078755c CreatureCommandState::`vftable'
extern const struct BaseVftable __vt__20CreatureCommandState asm("??_7CreatureCommandState@@6B@");

// Override methods

// win1.41 004d35e0 mac 10245e50 CreatureCommandState::_dt(void)
void __fastcall __dt__20CreatureCommandStateFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureCommandState@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_COMMAND_STATE_INCLUDED_H */
