#ifndef BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H
#define BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ObjectInfo.h" /* For struct GObjectInfo */

// Forward Declares

struct Base;

struct GLeashSelectorInfo
{
  struct GObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GLeashSelectorInfo) == 0x100, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cb948 mac inlined GLeashSelectorInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18GLeashSelectorInfo asm("??_R0?AVGLeashSelectorInfo@@@8");
// win1.41 009a7cc8 mac inlined GLeashSelectorInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18GLeashSelectorInfo asm("??_R1A@?0A@A@GLeashSelectorInfo@@8");
// win1.41 009a7ce0 mac inlined GLeashSelectorInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18GLeashSelectorInfo asm("??_R2GLeashSelectorInfo@@8");
// win1.41 009a7cf8 mac inlined GLeashSelectorInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18GLeashSelectorInfo asm("??_R3GLeashSelectorInfo@@8");

// Override methods

// win1.41 0042b3d0 mac 10182f90 GLeashSelectorInfo::_dt(void)
void __fastcall __dt__18GLeashSelectorInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGLeashSelectorInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_LEASH_SELECTOR_INFO_INCLUDED_H */
