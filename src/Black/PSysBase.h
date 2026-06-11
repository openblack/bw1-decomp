#ifndef BW1_DECOMP_P_SYS_BASE_INCLUDED_H
#define BW1_DECOMP_P_SYS_BASE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class PSysBase: public GameThing
{
public:

    // Override methods

    // win1.41 00466500 mac 10086ed0 PSysBase::_dt(void)
    virtual ~PSysBase();
    // win1.41 004664f0 mac 10110ed0 PSysBase::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 006944b0 mac 1041db80 PSysBase::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_P_SYS_BASE_INCLUDED_H */
