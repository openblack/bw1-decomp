#ifndef BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct TownCreatureInfo
{
  struct GBaseInfo super;  /* 0x0 */
};
static_assert(sizeof(struct TownCreatureInfo) == 0x10, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22c00 mac inlined TownCreatureInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16TownCreatureInfo asm("??_R0?AVTownCreatureInfo@@@8");
// win1.41 009b9b38 mac inlined TownCreatureInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16TownCreatureInfo asm("??_R1A@?0A@A@TownCreatureInfo@@8");
// win1.41 009b9b50 mac inlined TownCreatureInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16TownCreatureInfo asm("??_R2TownCreatureInfo@@8");
// win1.41 009b9b60 mac inlined TownCreatureInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16TownCreatureInfo asm("??_R3TownCreatureInfo@@8");

// Override methods

// win1.41 007437d0 mac 10557190 TownCreatureInfo::_dt(void)
void __fastcall __dt__16TownCreatureInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTownCreatureInfo@@UAEPAXI@Z");
// win1.41 007437c0 mac 10558ea0 TownCreatureInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16TownCreatureInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@TownCreatureInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TOWN_CREATURE_INFO_INCLUDED_H */
