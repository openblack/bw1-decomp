#ifndef BW1_DECOMP_TOWN_INFO_INCLUDED_H
#define BW1_DECOMP_TOWN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "ContainerInfo.h" /* For struct GContainerInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct LHColor;

struct GTownInfo
{
  struct GContainerInfo super;  /* 0x0 */
  float field_0x148;
  float field_0x14c;
  uint32_t field_0x150;
  float field_0x154;
  float field_0x158;
  float field_0x15c;
  uint32_t field_0x160;
  float field_0x164;
  uint32_t field_0x168;
  float field_0x16c;
  float field_0x170;
  float field_0x174;
  float field_0x178;
  float field_0x17c;
  float field_0x180;
  float field_0x184;
  float field_0x188;
};
static_assert(sizeof(struct GTownInfo) == 0x18c, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c22b88 mac inlined GTownInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__9GTownInfo asm("??_R0?AVGTownInfo@@@8");
// win1.41 009b99e8 mac inlined GTownInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__9GTownInfo asm("??_R1A@?0A@A@GTownInfo@@8");
// win1.41 009b9a00 mac inlined GTownInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__9GTownInfo asm("??_R2GTownInfo@@8");
// win1.41 009b9a18 mac inlined GTownInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__9GTownInfo asm("??_R3GTownInfo@@8");
// win1.41 00999ab0 mac 109e35e4 GTownInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__9GTownInfo asm("??_R4GTownInfo@@6B@");
// win1.41 00999ab4 mac 109e35ec GTownInfo::`vftable'
extern const struct GBaseInfoVftable __vt__9GTownInfo asm("??_7GTownInfo@@6B@");

// Override methods

// win1.41 00738fc0 mac 10545c00 GTownInfo::_dt(void)
void __fastcall __dt__9GTownInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGTownInfo@@UAEPAXI@Z");
// win1.41 0073fd80 mac inlined GTownInfo::GetDebugColor( const(LHColor *))
struct LHColor* __fastcall GetDebugColor__9GTownInfoCFP7LHColor(const struct GBaseInfo* this, const void* edx, struct LHColor* param_1) asm("?GetDebugColor@GTownInfo@@UBEPAULHColor@@PAU2@@Z");
// win1.41 00738f70 mac 10545ba0 GTownInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__9GTownInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GTownInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TOWN_INFO_INCLUDED_H */
