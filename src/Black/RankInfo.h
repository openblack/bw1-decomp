#ifndef BW1_DECOMP_RANK_INFO_INCLUDED_H
#define BW1_DECOMP_RANK_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GRankInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 006e0870 BW1M119 0113c7b0
	virtual ~GRankInfo();
	// BW1W120 006e0810 BW1M119 0113cc20
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_RANK_INFO_INCLUDED_H */
