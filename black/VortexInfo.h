#ifndef BW1_DECOMP_VORTEX_INFO_INCLUDED_H
#define BW1_DECOMP_VORTEX_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GVortexInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GVortexInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf4020 mac inlined GVortexInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GVortexInfo asm("??_R0?AVGVortexInfo@@@8");
// win1.41 009b1c60 mac inlined GVortexInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GVortexInfo asm("??_R1A@?0A@A@GVortexInfo@@8");
// win1.41 009b1c78 mac inlined GVortexInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GVortexInfo asm("??_R2GVortexInfo@@8");
// win1.41 009b1c88 mac inlined GVortexInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GVortexInfo asm("??_R3GVortexInfo@@8");

// Override methods

// win1.41 005fd3f0 mac 103b8d80 GVortexInfo::_dt(void)
void __fastcall __dt__11GVortexInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGVortexInfo@@UAEPAXI@Z");
// win1.41 005fd390 mac 103b9150 GVortexInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GVortexInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GVortexInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_VORTEX_INFO_INCLUDED_H */
