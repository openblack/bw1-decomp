#ifndef BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */
#include "InfoLoaders.h"       /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GPrayerSiteInfo : public GMultiMapFixedInfo
{
public:
	uint8_t field_0x120[0x8];

	// Override methods

	// BW1W120 006706c0 BW1M119 01127c80
	virtual ~GPrayerSiteInfo();
	// BW1W120 00670670 BW1M119 01127d60
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00670660 BW1M119 01127d20
	virtual MESH_LIST GetMesh() const;

	// Static data

	// BW1W120 00d4df90
	static GPrayerSiteInfo Infos[PRAYER_SITE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01127be0
	static GPrayerSiteInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Prayer.h.
	INFO_DATA_BLOCK(field_0x120, field_0x120)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "Prayer.h", 13)
};

#endif /* BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H */
