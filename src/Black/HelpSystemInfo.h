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

	// BW1W120 005c53f0 BW1M119 0135a2d0
	virtual ~HelpSystemInfo();
	// BW1W120 005c53a0 BW1M119 0135a280
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H */
