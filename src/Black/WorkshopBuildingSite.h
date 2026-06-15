#ifndef BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H
#define BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE */

#include "BuildingSite.h" /* For struct BuildingSite */

// Forward Declares

class Base;
class GInterfaceStatus;
class GameThing;
struct MapCoords;

class WorkshopBuildingSite: public BuildingSite
{
public:

    // Override methods

    // win1.41 0043d970 mac 100b7a40 WorkshopBuildingSite::_dt(void)
    virtual ~WorkshopBuildingSite();
    // win1.41 0043db20 mac 100b74c0 WorkshopBuildingSite::AddResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool, MapCoords const &, int)
    virtual uint32_t AddResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool param_4, const MapCoords* param_5, int param_6);
    // win1.41 0043db60 mac 100b7370 WorkshopBuildingSite::RemoveResource(RESOURCE_TYPE, unsigned long, GInterfaceStatus *, bool *)
    virtual uint32_t RemoveResource(RESOURCE_TYPE param_1, uint32_t param_2, GInterfaceStatus* param_3, bool* param_4);
};

#endif /* BW1_DECOMP_WORKSHOP_BUILDING_SITE_INCLUDED_H */
