#ifndef BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SingleMapFixedInfo.h" /* For struct GSingleMapFixedInfo */
#include "InfoLoaders.h"        /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;

class GPrayerIconInfo : public GSingleMapFixedInfo
{
public:
	uint32_t field_0x104;

	// Override methods

	// BW1W120 00670770 BW1M119 01127b40
	virtual ~GPrayerIconInfo();
	// BW1W120 00670720 BW1M119 01127dc0
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);

	// Static data

	// BW1W120 00d4de88
	static GPrayerIconInfo Infos[PLAYER_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01127aa0
	static GPrayerIconInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Prayer.h.
	INFO_DATA_BLOCK(field_0x104, field_0x104)
	INFO_DERIVED_LOADERS(GSingleMapFixedInfo, "Prayer.h", 58)
};

#endif /* BW1_DECOMP_PRAYER_ICON_INFO_INCLUDED_H */
