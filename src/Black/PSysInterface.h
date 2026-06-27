#ifndef BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H
#define BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include <chlasm/Enum.h> /* For enum PARTICLE_TYPE */

#include "GameThing.h" /* For struct GameThingVftable */
#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameThing;
struct LHPoint;
struct PSysProcessInfo;
class Spell;

class PSysInterface: public PSysBase
{
public:
    enum NET_GAME_TYPE
    {
      NET_GAME_TYPE_0 = 0x0,
    };

    // Override methods

    // BW1W120 0055ee30 BW1M100 101109b0 PSysInterface::_dt(void)
    virtual ~PSysInterface();

    // Static methods

    // BW1W120 0068e910 BW1M100 100053c0 PSysInterface::Create(Spell *, PARTICLE_TYPE, LHPoint const &, LHPoint const &, float, PSysInterface::NET_GAME_TYPE)
    static PSysInterface* Create(Spell* spell, PARTICLE_TYPE particle_type, LHPoint* param_3, LHPoint* param_4, float param_5, NET_GAME_TYPE game_type);
};

#endif /* BW1_DECOMP_P_SYS_INTERFACE_INCLUDED_H */
