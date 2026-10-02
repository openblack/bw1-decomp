#ifndef BW1_DECOMP_POT_INFO_INCLUDED_H
#define BW1_DECOMP_POT_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For POT_INFO_LAST */

#include "MobileObjectInfo.h" /* For struct GMobileObjectInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GPotInfo : public GMobileObjectInfo
{
public:
	uint8_t field_0x114[0x30];

	// Static data

	// BW1W120 00d4c660
	static GPotInfo InfoList[POT_INFO_LAST];

	// Override methods

	// BW1W120 0066cc40 BW1M119 01120c90
	virtual ~GPotInfo();
	// BW1W120 0066cbd0 BW1M119 01126640
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static methods

	// The Mac build keeps the table as a function-local static of this function instead.
	// BW1W120 inlined BW1M119 0102d2a0
	static GPotInfo* GetInfo() { return InfoList; }

	// Non-virtual methods

	// BW1W120 0066cc70 BW1M119 011264b0
	float GetResourceValue() const;
};
static_assert(sizeof(GPotInfo) == 0x144, "GPotInfo size is incorrect");

#endif /* BW1_DECOMP_POT_INFO_INCLUDED_H */
