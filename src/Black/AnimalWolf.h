#ifndef BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H
#define BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "AnimalLion.h" /* For struct Lion */

// Forward Declares

class Base;
class GPlayer;
class GameOSFile;
class GameThing;
class Living;
struct MapCoords;
class MobileWallHug;
class Object;

class SpellWolf: public Lion
{
public:

    // Override methods

    // BW1W120 004208e0 BW1M100 10176960 SpellWolf::_dt(void)
    virtual ~SpellWolf();
    // BW1W120 004208a0 BW1M100 101769f0 SpellWolf::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // BW1W120 004208b0 BW1M100 10176a30 SpellWolf::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // BW1W120 004208d0 BW1M100 10176ab0 SpellWolf::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 004210b0 BW1M100 10176d80 SpellWolf::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 004211d0 BW1M100 10176bb0 SpellWolf::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 004208c0 BW1M100 10176a70 SpellWolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0051c560 BW1M100 100c4a10 SpellWolf::Draw(void)
    virtual void Draw();
    // BW1W120 00420910 BW1M100 10177d60 SpellWolf::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 00420cf0 BW1M100 101777b0 SpellWolf::SetDying(void)
    virtual bool SetDying();
    // BW1W120 0041c6a0 BW1M100 1016ee70 SpellWolf::StandAnimation(void)
    virtual uint32_t StandAnimation();
    // BW1W120 004209b0 BW1M100 10177c00 SpellWolf::SetSpeed(long)
    virtual void SetSpeed(int param_1);
    // BW1W120 00420d50 BW1M100 10177770 SpellWolf::GetNumTurnsToDieOver(void)
    virtual uint32_t GetNumTurnsToDieOver();
};

class Wolf: public Lion
{
public:

    // Override methods

    // BW1W120 00421680 BW1M100 10120e40 Wolf::_dt(void)
    virtual ~Wolf();
    // BW1W120 00421670 BW1M100 101790c0 Wolf::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00421660 BW1M100 10179090 Wolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 0041c580 BW1M100 1016f1b0 Wolf::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H */
