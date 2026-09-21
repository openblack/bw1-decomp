#ifndef BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H
#define BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GInfluenceInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 005cd150 BW1M119 011071f0
	virtual ~GInfluenceInfo();
	// BW1W120 005cd110 BW1M119 011071a0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_INFLUENCE_INFO_INCLUDED_H */
