#ifndef BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H
#define BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class MultiMapFixed;

class PlannedFeature: public PlannedMultiMapFixed
{
public:

    // Override methods

    // win1.41 005274a0 mac 100d1600 PlannedFeature::_dt(void)
    virtual ~PlannedFeature();
    // win1.41 00527490 mac 100d16e0 PlannedFeature::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00527580 mac 100d0f60 PlannedFeature::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00527550 mac 100d0ff0 PlannedFeature::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00527480 mac 100d16a0 PlannedFeature::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005274d0 mac 100d1080 PlannedFeature::CreatePlanned(float)
    virtual MultiMapFixed* CreatePlanned(float param_1);
};

#endif /* BW1_DECOMP_PLANNED_FEATURE_INCLUDED_H */
