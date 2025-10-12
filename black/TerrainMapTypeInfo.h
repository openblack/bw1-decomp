#ifndef BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

struct Base;

struct TerrainMapTypeInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10;
  uint8_t field_0x11;
  uint8_t field_0x12;
  uint8_t field_0x13;
};
static_assert(sizeof(struct TerrainMapTypeInfo) == 0x14, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec498 mac inlined TerrainMapTypeInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__18TerrainMapTypeInfo asm("??_R0?AVTerrainMapTypeInfo@@@8");
// win1.41 009ad330 mac inlined TerrainMapTypeInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__18TerrainMapTypeInfo asm("??_R1A@?0A@A@TerrainMapTypeInfo@@8");
// win1.41 009ad348 mac inlined TerrainMapTypeInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__18TerrainMapTypeInfo asm("??_R2TerrainMapTypeInfo@@8");
// win1.41 009ad358 mac inlined TerrainMapTypeInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__18TerrainMapTypeInfo asm("??_R3TerrainMapTypeInfo@@8");
// win1.41 008df83c mac 10730ad8 TerrainMapTypeInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__18TerrainMapTypeInfo asm("??_R4TerrainMapTypeInfo@@6B@");
// win1.41 008df840 mac 10730ae0 TerrainMapTypeInfo::`vftable'
extern const struct GBaseInfoVftable __vt__18TerrainMapTypeInfo asm("??_7TerrainMapTypeInfo@@6B@");

// Override methods

// win1.41 0054bf00 mac 10512cc0 TerrainMapTypeInfo::_dt(void)
void __fastcall __dt__18TerrainMapTypeInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTerrainMapTypeInfo@@UAEPAXI@Z");
// win1.41 0054bd70 mac 10588760 TerrainMapTypeInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__18TerrainMapTypeInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@TerrainMapTypeInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H */
