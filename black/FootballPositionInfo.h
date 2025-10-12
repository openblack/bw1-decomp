#ifndef BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GFootballPositionInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFootballPositionInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9f48 mac inlined GFootballPositionInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__21GFootballPositionInfo asm("??_R0?AVGFootballPositionInfo@@@8");
// win1.41 009ac538 mac inlined GFootballPositionInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__21GFootballPositionInfo asm("??_R1A@?0A@A@GFootballPositionInfo@@8");
// win1.41 009ac550 mac inlined GFootballPositionInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__21GFootballPositionInfo asm("??_R2GFootballPositionInfo@@8");
// win1.41 009ac560 mac inlined GFootballPositionInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__21GFootballPositionInfo asm("??_R3GFootballPositionInfo@@8");

// Override methods

// win1.41 00530f60 mac 102bcb80 GFootballPositionInfo::_dt(void)
void __fastcall __dt__21GFootballPositionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFootballPositionInfo@@UAEPAXI@Z");
// win1.41 00530f00 mac 102bd7f0 GFootballPositionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__21GFootballPositionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFootballPositionInfo@@UAEPAVGBaseInfo@@AAI@Z");

struct GPFootballPositionInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GPFootballPositionInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bfed30 mac inlined GPFootballPositionInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__22GPFootballPositionInfo asm("??_R0?AVGPFootballPositionInfo@@@8");
// win1.41 009b30b8 mac inlined GPFootballPositionInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__22GPFootballPositionInfo asm("??_R1A@?0A@A@GPFootballPositionInfo@@8");
// win1.41 009b30d0 mac inlined GPFootballPositionInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__22GPFootballPositionInfo asm("??_R2GPFootballPositionInfo@@8");
// win1.41 009b30e0 mac inlined GPFootballPositionInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__22GPFootballPositionInfo asm("??_R3GPFootballPositionInfo@@8");

// Override methods

// win1.41 006436f0 mac 101113c0 GPFootballPositionInfo::_dt(void)
void __fastcall __dt__22GPFootballPositionInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPFootballPositionInfo@@UAEPAXI@Z");
// win1.41 00643690 mac 10111790 GPFootballPositionInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__22GPFootballPositionInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPFootballPositionInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H */
