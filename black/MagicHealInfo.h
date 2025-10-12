#ifndef BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicHealInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicHealInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cba38 mac inlined GMagicHealInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GMagicHealInfo asm("??_R0?AVGMagicHealInfo@@@8");
// win1.41 009a7ee0 mac inlined GMagicHealInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GMagicHealInfo asm("??_R1A@?0A@A@GMagicHealInfo@@8");
// win1.41 009a7ef8 mac inlined GMagicHealInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GMagicHealInfo asm("??_R2GMagicHealInfo@@8");
// win1.41 009a7f10 mac inlined GMagicHealInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GMagicHealInfo asm("??_R3GMagicHealInfo@@8");

// Override methods

// win1.41 004356a0 mac 103ae460 GMagicHealInfo::_dt(void)
void __fastcall __dt__14GMagicHealInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicHealInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_HEAL_INFO_INCLUDED_H */
