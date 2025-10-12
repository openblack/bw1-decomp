#ifndef BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H
#define BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "Base.h" /* For struct Base */

struct CreatureActionsKnownAbout
{
  struct Base super;  /* 0x0 */
  uint32_t field_0x8[0x2][0x2];
};
static_assert(sizeof(struct CreatureActionsKnownAbout) == 0x18, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdfd80 mac inlined CreatureActionsKnownAbout::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__25CreatureActionsKnownAbout asm("??_R0?AVCreatureActionsKnownAbout@@@8");
// win1.41 009aaf40 mac inlined CreatureActionsKnownAbout::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__25CreatureActionsKnownAbout asm("??_R1A@?0A@A@CreatureActionsKnownAbout@@8");
// win1.41 009aaf58 mac inlined CreatureActionsKnownAbout::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__25CreatureActionsKnownAbout asm("??_R2CreatureActionsKnownAbout@@8");
// win1.41 009aaf68 mac inlined CreatureActionsKnownAbout::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__25CreatureActionsKnownAbout asm("??_R3CreatureActionsKnownAbout@@8");

// Override methods

// win1.41 004e2230 mac 10266a40 CreatureActionsKnownAbout::_dt(void)
void __fastcall __dt__25CreatureActionsKnownAboutFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureActionsKnownAbout@@UAEPAXI@Z");

#endif /* BW1_DECOMP_CREATURE_ACTIONS_KNOWN_ABOUT_INCLUDED_H */
