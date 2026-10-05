#ifndef BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For TOOLTIPS_TYPE_LAST */

#include "BaseInfo.h"    /* For struct GBaseInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;

class GToolTipsInfo : public GBaseInfo
{
public:
	uint8_t field_0x10[0xc];

	// Override methods

	// BW1W120 005c9a40 BW1M119 0135c7f0
	virtual ~GToolTipsInfo();
	// BW1W120 005c99e0 BW1M119 0135cb00
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d16918
	static GToolTipsInfo Infos[TOOLTIPS_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0135ca60
	static GToolTipsInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in HelpSystemToolTips.h.
	INFO_DATA_BLOCK(field_0x10, field_0x10)
	INFO_ROOT_LOADERS("HelpSystemToolTips.h", 31)
};

#endif /* BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H */
