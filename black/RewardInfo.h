#ifndef BW1_DECOMP_REWARD_INFO_INCLUDED_H
#define BW1_DECOMP_REWARD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GRewardInfo
{
  struct GMobileObjectInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GRewardInfo) == 0x114, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c0bea8 mac inlined GRewardInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GRewardInfo asm("??_R0?AVGRewardInfo@@@8");
// win1.41 009b8c98 mac inlined GRewardInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GRewardInfo asm("??_R1A@?0A@A@GRewardInfo@@8");
// win1.41 009b8cb0 mac inlined GRewardInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GRewardInfo asm("??_R2GRewardInfo@@8");
// win1.41 009b8cd0 mac inlined GRewardInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GRewardInfo asm("??_R3GRewardInfo@@8");

// Override methods

// win1.41 006e54b0 mac 1013b160 GRewardInfo::_dt(void)
void __fastcall __dt__11GRewardInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGRewardInfo@@UAEPAXI@Z");
// win1.41 006e5440 mac 1013c260 GRewardInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GRewardInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GRewardInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_REWARD_INFO_INCLUDED_H */
