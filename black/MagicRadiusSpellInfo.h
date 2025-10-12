#ifndef BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicRadiusSpellInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicRadiusSpellInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cbab0 mac inlined GMagicRadiusSpellInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GMagicRadiusSpellInfo asm("??_R0?AVGMagicRadiusSpellInfo@@@8");
// win1.41 009a7fb8 mac inlined GMagicRadiusSpellInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GMagicRadiusSpellInfo asm("??_R1A@?0A@A@GMagicRadiusSpellInfo@@8");
// win1.41 009a8288 mac inlined GMagicRadiusSpellInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GMagicRadiusSpellInfo asm("??_R2GMagicRadiusSpellInfo@@8");
// win1.41 009a82a0 mac inlined GMagicRadiusSpellInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GMagicRadiusSpellInfo asm("??_R3GMagicRadiusSpellInfo@@8");

// Override methods

// win1.41 00435850 mac 10190190 GMagicRadiusSpellInfo::_dt(void)
void __fastcall __dt__21GMagicRadiusSpellInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicRadiusSpellInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_RADIUS_SPELL_INFO_INCLUDED_H */
