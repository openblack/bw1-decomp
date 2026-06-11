#ifndef BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h> /* For enum MAGIC_TYPE */

#include "Base.h" /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

// Forward Declares

class GameThingWithPos;

class CreatureMimicState: public Base
{
public:
    uint32_t field_0x8;
    uint32_t field_0xc;
    DETECTED_PLAYER_ACTION detected_player_action; /* 0x10 */
    MAGIC_TYPE magic_type;
    GameThingWithPos* game_thing;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    MapCoords coords; /* 0x30 */

    // Override methods

    // win1.41 004e9d40 mac 10245ef0 CreatureMimicState::_dt(void)
    virtual ~CreatureMimicState();

    // Constructors

    // win1.41 004e9d20 mac 1026fe50 CreatureMimicState::CreatureMimicState(void)
    CreatureMimicState();
};

#endif /* BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H */
