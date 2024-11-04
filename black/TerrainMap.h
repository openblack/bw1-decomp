#ifndef BW1_DECOMP_TERRAIN_MAP_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */

#include "Base.h" /* For struct Base */
#include "TerrainMapInfo.h" /* For struct TerrainMapInfo */

struct GTerrainMap
{
  struct Base super;  /* 0x0 */
  struct TerrainMapInfo list[0x400];
  struct TerrainMapInfo map_info;  /* 0x4a008 */
};
static_assert(sizeof(struct GTerrainMap) == 0x4a130, "Data type is of wrong size");

static struct BaseVftable* const __vt__11GTerrainMap = (struct BaseVftable* const)0x008df820;

#endif /* BW1_DECOMP_TERRAIN_MAP_INCLUDED_H */
