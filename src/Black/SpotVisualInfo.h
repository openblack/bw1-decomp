#ifndef BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H
#define BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSpotVisualInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 0063e070 BW1M119 01119ad0
	virtual ~GSpotVisualInfo();
	// BW1W120 0063e020 BW1M119 0111a740
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SPOT_VISUAL_INFO_INCLUDED_H */
