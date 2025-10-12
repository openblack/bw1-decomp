#ifndef BW1_DECOMP_CITADEL_INFO_INCLUDED_H
#define BW1_DECOMP_CITADEL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GCitadelInfo
{
  struct GContainerInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GCitadelInfo) == 0x148, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009ce810 mac inlined GCitadelInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GCitadelInfo asm("??_R0?AVGCitadelInfo@@@8");
// win1.41 009a8d68 mac inlined GCitadelInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GCitadelInfo asm("??_R1A@?0A@A@GCitadelInfo@@8");
// win1.41 009a8d80 mac inlined GCitadelInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GCitadelInfo asm("??_R2GCitadelInfo@@8");
// win1.41 009a8d98 mac inlined GCitadelInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GCitadelInfo asm("??_R3GCitadelInfo@@8");

// Override methods

// win1.41 004629d0 mac 101bb390 GCitadelInfo::_dt(void)
void __fastcall __dt__12GCitadelInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCitadelInfo@@UAEPAXI@Z");
// win1.41 00462980 mac 101bb430 GCitadelInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GCitadelInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GCitadelInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CITADEL_INFO_INCLUDED_H */
