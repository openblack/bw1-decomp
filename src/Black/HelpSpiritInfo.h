#ifndef BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H
#define BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "LivingInfo.h" /* For struct GLivingInfo */

// Forward Declares

class Base;
class GBaseInfo;

class HelpSpiritInfo : public GLivingInfo
{
public:
	// Override methods

	// BW1W120 005c4a70 BW1M119 01354ff0
	virtual ~HelpSpiritInfo();
	// BW1W120 005c4a00 BW1M119 01355100
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_HELP_SPIRIT_INFO_INCLUDED_H */
