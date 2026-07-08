#ifndef BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MagicInfo.h" /* For struct GMagicInfo */

// Forward Declares

class Base;

class GMagicWaterInfo : public GMagicInfo
{
public:
	// Override methods

	// BW1W120 004357a0 BW1M100 103ac480 GMagicWaterInfo::_dt(void)
	virtual ~GMagicWaterInfo();
};

#endif /* BW1_DECOMP_MAGIC_WATER_INFO_INCLUDED_H */
