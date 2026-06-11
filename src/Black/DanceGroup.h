#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;
class GroupBehaviour;

class DanceGroup: public GameThing
{
public:
    uint8_t field_0x14[0x4];
    GroupBehaviour* behaviour;
    uint8_t field_0x1c[0x40];
    uint32_t field_0x5c;
    uint8_t field_0x60[0x11c];

    // Override methods

    // win1.41 0050cf00 mac 102aa590 DanceGroup::_dt(void)
    virtual ~DanceGroup();
    // win1.41 0050cef0 mac 102aaa60 DanceGroup::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0050d9c0 mac 102aab20 DanceGroup::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0050d640 mac 102ab450 DanceGroup::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0050cee0 mac 102aaa20 DanceGroup::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */
