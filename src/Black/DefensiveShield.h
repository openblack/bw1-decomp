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

    // BW1W120 006d0ad0 BW1M100 1041dc60 DefensiveShield::_dt(void)
    virtual ~DefensiveShield();
    // BW1W120 006d0ac0 BW1M100 1041dc20 DefensiveShield::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00699ca0 BW1M100 10417a80 DefensiveShield::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006d0680 BW1M100 1047f460 DefensiveShield::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 006d0ab0 BW1M100 1041dbe0 DefensiveShield::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DEFENSIVE_SHIELD_INCLUDED_H */
