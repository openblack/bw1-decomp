#ifndef BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H
#define BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GScriptHighlightInfo : public GSingleMapFixedInfo
{
public:
	uint8_t field_0x104[0xc];

	// Override methods

	// BW1W120 007096b0 BW1M119 01502b60
	virtual ~GScriptHighlightInfo();
	// BW1W120 00709640 BW1M119 01503690
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d96390
	static GScriptHighlightInfo Infos[SCRIPT_HIGHLIGHT_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01052ea0
	static GScriptHighlightInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in ScriptHighlight.h.
	// Out of line: LoadBinary at 0042f8f0, Load at 0042f850.
	INFO_DATA_BLOCK(field_0x104, field_0x104)
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "ScriptHighlight.h", 17)
};

#endif /* BW1_DECOMP_SCRIPT_HIGHLIGHT_INFO_INCLUDED_H */
