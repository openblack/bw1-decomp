#ifndef BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;

class GPrayerIconInfo : public GSingleMapFixedInfo
{
public:
	uint32_t field_0x100;
	uint32_t field_0x104;

	// Override methods

	// BW1W120 00670770 BW1M119 01127b40
	virtual ~GPrayerIconInfo();
	// BW1W120 00670720 BW1M119 01127dc0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
};

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
