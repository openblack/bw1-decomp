#ifndef BW1_DECOMP_EFFECT_INFO_INCLUDED_H
#define BW1_DECOMP_EFFECT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct GEffectInfo
{
  struct GBaseInfo super;  /* 0x0 */
  float field_0x10;
  float field_0x14;
  float field_0x18;
  float field_0x1c;
  uint32_t field_0x20;
  float field_0x24;
  uint32_t field_0x28;
  float field_0x2c;
  uint32_t field_0x30;
};
static_assert(sizeof(struct GEffectInfo) == 0x34, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9638 mac inlined GEffectInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__11GEffectInfo asm("??_R0?AVGEffectInfo@@@8");
// win1.41 009abec8 mac inlined GEffectInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__11GEffectInfo asm("??_R1A@?0A@A@GEffectInfo@@8");
// win1.41 009abee0 mac inlined GEffectInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__11GEffectInfo asm("??_R2GEffectInfo@@8");
// win1.41 009abef0 mac inlined GEffectInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__11GEffectInfo asm("??_R3GEffectInfo@@8");
// win1.41 008d8b44 mac 1073d04c GEffectInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__11GEffectInfo asm("??_R4GEffectInfo@@6B@");
// win1.41 008d8b48 mac 1073d064 GEffectInfo::`vftable'
extern const struct BaseInfoVftable __vt__11GEffectInfo asm("??_7GEffectInfo@@6B@");

// Constructors

// win1.41 00524d40 mac 100cc740 GEffectInfo::GEffectInfo(void)
struct GEffectInfo* __fastcall __ct__11GEffectInfoFv(struct GEffectInfo* this) asm("??0GEffectInfo@@QAE@XZ");

// Override methods

// win1.41 00524dd0 mac 100cc6a0 GEffectInfo::_dt(void)
void __fastcall __dt__11GEffectInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGEffectInfo@@UAEPAXI@Z");
// win1.41 00524d70 mac 100ccc90 GEffectInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__11GEffectInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GEffectInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_EFFECT_INFO_INCLUDED_H */
