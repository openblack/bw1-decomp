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

	// BW1W120 0077ec70 BW1M100 inlined WorshipSiteUpgrade::_dt(void)
	virtual ~WorshipSiteUpgrade();
	// BW1W120 0077eca0 BW1M100 inlined WorshipSiteUpgrade::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0077ed80 BW1M100 inlined WorshipSiteUpgrade::GetPlayer(void)
	virtual GPlayer* GetPlayer();
	// BW1W120 0077ec60 BW1M100 inlined WorshipSiteUpgrade::GetWorshipSite(void)
	virtual WorshipSite* GetWorshipSite();
	// BW1W120 0077ef30 BW1M100 inlined WorshipSiteUpgrade::SaveObject(LHOSFile &, MapCoords const &)
	virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
	// BW1W120 004220f0 BW1M100 inlined WorshipSiteUpgrade::IsRepaired(void)
	virtual bool32_t IsRepaired();
	// BW1W120 00422110 BW1M100 inlined WorshipSiteUpgrade::IsBuilt(void)
	virtual bool32_t IsBuilt();
	// BW1W120 00527790 BW1M100 inlined WorshipSiteUpgrade::IsDrawBuilding(void)
	virtual bool IsDrawBuilding();
	// BW1W120 0077edd0 BW1M100 inlined WorshipSiteUpgrade::ConvertToPlanned(void)
	virtual PlannedMultiMapFixed* ConvertToPlanned();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H */
