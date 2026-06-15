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

class WorshipSiteUpgrade: public Feature
{
public:

    // Override methods

    // win1.41 0077ec70 mac inlined WorshipSiteUpgrade::_dt(void)
    virtual ~WorshipSiteUpgrade();
    // win1.41 0077eca0 mac inlined WorshipSiteUpgrade::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0077ed80 mac inlined WorshipSiteUpgrade::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0077ec60 mac inlined WorshipSiteUpgrade::GetWorshipSite(void)
    virtual WorshipSite* GetWorshipSite();
    // win1.41 0077ef30 mac inlined WorshipSiteUpgrade::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
    // win1.41 004220f0 mac inlined WorshipSiteUpgrade::IsRepaired(void)
    virtual bool IsRepaired();
    // win1.41 00422110 mac inlined WorshipSiteUpgrade::IsBuilt(void)
    virtual bool IsBuilt();
    // win1.41 00527790 mac inlined WorshipSiteUpgrade::IsDrawBuilding(void)
    virtual bool IsDrawBuilding();
    // win1.41 0077edd0 mac inlined WorshipSiteUpgrade::ConvertToPlanned(void)
    virtual PlannedMultiMapFixed* ConvertToPlanned();
};

#endif /* BW1_DECOMP_WORSHIP_SITE_UPGRADE_INCLUDED_H */
