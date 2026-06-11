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

    // win1.41 0077bf10 mac 105ab030 PlannedWorshipSite::_dt(void)
    virtual ~PlannedWorshipSite();
    // win1.41 0077bf00 mac 105ab150 PlannedWorshipSite::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0077bf90 mac 105b0dc0 PlannedWorshipSite::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0077bf30 mac 105b0ea0 PlannedWorshipSite::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0077bef0 mac 105ab110 PlannedWorshipSite::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLANNED_WORSHIP_SITE_INCLUDED_H */
