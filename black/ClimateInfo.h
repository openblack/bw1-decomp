#ifndef BW1_DECOMP_CLIMATE_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GClimateInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GClimateInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c247d0 mac inlined GClimateInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GClimateInfo asm("??_R0?AVGClimateInfo@@@8");
// win1.41 009ba090 mac inlined GClimateInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GClimateInfo asm("??_R1A@?0A@A@GClimateInfo@@8");
// win1.41 009ba0a8 mac inlined GClimateInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GClimateInfo asm("??_R2GClimateInfo@@8");
// win1.41 009ba0b8 mac inlined GClimateInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GClimateInfo asm("??_R3GClimateInfo@@8");

// Override methods

// win1.41 00770ff0 mac 105a16b0 GClimateInfo::_dt(void)
void __fastcall __dt__12GClimateInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGClimateInfo@@UAEPAXI@Z");
// win1.41 00770f80 mac 105a3780 GClimateInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GClimateInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GClimateInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CLIMATE_INFO_INCLUDED_H */
