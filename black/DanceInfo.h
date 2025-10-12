#ifndef BW1_DECOMP_DANCE_INFO_INCLUDED_H
#define BW1_DECOMP_DANCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GDanceInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10[0xa0];
};
static_assert(sizeof(struct GDanceInfo) == 0xb0, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be6878 mac inlined GDanceInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__10GDanceInfo asm("??_R0?AVGDanceInfo@@@8");
// win1.41 009ab548 mac inlined GDanceInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__10GDanceInfo asm("??_R1A@?0A@A@GDanceInfo@@8");
// win1.41 009ab560 mac inlined GDanceInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__10GDanceInfo asm("??_R2GDanceInfo@@8");
// win1.41 009ab570 mac inlined GDanceInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__10GDanceInfo asm("??_R3GDanceInfo@@8");
// win1.41 008d3934 mac 1099548c GDanceInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__10GDanceInfo asm("??_R4GDanceInfo@@6B@");
// win1.41 008d3938 mac 10995494 GDanceInfo::`vftable'
extern const struct GBaseInfoVftable __vt__10GDanceInfo asm("??_7GDanceInfo@@6B@");

// Override methods

// win1.41 0050b670 mac 102a8e60 GDanceInfo::_dt(void)
void __fastcall __dt__10GDanceInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGDanceInfo@@UAEPAXI@Z");
// win1.41 0050b600 mac 102aa810 GDanceInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__10GDanceInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GDanceInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_DANCE_INFO_INCLUDED_H */
