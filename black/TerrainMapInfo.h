#ifndef BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "TerrainMapTypeInfo.h" /* For struct TerrainMapTypeInfo */

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

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
