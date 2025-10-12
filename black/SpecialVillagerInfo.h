#ifndef BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H
#define BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GSpecialVillagerInfo
{
  struct GBaseInfo super;  /* 0x0 */
  char name[0x30];  /* 0x10 */
  uint32_t field_0x40;
  uint32_t field_0x44;
  uint32_t field_0x48;
  uint32_t field_0x4c;
  uint32_t field_0x50;
  int field_0x54;
  uint32_t field_0x58;
  uint32_t field_0x5c;
};
static_assert(sizeof(struct GSpecialVillagerInfo) == 0x60, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22528 mac inlined GSpecialVillagerInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__20GSpecialVillagerInfo asm("??_R0?AVGSpecialVillagerInfo@@@8");
// win1.41 009b9248 mac inlined GSpecialVillagerInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__20GSpecialVillagerInfo asm("??_R1A@?0A@A@GSpecialVillagerInfo@@8");
// win1.41 009b9260 mac inlined GSpecialVillagerInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__20GSpecialVillagerInfo asm("??_R2GSpecialVillagerInfo@@8");
// win1.41 009b9270 mac inlined GSpecialVillagerInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__20GSpecialVillagerInfo asm("??_R3GSpecialVillagerInfo@@8");
// win1.41 00980564 mac 1075b7e4 GSpecialVillagerInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__20GSpecialVillagerInfo asm("??_R4GSpecialVillagerInfo@@6B@");
// win1.41 00980568 mac 1075b7ec GSpecialVillagerInfo::`vftable'
extern const struct GBaseInfoVftable __vt__20GSpecialVillagerInfo asm("??_7GSpecialVillagerInfo@@6B@");

// Override methods

// win1.41 0071f880 mac 10146650 GSpecialVillagerInfo::_dt(void)
void __fastcall __dt__20GSpecialVillagerInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGSpecialVillagerInfo@@UAEPAXI@Z");
// win1.41 0071ee80 mac 101463b0 GSpecialVillagerInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__20GSpecialVillagerInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GSpecialVillagerInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_SPECIAL_VILLAGER_INFO_INCLUDED_H */
