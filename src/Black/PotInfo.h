#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GPotInfo : public GMobileObjectInfo
{
public:
	// Override methods

	// BW1W120 0066cc40 BW1M100 10117210 GPotInfo::_dt(void)
	virtual ~GPotInfo();
	// BW1W120 0066cbd0 BW1M100 1011d400 GPotInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t* param_1);
};

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
