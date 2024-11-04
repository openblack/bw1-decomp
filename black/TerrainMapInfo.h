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

static struct BaseInfoVftable* const __vt__14TerrainMapInfo = (struct BaseInfoVftable* const)0x008df870;

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
