#ifndef BW1_DECOMP_LEASH_STATUS_INCLUDED_H
#define BW1_DECOMP_LEASH_STATUS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GInterfaceStatus;
class GPlayer;
class GameOSFile;

class GLeashStatus: public GameThing
{
public:
    uint32_t field_0x14;
    uint32_t field_0x18;
    uint32_t field_0x1c;
    uint32_t field_0x20;
    uint32_t field_0x24;
    uint32_t field_0x28;
    uint32_t field_0x2c;
    uint8_t player_number; /* 0x30 */
    uint32_t field_0x34;
    GInterfaceStatus* interface_status;

    // Override methods

    // win1.41 005db940 mac 1037aca0 GLeashStatus::_dt(void)
    virtual ~GLeashStatus();
    // win1.41 005e7630 mac 1037ae50 GLeashStatus::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 005e7430 mac 1037aeb0 GLeashStatus::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 005e7230 mac 1037b1a0 GLeashStatus::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 005db930 mac 1037ad30 GLeashStatus::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 005e71d0 mac 1037b4b0 GLeashStatus::SaveExtraData(GameOSFile &)
    virtual void SaveExtraData(GameOSFile* param_1);
    // win1.41 005e7650 mac 1037ae10 GLeashStatus::ResolveLoad(void)
    virtual void ResolveLoad();
};

#endif /* BW1_DECOMP_LEASH_STATUS_INCLUDED_H */
