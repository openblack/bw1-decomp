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

	// BW1W120 0054be80 BW1M119 0115a520
	virtual ~TerrainMapInfo() {}
	// BW1W120 0054bd80 BW1M119 0136d370
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Constructors

	// BW1W120 inlined BW1M119 0149b1b0
	TerrainMapInfo() {}
};

#endif /* BW1_DECOMP_TERRAIN_MAP_INFO_INCLUDED_H */
