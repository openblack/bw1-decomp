#ifndef BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H
#define BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureCommand
{
  struct Base super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureCommand) == 0x8, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009d9810 mac inlined CreatureCommand::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15CreatureCommand asm("??_R0?AVCreatureCommand@@@8");
// win1.41 009a9be0 mac inlined CreatureCommand::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15CreatureCommand asm("??_R1A@?0A@A@CreatureCommand@@8");
// win1.41 009a9bf8 mac inlined CreatureCommand::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15CreatureCommand asm("??_R2CreatureCommand@@8");
// win1.41 009a9c08 mac inlined CreatureCommand::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15CreatureCommand asm("??_R3CreatureCommand@@8");

// Override methods

// win1.41 004c7420 mac inlined CreatureCommand::_dt(void)
void __fastcall __dt__15CreatureCommandFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureCommand@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_DIRECT_CONTROL_INCLUDED_H */
