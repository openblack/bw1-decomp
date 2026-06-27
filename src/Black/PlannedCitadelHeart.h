#ifndef BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameThingWithPos;
class MultiMapFixed;
class PlannedMultiMapFixed;

class PlannedCitadelHeart: public PlannedCitadelPart
{
public:

    // Override methods

    // BW1W120 004655a0 BW1M100 101c2050 PlannedCitadelHeart::_dt(void)
    virtual ~PlannedCitadelHeart();
    // BW1W120 00468df0 BW1M100 101bbe50 PlannedCitadelHeart::CreateBuildingSite(void)
    virtual uint32_t CreateBuildingSite();
    // BW1W120 00465a20 BW1M100 101bf550 PlannedCitadelHeart::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_HEART_INCLUDED_H */
