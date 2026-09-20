#ifndef BW1_DECOMP_CLIMATE_INFO_INCLUDED_H
#define BW1_DECOMP_CLIMATE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GClimateInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00770ff0 BW1M100 105a16b0 GClimateInfo::_dt(void)
	virtual ~GClimateInfo();
	// BW1W120 00770f80 BW1M100 105a3780 GClimateInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CLIMATE_INFO_INCLUDED_H */
