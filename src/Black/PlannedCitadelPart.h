#ifndef BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H
#define BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedMultiMapFixed.h" /* For struct PlannedMultiMapFixed */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class PlannedCitadelPart: public PlannedMultiMapFixed
{
public:

    // Override methods

    // BW1W120 00469670 BW1M100 101bff10 PlannedCitadelPart::_dt(void)
    virtual ~PlannedCitadelPart();
    // BW1W120 00469690 BW1M100 101c2f70 PlannedCitadelPart::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00465590 BW1M100 101c2130 PlannedCitadelPart::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00469720 BW1M100 101c2e30 PlannedCitadelPart::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 004696f0 BW1M100 101c2ed0 PlannedCitadelPart::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00465580 BW1M100 101c20f0 PlannedCitadelPart::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H */
