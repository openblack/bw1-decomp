#ifndef BW1_DECOMP_TOOL_TIPS_INCLUDED_H
#define BW1_DECOMP_TOOL_TIPS_INCLUDED_H

#include <re_common.h> /* For bool32_t */

class ToolTips
{
public:
	// BW1W120 00d17bdc
	static bool32_t CurrentToolTipSubmitted;

	// BW1W120 005c9c60 BW1M119 0135c950
	static void ForceToolTips(unsigned long help_text, float duration);
};

#endif /* BW1_DECOMP_TOOL_TIPS_INCLUDED_H */
