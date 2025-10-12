#ifndef BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicCreatureSpellInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicCreatureSpellInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd030 mac inlined GMagicCreatureSpellInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__23GMagicCreatureSpellInfo asm("??_R0?AVGMagicCreatureSpellInfo@@@8");
// win1.41 009a81f0 mac inlined GMagicCreatureSpellInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__23GMagicCreatureSpellInfo asm("??_R1A@?0A@A@GMagicCreatureSpellInfo@@8");
// win1.41 009a8208 mac inlined GMagicCreatureSpellInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__23GMagicCreatureSpellInfo asm("??_R2GMagicCreatureSpellInfo@@8");
// win1.41 009a8220 mac inlined GMagicCreatureSpellInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__23GMagicCreatureSpellInfo asm("??_R3GMagicCreatureSpellInfo@@8");

// Override methods

// win1.41 00435800 mac 103aba10 GMagicCreatureSpellInfo::_dt(void)
void __fastcall __dt__23GMagicCreatureSpellInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicCreatureSpellInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_CREATURE_SPELL_INFO_INCLUDED_H */
