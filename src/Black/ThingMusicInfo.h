#ifndef BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H
#define BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GameOSFile;

class ThingMusicInfo: public GameThing
{
public:

    // Override methods

    // win1.41 00429320 mac 1017c8b0 ThingMusicInfo::_dt(void)
    virtual ~ThingMusicInfo();
    // win1.41 00429310 mac 1017c980 ThingMusicInfo::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00429ae0 mac 1017c9c0 ThingMusicInfo::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00429950 mac 1017cc10 ThingMusicInfo::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00429300 mac 1017c940 ThingMusicInfo::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_THING_MUSIC_INFO_INCLUDED_H */
