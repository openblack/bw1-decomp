#ifndef BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H
#define BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
struct MapCoords;

class GFishFarmInfo : public GMultiMapFixedInfo
{
public:
	// Override methods

	// BW1W120 0052c330 BW1M119 010df160
	virtual ~GFishFarmInfo();
	// BW1W120 0052c2e0 BW1M119 010df100
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 0052d100 BW1M119 010e0690
	virtual bool IsOkToCreateAtPos(const MapCoords& param_1, float param_2, float param_3) const;
};

#endif /* BW1_DECOMP_FISH_FARM_INFO_INCLUDED_H */
