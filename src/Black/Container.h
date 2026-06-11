#ifndef BW1_DECOMP_CONTAINER_INCLUDED_H
#define BW1_DECOMP_CONTAINER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThingWithPos.h" /* For struct GameThingWithPos, struct GameThingWithPosVftable */

// Forward Declares

class Base;
class GContainerInfo;
class GPlayer;
class GameOSFile;
class GameThing;

class Container: public GameThingWithPos
{
public:
    GContainerInfo* info; /* 0x28 */
    GPlayer* owner;

    // Override methods

    // win1.41 0046b900 mac 100bf890 Container::_dt(void)
    virtual ~Container();
    // win1.41 00462a50 mac 1005c760 Container::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 0046b960 mac 100bf930 Container::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0046b920 mac 100bf9d0 Container::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
