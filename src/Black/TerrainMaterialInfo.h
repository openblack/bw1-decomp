#ifndef BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For TERRAIN_MATERIAL_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GTerrainMaterialInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x60];

	// Override methods

	// BW1W120 00735290 BW1M119 0154b010
	virtual ~GTerrainMaterialInfo();
	// BW1W120 00735230 BW1M119 0154b260
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// fabricated name
	// BW1W120 00da0a20
	static GTerrainMaterialInfo Infos[TERRAIN_MATERIAL_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0154b1b0
	static GTerrainMaterialInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Terrain.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("Terrain.h", 15)
};

#endif /* BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H */
