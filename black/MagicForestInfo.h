#ifndef BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

struct Base;

struct GMagicForestInfo
{
  struct GMagicInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicForestInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb9d0 mac inlined GMagicForestInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GMagicForestInfo asm("??_R0?AVGMagicForestInfo@@@8");
// win1.41 009a7e18 mac inlined GMagicForestInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GMagicForestInfo asm("??_R1A@?0A@A@GMagicForestInfo@@8");
// win1.41 009a7e30 mac inlined GMagicForestInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GMagicForestInfo asm("??_R2GMagicForestInfo@@8");
// win1.41 009a7e48 mac inlined GMagicForestInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GMagicForestInfo asm("??_R3GMagicForestInfo@@8");

// Override methods

// win1.41 004356e0 mac 103ac990 GMagicForestInfo::_dt(void)
void __fastcall __dt__16GMagicForestInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicForestInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_FOREST_INFO_INCLUDED_H */
