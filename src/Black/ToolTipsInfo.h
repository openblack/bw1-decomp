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
	float Priority;
	float MinDisplayTime;
	float DisplayTime;

	// Override methods

	// BW1W120 005c99e0 BW1M119 0135cb00
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count)
	{
		info_count = TOOLTIPS_TYPE_LAST;
		return Infos;
	}

	// Static data

	// BW1W120 00d16918
	static GToolTipsInfo Infos[TOOLTIPS_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 0135ca60
	static GToolTipsInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in HelpSystemToolTips.h.
	INFO_DATA_BLOCK(Priority, DisplayTime)
	INFO_ROOT_LOADERS(31, "HelpSystemToolTips.h")
};

#endif /* BW1_DECOMP_TOOL_TIPS_INFO_INCLUDED_H */
