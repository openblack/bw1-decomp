#ifndef BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H
#define BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class DefensiveShield: public PSysBase
{
public:

    // Override methods

    // win1.41 006d0ad0 mac 1041dc60 DefensiveShield::_dt(void)
    virtual ~DefensiveShield();
    // win1.41 006d0ac0 mac 1041dc20 DefensiveShield::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00699ca0 mac 10417a80 DefensiveShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006d0680 mac 1047f460 DefensiveShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 006d0ab0 mac 1041dbe0 DefensiveShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
