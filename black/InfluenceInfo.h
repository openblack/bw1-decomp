#ifndef BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GInfluenceInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GInfluenceInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bf1ab8 mac inlined GInfluenceInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GInfluenceInfo asm("??_R0?AVGInfluenceInfo@@@8");
// win1.41 009b1490 mac inlined GInfluenceInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GInfluenceInfo asm("??_R1A@?0A@A@GInfluenceInfo@@8");
// win1.41 009b14a8 mac inlined GInfluenceInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GInfluenceInfo asm("??_R2GInfluenceInfo@@8");
// win1.41 009b14b8 mac inlined GInfluenceInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GInfluenceInfo asm("??_R3GInfluenceInfo@@8");

// Override methods

// win1.41 005cd150 mac 100fd4f0 GInfluenceInfo::_dt(void)
void __fastcall __dt__14GInfluenceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGInfluenceInfo@@UAEPAXI@Z");
// win1.41 005cd110 mac 100fd4a0 GInfluenceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GInfluenceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GInfluenceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H */
