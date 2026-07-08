#ifndef BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H
#define BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GPFootballInfo : public GMultiMapFixedInfo
{
public:
	// Override methods

	// BW1W120 00643620 BW1M100 10111690 GPFootballInfo::_dt(void)
	virtual ~GPFootballInfo();
	// BW1W120 006435d0 BW1M100 10111730 GPFootballInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 006435c0 BW1M100 10111320 GPFootballInfo::GetMesh( const(void))
	virtual uint32_t GetMesh();
};

#endif /* BW1_DECOMP_FOOTBALL_INFO_INCLUDED_H */
