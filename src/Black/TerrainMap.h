#ifndef BW1_DECOMP_TERRAIN_MAP_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Base.h" /* For struct Base */
#include "TerrainMapInfo.h" /* For struct TerrainMapInfo */

class GTerrainMap: public Base
{
public:
    TerrainMapInfo list[0x400]; /* 0x8 */
    TerrainMapInfo map_info; /* 0x4a008 */

    // Override methods

    // win1.41 0054bd90 mac 1040fcc0 GTerrainMap::_dt(void)
    virtual ~GTerrainMap();
};

#endif /* BW1_DECOMP_TERRAIN_MAP_INCLUDED_H */
