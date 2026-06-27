#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedFeature.h" /* For struct PlannedFeature */

// Forward Declares

class Base;
class MultiMapFixed;
class PlannedMultiMapFixed;

class PlannedWorshipSiteUpgrade: public PlannedFeature
{
public:

    // Override methods

    // BW1W120 0077ee70 BW1M100 inlined PlannedWorshipSiteUpgrade::_dt(void)
    virtual ~PlannedWorshipSiteUpgrade();
    // BW1W120 0077eea0 BW1M100 inlined PlannedWorshipSiteUpgrade::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_UPGRADE_INCLUDED_H */
