#ifndef BW1_DECOMP_SQUAD_INFO_INCLUDED_H
#define BW1_DECOMP_SQUAD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSquadInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GSquadInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c09c10 mac inlined GSquadInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GSquadInfo asm("??_R0?AVGSquadInfo@@@8");
// win1.41 009b8b58 mac inlined GSquadInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GSquadInfo asm("??_R1A@?0A@A@GSquadInfo@@8");
// win1.41 009b8b70 mac inlined GSquadInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GSquadInfo asm("??_R2GSquadInfo@@8");
// win1.41 009b8b80 mac inlined GSquadInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GSquadInfo asm("??_R3GSquadInfo@@8");

// Override methods

// win1.41 006e07b0 mac 10133d90 GSquadInfo::_dt(void)
void __fastcall __dt__10GSquadInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSquadInfo@@UAEPAXI@Z");
// win1.41 006e0750 mac 10133ff0 GSquadInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GSquadInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSquadInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SQUAD_INFO_INCLUDED_H */
