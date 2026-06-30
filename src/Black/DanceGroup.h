#ifndef BW1_DECOMP_DANCE_GROUP_INCLUDED_H
#define BW1_DECOMP_DANCE_GROUP_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "GameThing.h" /* For struct GameThing */

enum DANCE_GROUP_ACTION_TYPE
{
  DANCE_GROUP_ACTION_TYPE_0 = 0x0,
  _DANCE_GROUP_ACTION_TYPE_COUNT = 0x1
};

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

    // BW1W120 0050cf00 BW1M100 102aa590 DanceGroup::_dt(void)
    virtual ~DanceGroup();
    // BW1W120 0050cef0 BW1M100 102aaa60 DanceGroup::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 0050d9c0 BW1M100 102aab20 DanceGroup::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 0050d640 BW1M100 102ab450 DanceGroup::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0050cee0 BW1M100 102aaa20 DanceGroup::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_DANCE_GROUP_INCLUDED_H */
