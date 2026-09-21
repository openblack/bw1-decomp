#ifndef BW1_DECOMP_REWARD_INFO_INCLUDED_H
#define BW1_DECOMP_REWARD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GRewardInfo : public GMobileObjectInfo
{
public:
	// Override methods

	// BW1W120 006e54b0 BW1M119 01143e80
	virtual ~GRewardInfo();
	// BW1W120 006e5440 BW1M119 01144f60
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_REWARD_INFO_INCLUDED_H */
