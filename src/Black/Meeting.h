#ifndef BW1_DECOMP_MEETING_INCLUDED_H
#define BW1_DECOMP_MEETING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class GPlayer;
class GameThing;
class Town;

class Meeting: public GameThingWithPos
{
public:

    // Override methods

    // win1.41 00606160 mac inlined Meeting::_dt(void)
    virtual ~Meeting();
    // win1.41 00606180 mac inlined Meeting::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00606230 mac inlined Meeting::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 00606150 mac inlined Meeting::RemoveDance(void)
    virtual void RemoveDance();
    // win1.41 00606140 mac inlined Meeting::GetTown(void)
    virtual Town* GetTown();
};

#endif /* BW1_DECOMP_MEETING_INCLUDED_H */
