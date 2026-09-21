#ifndef BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GToolTipsInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 005c9a40 BW1M119 0135c7f0
	virtual ~GToolTipsInfo();
	// BW1W120 005c99e0 BW1M119 0135cb00
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H */
