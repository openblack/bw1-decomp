#ifndef BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class TerrainMapTypeInfo : public GBaseInfo
{
public:
	float Value;

	// BW1W120 0054bed0 BW1M119 010e1450
	TerrainMapTypeInfo() {}

	// Override methods

	// BW1W120 0054bf00 BW1M119 013d1880
	virtual ~TerrainMapTypeInfo() {}
	// BW1W120 0054bd70 BW1M119 01580270
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_TERRAIN_MAP_TYPE_INFO_INCLUDED_H */
