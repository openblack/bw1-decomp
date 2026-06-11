#ifndef BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H
#define BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint16_t, uint32_t */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

class CreatureExplorationMap: public Base
{
public:
    uint32_t field_0x8;
    MapCoords coords;
    uint16_t field_0x18[0x40][0x40];

    // Override methods

    // win1.41 004df5c0 mac 10246800 CreatureExplorationMap::_dt(void)
    virtual ~CreatureExplorationMap();
};

class CreatureExplorationRegionEntry: public Base
{
public:

    // Override methods

    // win1.41 004df430 mac 10260660 CreatureExplorationRegionEntry::_dt(void)
    virtual ~CreatureExplorationRegionEntry();
};

class CreatureGlobalExplorationMap: public Base
{
public:

    // Override methods

    // win1.41 004df450 mac 102605a0 CreatureGlobalExplorationMap::_dt(void)
    virtual ~CreatureGlobalExplorationMap();
    // win1.41 004dfbd0 mac 10260d20 CreatureGlobalExplorationMap::Dump(void)
    virtual void Dump();
};

#endif /* BW1_DECOMP_CREATURE_EXPLORATION_MAP_INCLUDED_H */
