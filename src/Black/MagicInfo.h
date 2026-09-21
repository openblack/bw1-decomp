#ifndef BW1_DECOMP_MAGIC_INFO_INCLUDED_H
#define BW1_DECOMP_MAGIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;
class GMagicEffectInfo;

class GMagicInfo : public GBaseInfo
{
public:
	int     field_0x10;
	uint8_t field_0x14[0x44];

	// Override methods

	// BW1W120 00435680 BW1M119 01197ff0
	virtual ~GMagicInfo();
	// BW1W120 0042d700 BW1M119 011a1280
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// BW1W120 005fb3b0 BW1M119 013b6320
	static MAGIC_TYPE GetInfoFromText(const char* text);

	// Constructors

	// BW1W120 00435520 BW1M119 01198090
	GMagicInfo();

	// Non-virtual methods

	// BW1W120 005fb3f0 BW1M119 013b62c0
	const char* GetMagicInfoText() const;
	// BW1W120 005fb680 BW1M119 013b5c30
	GMagicEffectInfo* GetMagicEffectInfo() const;
};

#endif /* BW1_DECOMP_MAGIC_INFO_INCLUDED_H */
