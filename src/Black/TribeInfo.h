#ifndef BW1_DECOMP_TRIBE_INFO_INCLUDED_H
#define BW1_DECOMP_TRIBE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum TRIBE_TYPE */

#include "BaseInfo.h" /* For struct GBaseInfo */

// Forward Declares

class Base;

class GTribeInfo : public GBaseInfo
{
public:
	TRIBE_TYPE type; /* 0x10 */
	uint32_t   field_0x14;
	uint32_t   field_0x18;

	// Override methods

	// BW1W120 0074c920 BW1M119 01161f80
	virtual ~GTribeInfo();
	// BW1W120 0074c8c0 BW1M119 01162120
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// BW1W120 0074c940 BW1M119 01161e10
	static GTribeInfo* GetTribeFromText(const char* str);

	// Non-virtual methods

	// BW1W120 inlined BW1M119 01162090
	inline static char** GetTribeTextArray()
	{
		static char* TribeTextArray[] = {
			"CELTIC", "AFRICAN", "AZTEC", "JAPANESE", "INDIAN", "EGYPTIAN", "GREEK", "NORSE", "TIBETAN", "LAST_ERROR",
		};
		return TribeTextArray;
	}
};

#endif /* BW1_DECOMP_TRIBE_INFO_INCLUDED_H */
