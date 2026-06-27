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

    // BW1W120 0046b900 BW1M100 100bf890 Container::_dt(void)
    virtual ~Container();
    // BW1W120 00462a50 BW1M100 1005c760 Container::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0046b960 BW1M100 100bf930 Container::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 0046b920 BW1M100 100bf9d0 Container::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
};

#endif /* BW1_DECOMP_CONTAINER_INCLUDED_H */
