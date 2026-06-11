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

    // win1.41 00469670 mac 101bff10 PlannedCitadelPart::_dt(void)
    virtual ~PlannedCitadelPart();
    // win1.41 00469690 mac 101c2f70 PlannedCitadelPart::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00465590 mac 101c2130 PlannedCitadelPart::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00469720 mac 101c2e30 PlannedCitadelPart::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 004696f0 mac 101c2ed0 PlannedCitadelPart::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00465580 mac 101c20f0 PlannedCitadelPart::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_PLANNED_CITADEL_PART_INCLUDED_H */
