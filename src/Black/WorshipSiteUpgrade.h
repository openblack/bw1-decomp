#ifndef BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Feature.h" /* For struct Feature */

// Forward Declares

class Base;
class GPlayer;
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
	// Override methods

	// BW1W120 0077ec70 BW1M119 inlined
	virtual ~WorshipSiteUpgrade();
	// BW1W120 0077eca0 BW1M119 inlined
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0077ed80 BW1M119 inlined
	virtual GPlayer* GetPlayer();
	// BW1W120 0077ec60 BW1M119 inlined
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0077ef30 BW1M119 inlined
	virtual uint32_t SaveObject(LHOSFile& param_1, const MapCoords& param_2);
	// BW1W120 004220f0 BW1M119 inlined
	virtual bool32_t IsRepaired();
	// BW1W120 00422110 BW1M119 inlined
	virtual bool32_t IsBuilt();
	// BW1W120 00527790 BW1M119 inlined
	virtual bool IsDrawBuilding();
	// BW1W120 0077edd0 BW1M119 inlined
	virtual PlannedMultiMapFixed* ConvertToPlanned();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H */
