#ifndef BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicRadiusSpellInfo.h" /* For struct GMagicRadiusSpellInfo */

// Forward Declares

struct Base;

struct GMagicShieldInfo
{
  struct GMagicRadiusSpellInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicShieldInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ccfa0 mac inlined GMagicShieldInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GMagicShieldInfo asm("??_R0?AVGMagicShieldInfo@@@8");
// win1.41 009a8090 mac inlined GMagicShieldInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GMagicShieldInfo asm("??_R1A@?0A@A@GMagicShieldInfo@@8");
// win1.41 009a80a8 mac inlined GMagicShieldInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GMagicShieldInfo asm("??_R2GMagicShieldInfo@@8");
// win1.41 009a80c0 mac inlined GMagicShieldInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GMagicShieldInfo asm("??_R3GMagicShieldInfo@@8");

// Override methods

// win1.41 00435780 mac 103aeca0 GMagicShieldInfo::_dt(void)
void __fastcall __dt__16GMagicShieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicShieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_SHIELD_INFO_INCLUDED_H */
