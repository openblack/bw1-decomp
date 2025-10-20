#ifndef BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <reversing_utils/re_rtti.h> /* For struct RTTIBaseClassArray, struct RTTIBaseClassDescriptor, struct RTTIClassHierarchyDescriptor, struct RTTICompleteObjectLocator, struct RTTITypeDescriptor */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "TerrainMapTypeInfo.h" /* For struct TerrainMapTypeInfo */

// Forward Declares

struct Base;

struct TerrainMapInfo
{
  struct GBaseInfo super;  /* 0x0 */
  struct TerrainMapTypeInfo type_info[0xe];  /* 0x10 */
};
static_assert(sizeof(struct TerrainMapInfo) == 0x128, "Data type is of wrong size");

// Object Oriented datastructures

// win1.41 00bec478 mac inlined TerrainMapInfo::`RTTI Type Descriptor'
extern struct RTTITypeDescriptor __RTTITypeDescriptor__14TerrainMapInfo asm("??_R0?AVTerrainMapInfo@@@8");
// win1.41 009ad2e0 mac inlined TerrainMapInfo::`RTTI Base Class Descriptor'
extern const struct RTTIBaseClassDescriptor __RTTIBaseClassDescriptor__14TerrainMapInfo asm("??_R1A@?0A@A@TerrainMapInfo@@8");
// win1.41 009ad2f8 mac inlined TerrainMapInfo::`RTTI Base Class Array'
extern const struct RTTIBaseClassArray __RTTIBaseClassArray__14TerrainMapInfo asm("??_R2TerrainMapInfo@@8");
// win1.41 009ad308 mac inlined TerrainMapInfo::`RTTI Class Hierarchy Descriptor'
extern const struct RTTIClassHierarchyDescriptor __RTTIClassHierarchyDescriptor__14TerrainMapInfo asm("??_R3TerrainMapInfo@@8");
// win1.41 008df86c mac 10730b28 TerrainMapInfo::`RTTI Complete Object Locator'
extern const struct RTTICompleteObjectLocator __RTTICompleteObjectLocator__14TerrainMapInfo asm("??_R4TerrainMapInfo@@6B@");
// win1.41 008df870 mac 10730b30 TerrainMapInfo::`vftable'
extern const struct BaseInfoVftable __vt__14TerrainMapInfo asm("??_7TerrainMapInfo@@6B@");

// Constructors

// win1.41 0054bcd0 mac 100c9280 TerrainMapInfo::TerrainMapInfo(void)
struct TerrainMapInfo* __fastcall __ct__14TerrainMapInfoFv(struct TerrainMapInfo* this) asm("??0TerrainMapInfo@@QAE@XZ");

// Override methods

// win1.41 0054be80 mac 101522e0 TerrainMapInfo::_dt(void)
void __fastcall __dt__14TerrainMapInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTerrainMapInfo@@UAEPAXI@Z");
// win1.41 0054bd80 mac 1032d1b0 TerrainMapInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14TerrainMapInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@TerrainMapInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
