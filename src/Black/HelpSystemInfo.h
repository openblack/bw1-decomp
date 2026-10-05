#ifndef BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class HelpSystemInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0x10];

	// BW1W120 00d16160
	static HelpSystemInfo Info;

	// Override methods

	// BW1W120 005c53f0 BW1M119 0135a2d0
	virtual ~HelpSystemInfo();
	// BW1W120 005c53a0 BW1M119 0135a280
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// TODO(#377): The original declared this class in HelpSystem.h.
	// Out of line: LoadBinary at 0042f7f0, Load at 0042f7a0.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("HelpSystem.h", 67)
};

#endif /* BW1_DECOMP_HELP_SYSTEM_INFO_INCLUDED_H */
