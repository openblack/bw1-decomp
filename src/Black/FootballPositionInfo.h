#ifndef BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GFootballPositionInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 00530f60 BW1M119 012c0540
	virtual ~GFootballPositionInfo();
	// BW1W120 00530f00 BW1M119 012c1180
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

class GPFootballPositionInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006436f0 BW1M119 0111abf0
	virtual ~GPFootballPositionInfo();
	// BW1W120 00643690 BW1M119 0111afb0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_FOOTBALL_POSITION_INFO_INCLUDED_H */
