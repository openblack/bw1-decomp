#ifndef BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H
#define BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PlannedCitadelPart.h" /* For struct PlannedCitadelPart */

// Forward Declares

class Base;
class GameThingWithPos;

class PlannedCreaturePen: public PlannedCitadelPart
{
public:

    // Override methods

    // win1.41 004ef050 mac 102748a0 PlannedCreaturePen::_dt(void)
    virtual ~PlannedCreaturePen();
    // win1.41 004ef040 mac 10274940 PlannedCreaturePen::GetText(void)
    virtual const char* GetText();
};

#endif /* BW1_DECOMP_PLANNED_CREATURE_PEN_INCLUDED_H */
