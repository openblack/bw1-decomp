#ifndef BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */
#include "TerrainMapTypeInfo.h" /* For struct TerrainMapTypeInfo */

// Forward Declares

class Base;

class TerrainMapInfo: public GBaseInfo
{
public:
    TerrainMapTypeInfo type_info[0xe]; /* 0x10 */

    // Override methods

    // win1.41 0054be80 mac 101522e0 TerrainMapInfo::_dt(void)
    virtual ~TerrainMapInfo();
    // win1.41 0054bd80 mac 1032d1b0 TerrainMapInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

    // Constructors

    // win1.41 0054bcd0 mac 100c9280 TerrainMapInfo::TerrainMapInfo(void)
    TerrainMapInfo();
};

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
