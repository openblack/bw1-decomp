#ifndef BW1_DECOMP_FIELD_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;

struct GFieldInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFieldInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9d28 mac inlined GFieldInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GFieldInfo asm("??_R0?AVGFieldInfo@@@8");
// win1.41 009ac178 mac inlined GFieldInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GFieldInfo asm("??_R1A@?0A@A@GFieldInfo@@8");
// win1.41 009ac190 mac inlined GFieldInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GFieldInfo asm("??_R2GFieldInfo@@8");
// win1.41 009ac1a8 mac inlined GFieldInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GFieldInfo asm("??_R3GFieldInfo@@8");

// Override methods

// win1.41 00527cc0 mac 100d5dc0 GFieldInfo::_dt(void)
void __fastcall __dt__10GFieldInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFieldInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_FIELD_INFO_INCLUDED_H */
