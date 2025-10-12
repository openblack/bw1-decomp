#ifndef BW1_DECOMP_FEATURE_INFO_INCLUDED_H
#define BW1_DECOMP_FEATURE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_NUMBER, enum ABODE_TYPE */
#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct GObjectInfo;

struct GFeatureInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
};
static_assert(sizeof(struct GFeatureInfo) == 0x120, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 009c9500 mac inlined GFeatureInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__12GFeatureInfo asm("??_R0?AVGFeatureInfo@@@8");
// win1.41 009a78b8 mac inlined GFeatureInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__12GFeatureInfo asm("??_R1A@?0A@A@GFeatureInfo@@8");
// win1.41 009ac018 mac inlined GFeatureInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__12GFeatureInfo asm("??_R2GFeatureInfo@@8");
// win1.41 009ac030 mac inlined GFeatureInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__12GFeatureInfo asm("??_R3GFeatureInfo@@8");

// Override methods

// win1.41 00527320 mac 100a6900 GFeatureInfo::_dt(void)
void __fastcall __dt__12GFeatureInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFeatureInfo@@UAEPAXI@Z");
// win1.41 00421eb0 mac 100a7c10 GFeatureInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__12GFeatureInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFeatureInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00421ea0 mac 100a5310 GFeatureInfo::GetMesh( const(void))
uint32_t __fastcall GetMesh__12GFeatureInfoCFv(const struct GObjectInfo* this) asm("?GetMesh@GFeatureInfo@@UBEIXZ");
// win1.41 00421e80 mac inlined GFeatureInfo::GetAbodeType( const(void))
enum ABODE_TYPE __fastcall GetAbodeType__12GFeatureInfoCFv(const struct GMultiMapFixedInfo* this) asm("?GetAbodeType@GFeatureInfo@@UBE?AW4ABODE_TYPE@@XZ");
// win1.41 00421e90 mac inlined GFeatureInfo::GetAbodeNumber( const(void))
enum ABODE_NUMBER __fastcall GetAbodeNumber__12GFeatureInfoCFv(const struct GMultiMapFixedInfo* this) asm("?GetAbodeNumber@GFeatureInfo@@UBE?AW4ABODE_NUMBER@@XZ");

#endif /* BW1_DECOMP_FEATURE_INFO_INCLUDED_H */
