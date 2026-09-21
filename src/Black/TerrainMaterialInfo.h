#ifndef BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H
#define BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GTerrainMaterialInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00735290 BW1M119 0154b010
	virtual ~GTerrainMaterialInfo();
	// BW1W120 00735230 BW1M119 0154b260
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_TERRAIN_MATERIAL_INFO_INCLUDED_H */
