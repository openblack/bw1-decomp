#ifndef BW1_DECOMP_SHOW_NEEDS_INCLUDED_H
#define BW1_DECOMP_SHOW_NEEDS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "GameThing.h" /* For struct GameThing */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThingWithPos;
struct MapCoords;
class ShowNeedsVisuals;

class ShowNeeds: public GameThing
{
public:
    GameThingWithPos* thing; /* 0x14 */
    ShowNeedsVisuals* visuals[0x3];

    // Override methods

    // BW1W120 0055dd40 BW1M100 101462a0 ShowNeeds::_dt(void)
    virtual ~ShowNeeds();
    // BW1W120 00719b20 BW1M100 10145da0 ShowNeeds::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00719c30 BW1M100 10145a10 ShowNeeds::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 0055dd30 BW1M100 10146370 ShowNeeds::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00719d30 BW1M100 10145850 ShowNeeds::GetShowNeedsPos(unsigned long, MapCoords *)
    virtual uint32_t GetShowNeedsPos(uint32_t param_1, MapCoords* param_2);
    // BW1W120 00719cf0 BW1M100 101458d0 ShowNeeds::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00719cb0 BW1M100 10145970 ShowNeeds::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055dd20 BW1M100 10146330 ShowNeeds::GetSaveType(void)
    virtual uint32_t GetSaveType();

    // Static methods

    // BW1W120 00719b60 BW1M100 10145cd0 ShowNeeds::Create(GameThingWithPos *)
    static ShowNeeds* Create(GameThingWithPos* game_thing);

    // Constructors

    // BW1W120 00719ab0 BW1M100 10145e60 ShowNeeds::ShowNeeds(GameThingWithPos *)
    ShowNeeds(GameThingWithPos* game_thing);
};

#endif /* BW1_DECOMP_SHOW_NEEDS_INCLUDED_H */
