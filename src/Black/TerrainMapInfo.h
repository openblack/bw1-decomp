#ifndef BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"           /* For struct GBaseInfo */
#include "TerrainMapTypeInfo.h" /* For struct TerrainMapTypeInfo */

// Forward Declares

class Base;

class TerrainMapInfo : public GBaseInfo
{
public:
	TerrainMapTypeInfo type_info[0xe]; /* 0x10 */

	// Override methods

	// BW1W120 0054be80 BW1M100 101522e0 TerrainMapInfo::_dt(void)
	virtual ~TerrainMapInfo();
	// BW1W120 0054bd80 BW1M100 1032d1b0 TerrainMapInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);

	// Constructors

	// BW1W120 0054bcd0 BW1M100 100c9280 TerrainMapInfo::TerrainMapInfo(void)
	TerrainMapInfo();
};

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
