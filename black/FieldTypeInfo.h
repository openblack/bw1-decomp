#ifndef BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

struct Base;
struct GBaseInfo;
struct MapCoords;

struct GFieldTypeInfo
{
  struct GMultiMapFixedInfo super;  /* 0x0 */
  uint8_t field_0x20[0x34];  /* 0x120 */
};
static_assert(sizeof(struct GFieldTypeInfo) == 0x154, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00be9d48 mac inlined GFieldTypeInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14GFieldTypeInfo asm("??_R0?AVGFieldTypeInfo@@@8");
// win1.41 009ac1d0 mac inlined GFieldTypeInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14GFieldTypeInfo asm("??_R1A@?0A@A@GFieldTypeInfo@@8");
// win1.41 009ac1e8 mac inlined GFieldTypeInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14GFieldTypeInfo asm("??_R2GFieldTypeInfo@@8");
// win1.41 009ac200 mac inlined GFieldTypeInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14GFieldTypeInfo asm("??_R3GFieldTypeInfo@@8");
// win1.41 008d9b2c mac 1073ed24 GFieldTypeInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14GFieldTypeInfo asm("??_R4GFieldTypeInfo@@6B@");
// win1.41 008d9b30 mac 1073ed2c GFieldTypeInfo::`vftable'
extern const struct MultiMapFixedVftable __vt__14GFieldTypeInfo asm("??_7GFieldTypeInfo@@6B@");

// Override methods

// win1.41 00527da0 mac 100d1a40 GFieldTypeInfo::_dt(void)
void __fastcall __dt__14GFieldTypeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GGFieldTypeInfo@@UAEPAXI@Z");
// win1.41 00527d30 mac 100d18c0 GFieldTypeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14GFieldTypeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@GFieldTypeInfo@@UAEPAVGBaseInfo@@AAI@Z");
// win1.41 00528e50 mac 100d4190 GFieldTypeInfo::IsOkToCreateAtPos( const(MapCoords const &, float, float))
bool __fastcall IsOkToCreateAtPos__14GFieldTypeInfoCFRC9MapCoordsff(const struct GMultiMapFixedInfo* this, const void* edx, const struct MapCoords* param_1, float param_2, float param_3) asm("?IsOkToCreateAtPos@GFieldTypeInfo@@UBE_NABUMapCoords@@MM@Z");

// win1.41 00527cf0 mac inlined __sinit_GFieldTypeInfo_cpp
void __cdecl __sinit_GFieldTypeInfo_cpp(void);

#endif /* BW1_DECOMP_FIELD_TYPE_INFO_INCLUDED_H */
