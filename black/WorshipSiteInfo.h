#ifndef BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GMultiMapFixedInfo;
struct GObjectInfo;

struct GWorshipSiteInfo
{
  struct GCitadelPartInfo super;  /* 0x0 */
  float field_0x134;
  uint32_t field_0x138;
  uint32_t field_0x13c;
  uint32_t field_0x140;
  float field_0x144;
  float field_0x148;
  uint32_t field_0x14c;
  float field_0x150;
  float field_0x154;
  uint32_t field_0x158;
  float field_0x15c;
};
static_assert(sizeof(struct GWorshipSiteInfo) == 0x160, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00c24cf0 mac inlined GWorshipSiteInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__16GWorshipSiteInfo asm("??_R0?AVGWorshipSiteInfo@@@8");
// win1.41 009ba2c0 mac inlined GWorshipSiteInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__16GWorshipSiteInfo asm("??_R1A@?0A@A@GWorshipSiteInfo@@8");
// win1.41 009ba2d8 mac inlined GWorshipSiteInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__16GWorshipSiteInfo asm("??_R2GWorshipSiteInfo@@8");
// win1.41 009ba2f8 mac inlined GWorshipSiteInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__16GWorshipSiteInfo asm("??_R3GWorshipSiteInfo@@8");
// win1.41 0099c474 mac 109eb3b4 GWorshipSiteInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__16GWorshipSiteInfo asm("??_R4GWorshipSiteInfo@@6B@");
// win1.41 0099c478 mac 109eb3bc GWorshipSiteInfo::`vftable'
extern const struct GMultiMapFixedInfoVftable __vt__16GWorshipSiteInfo asm("??_7GWorshipSiteInfo@@6B@");

// Override methods

// win1.41 0077a920 mac 105b0900 GWorshipSiteInfo::_dt(void)
void __fastcall __dt__16GWorshipSiteInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGWorshipSiteInfo@@UAEPAXI@Z");
// win1.41 0077a8b0 mac 105b3c70 GWorshipSiteInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__16GWorshipSiteInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GWorshipSiteInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00464370 mac inlined GWorshipSiteInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__16GWorshipSiteInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GWorshipSiteInfo@@UBEIXZ");
// win1.41 00464380 mac inlined GWorshipSiteInfo::GetAbodeType( const(void))
enum ABODE_TYPE __fastcall GetAbodeType__16GWorshipSiteInfoCFv(const struct GMultiMapFixedInfo* this) asm("?GetAbodeType@GWorshipSiteInfo@@UBE?AW4ABODE_TYPE@@XZ");

#endif /* BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H */
