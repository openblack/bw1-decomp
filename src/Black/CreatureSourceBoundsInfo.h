#ifndef BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H
#define BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class CreatureSourceBoundsInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 004dd400 BW1M119 012629a0
	virtual ~CreatureSourceBoundsInfo();
	// BW1W120 004dd3a0 BW1M119 01262d00
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_CREATURE_SOURCE_BOUNDS_INFO_INCLUDED_H */
