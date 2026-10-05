#ifndef BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h"  /* For struct GLivingInfo */
#include "InfoLoaders.h" /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class HelpSpiritInfo : public GLivingInfo
{
public:
	uint32_t field_0x1f4;

	// Override methods

	// BW1W120 005c4a70 BW1M119 01354ff0
	virtual ~HelpSpiritInfo();
	// BW1W120 005c4a00 BW1M119 01355100
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d15ae8
	static HelpSpiritInfo Infos[HELP_SPIRIT_TYPE_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01354ef0
	static HelpSpiritInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in HelpSpirit.h.
	INFO_DATA_BLOCK(field_0x1f4, field_0x1f4)
	INFO_DERIVED_LOADERS(GLivingInfo, "HelpSpirit.h", 21)
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H */
