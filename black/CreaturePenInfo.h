#ifndef BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GCreaturePenInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GCreaturePenInfo) == 0x134, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be0178 mac inlined GCreaturePenInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GCreaturePenInfo asm("??_R0?AVGCreaturePenInfo@@@8");
// win1.41 009ab1c8 mac inlined GCreaturePenInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GCreaturePenInfo asm("??_R1A@?0A@A@GCreaturePenInfo@@8");
// win1.41 009ab1e0 mac inlined GCreaturePenInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GCreaturePenInfo asm("??_R2GCreaturePenInfo@@8");
// win1.41 009ab200 mac inlined GCreaturePenInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GCreaturePenInfo asm("??_R3GCreaturePenInfo@@8");

// Override methods

// win1.41 004eee30 mac 10274c20 GCreaturePenInfo::_dt(void)
void __fastcall __dt__16GCreaturePenInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGCreaturePenInfo@@UAEPAXI@Z");
// win1.41 004eedc0 mac 102755a0 GCreaturePenInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GCreaturePenInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GCreaturePenInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_CREATURE_PEN_INFO_INCLUDED_H */
