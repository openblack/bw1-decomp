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
	MESH_LIST Mesh;   /* 0x120 */
	float     Radius; /* 0x124 */

	// Override methods

	// BW1W120 00670670 BW1M119 01127d60
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count);
	// BW1W120 00670660 BW1M119 01127d20
	virtual MESH_LIST GetMesh() const { return Mesh; }

	// Static data

	// BW1W120 00d4df90
	static GPrayerSiteInfo Infos[PRAYER_SITE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 01127be0
	static GPrayerSiteInfo* GetInfo() { return Infos; }

	// TODO(#377): The original declared this class in Prayer.h.
	INFO_DATA_BLOCK(Mesh, Radius)
	INFO_DERIVED_LOADERS(GMultiMapFixedInfo, "Prayer.h", 13)
};

#endif /* BW1_DECOMP_PRAYER_SITE_INFO_INCLUDED_H */
