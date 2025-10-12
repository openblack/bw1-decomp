#ifndef BW1_DECOMP_FOREST_INFO_INCLUDED_H
#define BW1_DECOMP_FOREST_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

struct Base;

struct GForestInfo
{
  struct GContainerInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GForestInfo) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bea240 mac inlined GForestInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GForestInfo asm("??_R0?AVGForestInfo@@@8");
// win1.41 009ac730 mac inlined GForestInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GForestInfo asm("??_R1A@?0A@A@GForestInfo@@8");
// win1.41 009ac748 mac inlined GForestInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GForestInfo asm("??_R2GForestInfo@@8");
// win1.41 009ac760 mac inlined GForestInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GForestInfo asm("??_R3GForestInfo@@8");

// Override methods

// win1.41 005399c0 mac 100f2980 GForestInfo::_dt(void)
void __fastcall __dt__11GForestInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGForestInfo@@UAEPAXI@Z");

#endif /* BW1_DECOMP_FOREST_INFO_INCLUDED_H */
