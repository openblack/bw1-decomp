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

    // BW1W120 00672cb0 BW1M100 103dcfb0 PSysManager::_dt(void)
    virtual ~PSysManager();
    // BW1W120 006735c0 BW1M100 103dc100 PSysManager::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 00672ca0 BW1M100 10423d00 PSysManager::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00694500 BW1M100 1041d6f0 PSysManager::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 006cb090 BW1M100 104858d0 PSysManager::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 00672c90 BW1M100 10423cc0 PSysManager::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_P_SYS_MANAGER_INCLUDED_H */
