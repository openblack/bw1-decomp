#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <Lionhead/LHLib/ver5.0/LHListNode.h> /* For struct LHListNode */

#include "Feature.h" /* For struct Feature */
#include "LHPTR.h"   /* For class LHPTR */

// Forward Declares

class Base;
class GPlayer;
class GWorshipSiteUpgradeInfo;
class GameThing;
class GameThingWithPos;
class LHOSFile;
struct MapCoords;
class MultiMapFixed;
class Object;
class PlannedMultiMapFixed;
class WorshipSite;

class WorshipSiteUpgrade : public Feature
{
public:
	LHListNode<WorshipSiteUpgrade> next;
	LHPTR<WorshipSite>             Site;

	// Override methods

	// BW1W120 0077eca0 BW1M119 null
	virtual void ToBeDeleted(int delete_now);
	// BW1W120 0077ed80 BW1M119 null
	virtual GPlayer* GetPlayer();
	// BW1W120 0077ec60 BW1M119 null
	virtual WorshipSite* GetWorshipSite() { return Site.Get(); }
	// BW1W120 0077ef30 BW1M119 null
	virtual uint32_t SaveObject(LHOSFile& file, const MapCoords* coords);
	// BW1W120 0077edd0 BW1M119 null
	virtual PlannedMultiMapFixed* ConvertToPlanned();

	// BW1W120 0077ebf0 BW1M119 null
	WorshipSiteUpgrade(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info, WorshipSite* site, float y_angle,
	                   float scale, float percent_built, bool32_t under_construction);

	// BW1W120 0077ed70 BW1M119 null
	const GWorshipSiteUpgradeInfo* GetInfo() const;

	// Static methods

	// BW1W120 0077ed10 BW1M119 null
	static WorshipSiteUpgrade* Create(const MapCoords& coords, const GWorshipSiteUpgradeInfo* info, WorshipSite* site,
	                                  float y_angle, float scale, float percent_built, bool32_t under_construction);
};
static_assert(sizeof(WorshipSiteUpgrade) == 0x84, "Data type is of wrong size");

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H */
