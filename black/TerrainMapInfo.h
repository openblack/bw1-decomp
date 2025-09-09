#ifndef BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

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

// win1.41 008df86c mac 10730b28 TerrainMapInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__14TerrainMapInfo asm("??_R4TerrainMapInfo@@6B@");

// win1.41 008df870 mac 10730b30 TerrainMapInfo::`vftable'
extern const struct BaseInfoVftable __vt__14TerrainMapInfo asm("??_7TerrainMapInfo@@6B@");

// Override methods

// win1.41 0054be80 mac 101522e0 TerrainMapInfo::_dt(void)
void __fastcall __dt__14TerrainMapInfoFv(struct Base* this, const void* edx, uint32_t param_1) asm("??_GTerrainMapInfo@@UAEPAXI@Z");
// win1.41 0054bd80 mac 1032d1b0 TerrainMapInfo::GetBaseInfo(unsigned long &)
struct GBaseInfo* __fastcall GetBaseInfo__14TerrainMapInfoFRUl(struct GBaseInfo* this, const void* edx, uint32_t* param_1) asm("?GetBaseInfo@TerrainMapInfo@@UAEPAVGBaseInfo@@AAI@Z");

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
