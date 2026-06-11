#ifndef BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GTerrainMaterialInfo: public GBaseInfo
{
public:

    // Override methods

    // win1.41 00735290 mac 105420c0 GTerrainMaterialInfo::_dt(void)
    virtual ~GTerrainMaterialInfo();
    // win1.41 00735230 mac 10542330 GTerrainMaterialInfo::GetBaseInfo(unsigned long &)
    virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H */
