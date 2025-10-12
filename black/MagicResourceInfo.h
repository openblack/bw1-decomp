#ifndef BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MagicObjectInfo.h" /* For struct GMagicObjectInfo */

// Forward Declares

struct Base;

struct GMagicResourceInfo
{
  struct GMagicObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GMagicResourceInfo) == 0x58, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cba10 mac inlined GMagicResourceInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GMagicResourceInfo asm("??_R0?AVGMagicResourceInfo@@@8");
// win1.41 009a7e88 mac inlined GMagicResourceInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GMagicResourceInfo asm("??_R1A@?0A@A@GMagicResourceInfo@@8");
// win1.41 009a7ea0 mac inlined GMagicResourceInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18GMagicResourceInfo asm("??_R2GMagicResourceInfo@@8");
// win1.41 009a7eb8 mac inlined GMagicResourceInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18GMagicResourceInfo asm("??_R3GMagicResourceInfo@@8");

// Override methods

// win1.41 00435700 mac 103ac8f0 GMagicResourceInfo::_dt(void)
void __fastcall __dt__18GMagicResourceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGMagicResourceInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_MAGIC_RESOURCE_INFO_INCLUDED_H */
