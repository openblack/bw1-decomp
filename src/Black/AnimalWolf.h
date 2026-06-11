#ifndef BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H
#define BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
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

    // win1.41 004208e0 mac 10176960 SpellWolf::_dt(void)
    virtual ~SpellWolf();
    // win1.41 004208a0 mac 101769f0 SpellWolf::GetPlayer(void)
    virtual GPlayer* GetPlayer();
    // win1.41 004208b0 mac 10176a30 SpellWolf::SetPlayer(GPlayer *)
    virtual void SetPlayer(GPlayer* param_1);
    // win1.41 004208d0 mac 10176ab0 SpellWolf::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004210b0 mac 10176d80 SpellWolf::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 004211d0 mac 10176bb0 SpellWolf::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 004208c0 mac 10176a70 SpellWolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0051c560 mac 100c4a10 SpellWolf::Draw(void)
    virtual void Draw();
    // win1.41 00420910 mac 10177d60 SpellWolf::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 00420cf0 mac 101777b0 SpellWolf::SetDying(void)
    virtual bool SetDying();
    // win1.41 0041c6a0 mac 1016ee70 SpellWolf::StandAnimation(void)
    virtual uint32_t StandAnimation();
    // win1.41 004209b0 mac 10177c00 SpellWolf::SetSpeed(long)
    virtual void SetSpeed(int param_1);
    // win1.41 00420d50 mac 10177770 SpellWolf::GetNumTurnsToDieOver(void)
    virtual uint32_t GetNumTurnsToDieOver();
};

class Wolf: public Lion
{
public:

    // Override methods

    // win1.41 00421680 mac 10120e40 Wolf::_dt(void)
    virtual ~Wolf();
    // win1.41 00421670 mac 101790c0 Wolf::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00421660 mac 10179090 Wolf::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041c580 mac 1016f1b0 Wolf::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

#endif /* BW1_DECOMP_ANIMAL_WOLF_INCLUDED_H */
