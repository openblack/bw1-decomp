#ifndef BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class TerrainMapTypeInfo: public GBaseInfo
{
public:
    uint8_t field_0x10;
    uint8_t field_0x11;
    uint8_t field_0x12;
    uint8_t field_0x13;

    // Override methods

    // BW1W120 0054bf00 BW1M100 10512cc0 TerrainMapTypeInfo::_dt(void)
    virtual ~TerrainMapTypeInfo();
    // BW1W120 0054bd70 BW1M100 10588760 TerrainMapTypeInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H */
