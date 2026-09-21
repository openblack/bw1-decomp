#ifndef BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H
#define BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GPlaytimeInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 0066c330 BW1M119 0111f7f0
	virtual ~GPlaytimeInfo();
	// BW1W120 0066c2d0 BW1M119 0111f9b0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_PLAYTIME_INFO_INCLUDED_H */
