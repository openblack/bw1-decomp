#ifndef BW1_DECOMP_SOUND_INFO_INCLUDED_H
#define BW1_DECOMP_SOUND_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GSoundInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 0071d6b0 BW1M119 0151b400
	virtual ~GSoundInfo();
	// BW1W120 0071d660 BW1M119 0151b3c0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_SOUND_INFO_INCLUDED_H */
