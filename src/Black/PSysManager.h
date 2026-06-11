#ifndef BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H
#define BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "PSysBase.h" /* For struct PSysBase */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;

class PSysManager: public PSysBase
{
public:
    uint8_t field_0x14[0xd0];

    // Override methods

    // win1.41 00672cb0 mac 103dcfb0 PSysManager::_dt(void)
    virtual ~PSysManager();
    // win1.41 006735c0 mac 103dc100 PSysManager::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00672ca0 mac 10423d00 PSysManager::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00694500 mac 1041d6f0 PSysManager::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 006cb090 mac 104858d0 PSysManager::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00672c90 mac 10423cc0 PSysManager::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
