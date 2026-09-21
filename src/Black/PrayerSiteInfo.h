#ifndef BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "MultiMapFixedInfo.h" /* For struct GMultiMapFixedInfo */

// Forward Declares

class Base;
class GBaseInfo;
class GObjectInfo;

class GPrayerSiteInfo : public GMultiMapFixedInfo
{
public:
	// Override methods

	// BW1W120 006706c0 BW1M119 01127c80
	virtual ~GPrayerSiteInfo();
	// BW1W120 00670670 BW1M119 01127d60
	virtual GBaseInfo* GetBaseInfo(uint32_t& param_1);
	// BW1W120 00670660 BW1M119 01127d20
	virtual MESH_LIST GetMesh() const;
};

#endif /* BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H */
