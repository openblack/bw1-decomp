#ifndef BW1_DECOMP_BELIEF_INFO_INCLUDED_H
#define BW1_DECOMP_BELIEF_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GBeliefInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GBeliefInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009cd220 mac inlined GBeliefInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GBeliefInfo asm("??_R0?AVGBeliefInfo@@@8");
// win1.41 009a8388 mac inlined GBeliefInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GBeliefInfo asm("??_R1A@?0A@A@GBeliefInfo@@8");
// win1.41 009a83a0 mac inlined GBeliefInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GBeliefInfo asm("??_R2GBeliefInfo@@8");
// win1.41 009a83b0 mac inlined GBeliefInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GBeliefInfo asm("??_R3GBeliefInfo@@8");

// Override methods

// win1.41 00437db0 mac 100b22b0 GBeliefInfo::_dt(void)
void __fastcall __dt__11GBeliefInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGBeliefInfo@@UAEPAXI@Z");
// win1.41 00437d60 mac 100b2260 GBeliefInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GBeliefInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GBeliefInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_BELIEF_INFO_INCLUDED_H */
