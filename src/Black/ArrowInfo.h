#ifndef BW1_DECOMP_ARROW_INFO_INCLUDED_H
#define BW1_DECOMP_ARROW_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GArrowInfo : public GMobileObjectInfo
{
public:
	// Override methods

	// BW1W120 00425980 BW1M100 100ad540 GArrowInfo::_dt(void)
	virtual ~GArrowInfo();
	// BW1W120 00425930 BW1M100 100ad830 GArrowInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_ARROW_INFO_INCLUDED_H */
