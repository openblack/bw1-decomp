#ifndef BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class HelpSystemInfo : public GBaseInfo
{
public:
	// Override methods

	// BW1W120 005c53f0 BW1M100 10351af0 HelpSystemInfo::_dt(void)
	virtual ~HelpSystemInfo();
	// BW1W120 005c53a0 BW1M100 10351aa0 HelpSystemInfo::GetBaseInfo(unsigned long &)
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H */
