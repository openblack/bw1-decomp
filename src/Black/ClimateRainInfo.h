#ifndef BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GClimateRainInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00773ce0 BW1M119 015aa730
	virtual ~GClimateRainInfo();
	// BW1W120 00773c90 BW1M119 015aa6e0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CLIMATE_RAIN_INFO_INCLUDED_H */
