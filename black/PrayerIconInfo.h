#ifndef BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;

struct GPrayerIconInfo
{
  struct GSingleMapFixedInfo super;  /* 0x0 */
  uint32_t field_0x100;
  uint32_t field_0x104;
};
static_assert(sizeof(struct GPrayerIconInfo) == 0x108, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c020e0 mac inlined GPrayerIconInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__15GPrayerIconInfo asm("??_R0?AVGPrayerIconInfo@@@8");
// win1.41 009b35b0 mac inlined GPrayerIconInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__15GPrayerIconInfo asm("??_R1A@?0A@A@GPrayerIconInfo@@8");
// win1.41 009b35c8 mac inlined GPrayerIconInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__15GPrayerIconInfo asm("??_R2GPrayerIconInfo@@8");
// win1.41 009b35e0 mac inlined GPrayerIconInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__15GPrayerIconInfo asm("??_R3GPrayerIconInfo@@8");
// win1.41 009341c4 mac 1074a620 GPrayerIconInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__15GPrayerIconInfo asm("??_R4GPrayerIconInfo@@6B@");
// win1.41 009341c8 mac 1074a628 GPrayerIconInfo::`vftable'
extern const struct GSingleMapFixedInfoVftable __vt__15GPrayerIconInfo asm("??_7GPrayerIconInfo@@6B@");

// Override methods

// win1.41 00670770 mac 1011e8e0 GPrayerIconInfo::_dt(void)
void __fastcall __dt__15GPrayerIconInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGPrayerIconInfo@@UAEPAXI@Z");
// win1.41 00670720 mac 1011eb60 GPrayerIconInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__15GPrayerIconInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GPrayerIconInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
