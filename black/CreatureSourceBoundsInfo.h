#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct CreatureSourceBoundsInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct CreatureSourceBoundsInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bdf5b0 mac inlined CreatureSourceBoundsInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__24CreatureSourceBoundsInfo asm("??_R0?AVCreatureSourceBoundsInfo@@@8");
// win1.41 009aad10 mac inlined CreatureSourceBoundsInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__24CreatureSourceBoundsInfo asm("??_R1A@?0A@A@CreatureSourceBoundsInfo@@8");
// win1.41 009aad28 mac inlined CreatureSourceBoundsInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__24CreatureSourceBoundsInfo asm("??_R2CreatureSourceBoundsInfo@@8");
// win1.41 009aad38 mac inlined CreatureSourceBoundsInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__24CreatureSourceBoundsInfo asm("??_R3CreatureSourceBoundsInfo@@8");

// Override methods

// win1.41 004dd400 mac 1025eab0 CreatureSourceBoundsInfo::_dt(void)
void __fastcall __dt__24CreatureSourceBoundsInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GCreatureSourceBoundsInfo@@UAEPAXI@Z");
// win1.41 004dd3a0 mac 1025ee20 CreatureSourceBoundsInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__24CreatureSourceBoundsInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@CreatureSourceBoundsInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
