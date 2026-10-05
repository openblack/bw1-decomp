#ifndef BW1_DECOMP_REWARD_INFO_INCLUDED_H
#define BW1_DECOMP_REWARD_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */
#include "InfoLoaders.h"      /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GRewardInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x1c];

	// Override methods

	// BW1W120 006e54b0 BW1M119 01143e80
	virtual ~GRewardInfo();
	// BW1W120 006e5440 BW1M119 01144f60
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d50bf8
	static GRewardInfo Infos[REWARD_OBJECT_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01144ec0
	static GRewardInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in reward.h.
	INFO_DATA_BLOCK(field_0x114, field_0x114)
	INFO_DERIVED_LOADERS(GMobileObjectInfo, "reward.h", 27)
};

#endif /* BW1_DECOMP_REWARD_INFO_INCLUDED_H */
