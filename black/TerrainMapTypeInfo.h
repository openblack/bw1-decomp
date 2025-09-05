#ifndef BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

struct TerrainMapTypeInfo
{
  struct GBaseInfo super;  /* 0x0 */
  uint8_t field_0x10;
  uint8_t field_0x11;
  uint8_t field_0x12;
  uint8_t field_0x13;
};
static_assert(sizeof(struct TerrainMapTypeInfo) == 0x14, "Data type is of wrong size");

// win1.41 008df83c mac 10730ad8 TerrainMapTypeInfo::`RTTI Complete Object Locator'
extern struct RTTICompleteObjectLocator __RTTICompleObjectLocator__18TerrainMapTypeInfo asm("??_R4TerrainMapTypeInfo@@6B@");

// win1.41 008df840 mac 10730ae0 TerrainMapTypeInfo::`vftable'
extern const struct GBaseInfoVftable __vt__18TerrainMapTypeInfo asm("??_7TerrainMapTypeInfo@@6B@");

#endif /* BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H */
