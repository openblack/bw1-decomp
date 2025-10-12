#ifndef BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GClimateRainInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GClimateRainInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24968 mac inlined GClimateRainInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GClimateRainInfo asm("??_R0?AVGClimateRainInfo@@@8");
// win1.41 009ba0e0 mac inlined GClimateRainInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GClimateRainInfo asm("??_R1A@?0A@A@GClimateRainInfo@@8");
// win1.41 009ba0f8 mac inlined GClimateRainInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GClimateRainInfo asm("??_R2GClimateRainInfo@@8");
// win1.41 009ba108 mac inlined GClimateRainInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GClimateRainInfo asm("??_R3GClimateRainInfo@@8");

// Override methods

// win1.41 00773ce0 mac 105a3a30 GClimateRainInfo::_dt(void)
void __fastcall __dt__16GClimateRainInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGClimateRainInfo@@UAEPAXI@Z");
// win1.41 00773c90 mac 105a39e0 GClimateRainInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GClimateRainInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GClimateRainInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H */
