#ifndef BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H
#define BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Animal.h" /* For struct Animal */

// Forward Declares

class Base;
class Creature;
class GameOSFile;
class GameThing;
class GameThingWithPos;
class Living;
struct MapCoords;
class Object;

class Dove: public Animal
{
public:

    // Override methods

    // win1.41 0041dda0 mac 10171a70 Dove::_dt(void)
    virtual ~Dove();
    // win1.41 0041dd90 mac 10172860 Dove::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041f130 mac 10173580 Dove::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0041f110 mac 101735e0 Dove::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0041dd80 mac 10172830 Dove::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041f190 mac 10173450 Dove::CanBePickedUpByCreature(Creature *)
    virtual uint32_t CanBePickedUpByCreature(Creature* param_1);
    // win1.41 0041f150 mac 101734d0 Dove::CanBeStompedOnByCreature(Creature *)
    virtual uint32_t CanBeStompedOnByCreature(Creature* param_1);
    // win1.41 0041dd70 mac 10171570 Dove::CanBePoodOn(Creature *)
    virtual uint32_t CanBePoodOn(Creature* param_1);
    // win1.41 004d1b10 mac 10243110 Dove::GetHowMuchCreatureWantsToLookAtMe(void)
    virtual float GetHowMuchCreatureWantsToLookAtMe();
    // win1.41 0041eaa0 mac 10173fb0 Dove::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 0041f680 mac 10037cf0 Dove::Draw(void)
    virtual void Draw();
    // win1.41 0041f240 mac 101732a0 Dove::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 0041bd80 mac 10170ba0 Dove::StandAnimation(void)
    virtual uint32_t StandAnimation();
};

class SpellDove: public Dove
{
public:

    // Override methods

    // win1.41 0041eb60 mac 10173770 SpellDove::_dt(void)
    virtual ~SpellDove();
    // win1.41 0041eb50 mac 10175210 SpellDove::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0041fad0 mac 10172970 SpellDove::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 0041fb40 mac 10172890 SpellDove::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0041eb40 mac 101751d0 SpellDove::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 0041f5c0 mac 10172e20 SpellDove::SetDying(void)
    virtual bool SetDying();
    // win1.41 0041bde0 mac 10170a20 SpellDove::StandAnimation(void)
    virtual uint32_t StandAnimation();
    // win1.41 0041f620 mac 10172de0 SpellDove::GetNumTurnsToDieOver(void)
    virtual uint32_t GetNumTurnsToDieOver();
};

#endif /* BW1_DECOMP_ANIMAL_DOVE_INCLUDED_H */
