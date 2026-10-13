#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedFeature.h" /* For struct PlannedFeature */

// Forward Declares

class Base;
class GWorshipSiteUpgradeInfo;
struct MapCoords;
class MultiMapFixed;
class PlannedMultiMapFixed;
class WorshipSite;

class PlannedWorshipSiteUpgrade : public PlannedFeature
{
public:
	// Override methods

	// BW1W120 0077eea0 BW1M119 null
	virtual MultiMapFixed* CreatePlanned(float percent_built);

	// BW1W120 0077ee40 BW1M119 null
	PlannedWorshipSiteUpgrade(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info, WorshipSite* site,
	                          float y_angle, float scale);

	// BW1W120 0077ee90 BW1M119 null
	const GWorshipSiteUpgradeInfo* GetInfo();
	// BW1W120 0077efa0 BW1M119 null
	WorshipSite* GetOwnerWorshipSite();
};
static_assert(sizeof(PlannedWorshipSiteUpgrade) == 0x4c, "Data type is of wrong size");

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H */
