#ifndef BW1_DECOMP_CREATURE_HELP_INCLUDED_H
#define BW1_DECOMP_CREATURE_HELP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class GameThingWithPos;

struct CreatureHelpState
{
    uint32_t field_0x0;
    uint32_t field_0x4;
    uint32_t field_0x8;
    uint32_t field_0xc;
    uint32_t field_0x10[0xc];
    uint32_t field_0x40[0xc];
    uint32_t field_0x70[0x6];
    GJVector__CreatureHelpState__field_0x88 field_0x88;

    // Constructors

    // win1.41 004c9c30 mac 1023b830 CreatureHelpState::CreatureHelpState(void)
    CreatureHelpState();
};

struct CreatureHelpStackEntry
{
    uint32_t field_0x0;
    GameThingWithPos* thing;
    MapCoords coords;
    uint32_t field_0x14;
    uint32_t field_0x18;

    // Constructors

    // win1.41 004ca6f0 mac 102389e0 CreatureHelpStackEntry::__ct(unsigned long, GameThingWithPos *, MapCoords const &)
    CreatureHelpStackEntry(uint32_t param_2, GameThingWithPos* thing, const MapCoords* coord);
};

#endif /* BW1_DECOMP_CREATURE_HELP_INCLUDED_H */
