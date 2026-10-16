#ifndef BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum ABODE_TYPE, enum POT_INFO */

#include "CitadelPartInfo.h" /* For struct GCitadelPartInfo */
#include "InfoLoaders.h"     /* For INFO_DATA_BLOCK */

// Forward Declares

class Base;
class GBaseInfo;
class GMultiMapFixedInfo;
class GObjectInfo;

class GWorshipSiteInfo : public GCitadelPartInfo
{
public:
	float     RadiusFromCitadel; /* 0x134 */
	MESH_LIST BaseMesh;
	POT_INFO  PotForResourceFood;
	POT_INFO  PotForResourceWood; /* 0x140 */
	float     ChantsPerVillager;
	float     PrayerSiteDistance;
	uint32_t  MaxDancersVisible;
	float     ChantsToFillBattery; /* 0x150 */
	float     EachVillagerAddToFillBattery;
	float     ChantsToReserveForMaintaining;
	float     ArtifactPowerupMultiplier;

	// Override methods

	// BW1W120 0077a8b0 BW1M119 015bab80
	virtual GBaseInfo* GetBaseInfo(uint32_t& info_count);

	// Static data

	// BW1W120 00dcbd30
	static GWorshipSiteInfo Infos[WORSHIP_SITE_INFO_LAST];

	// Static methods

	// BW1W120 inlined BW1M119 015baae0
	static GWorshipSiteInfo* GetInfo() { return Infos; }

	// Non-virtual methods

	// BW1W120 0077a950 BW1M119 inlined
	float GetChantsToReserveForMaintaining() const;

	// TODO(#377): The original declared this class in Worship.h.
	// Out of line: LoadBinary at 0042f170, Load at 0042f0d0.
	INFO_DATA_BLOCK(RadiusFromCitadel, ArtifactPowerupMultiplier)
	INFO_DERIVED_LOADERS(GCitadelPartInfo, "Worship.h", 41)
};

#endif /* BW1_DECOMP_WORSHIP_SITE_INFO_INCLUDED_H */
