#ifndef BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H
#define BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class PlannedWorshipSite: public PlannedCitadelPart
{
public:

    // Override methods

    // BW1W120 0077bf10 BW1M100 105ab030 PlannedWorshipSite::_dt(void)
    virtual ~PlannedWorshipSite();
    // BW1W120 0077bf00 BW1M100 105ab150 PlannedWorshipSite::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0077bf90 BW1M100 105b0dc0 PlannedWorshipSite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0077bf30 BW1M100 105b0ea0 PlannedWorshipSite::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0077bef0 BW1M100 105ab110 PlannedWorshipSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H */
