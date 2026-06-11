#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Fixed.h" /* For struct Fixed */
#include "GameThingWithPos.h" /* For struct GameThingWithPos */

// Forward Declares

class Base;
class Creature;
class EffectValues;
class GameOSFile;
class GameThing;
class LHOSFile;
struct MapCoords;
class Object;

class GArena: public GameThingWithPos
{
public:
    uint8_t field_0x28[0x24];

    // Override methods

    // win1.41 004247c0 mac 100ad310 GArena::_dt(void)
    virtual ~GArena();
    // win1.41 00424960 mac 100ac760 GArena::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00424780 mac 10027dd0 GArena::GetRadius(void)
    virtual float GetRadius();
    // win1.41 004247b0 mac 100ad420 GArena::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004251d0 mac 100aa860 GArena::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 004250d0 mac 100aa9e0 GArena::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 004247a0 mac 100ad3e0 GArena::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00424790 mac 100ad3a0 GArena::GetText(void)
    virtual const char* GetText();
};

class ArenaSpellIcon: public Fixed
{
public:

    // Override methods

    // win1.41 00425350 mac 100aa680 ArenaSpellIcon::_dt(void)
    virtual ~ArenaSpellIcon();
    // win1.41 00425600 mac 100aa280 ArenaSpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00425330 mac 100a9c90 ArenaSpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 004257d0 mac 100a9ef0 ArenaSpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 004256e0 mac 100aa070 ArenaSpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00425320 mac 100a9c50 ArenaSpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00425540 mac 100aa340 ArenaSpellIcon::Create3DObject(void)
    virtual void Create3DObject();
    // win1.41 004256c0 mac 100aa250 ArenaSpellIcon::Draw(void)
    virtual void Draw();
    // win1.41 00425420 mac 100aa4a0 ArenaSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 004256d0 mac 100aa200 ArenaSpellIcon::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // win1.41 00425310 mac 100a9c00 ArenaSpellIcon::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // win1.41 00425300 mac 100a9bb0 ArenaSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
