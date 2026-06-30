#ifndef BW1_DECOMP_ARENA_INCLUDED_H
#define BW1_DECOMP_ARENA_INCLUDED_H

#include <assert.h> /* For static_assert */
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

    // BW1W120 004247c0 BW1M100 100ad310 GArena::_dt(void)
    virtual ~GArena();
    // BW1W120 00424960 BW1M100 100ac760 GArena::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00424780 BW1M100 10027dd0 GArena::GetRadius(void)
    virtual float GetRadius();
    // BW1W120 004247b0 BW1M100 100ad420 GArena::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 004251d0 BW1M100 100aa860 GArena::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 004250d0 BW1M100 100aa9e0 GArena::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 004247a0 BW1M100 100ad3e0 GArena::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00424790 BW1M100 100ad3a0 GArena::GetText(void)
    virtual const char* GetText();
};

class ArenaSpellIcon: public Fixed
{
public:

    // Override methods

    // BW1W120 00425350 BW1M100 100aa680 ArenaSpellIcon::_dt(void)
    virtual ~ArenaSpellIcon();
    // BW1W120 00425600 BW1M100 100aa280 ArenaSpellIcon::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00425330 BW1M100 100a9c90 ArenaSpellIcon::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 004257d0 BW1M100 100a9ef0 ArenaSpellIcon::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 004256e0 BW1M100 100aa070 ArenaSpellIcon::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 00425320 BW1M100 100a9c50 ArenaSpellIcon::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00425540 BW1M100 100aa340 ArenaSpellIcon::Create3DObject(void)
    virtual void Create3DObject();
    // BW1W120 004256c0 BW1M100 100aa250 ArenaSpellIcon::Draw(void)
    virtual void Draw();
    // BW1W120 00425420 BW1M100 100aa4a0 ArenaSpellIcon::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 004256d0 BW1M100 100aa200 ArenaSpellIcon::IsEffectReceiver(EffectValues *)
    virtual uint32_t IsEffectReceiver(EffectValues* param_1);
    // BW1W120 00425310 BW1M100 100a9c00 ArenaSpellIcon::CreatureMustAvoid(Creature *)
    virtual bool CreatureMustAvoid(Creature* param_1);
    // BW1W120 00425300 BW1M100 100a9bb0 ArenaSpellIcon::SaveObject(LHOSFile &, MapCoords const &)
    virtual uint32_t SaveObject(LHOSFile* param_1, const MapCoords* param_2);
};

#endif /* BW1_DECOMP_ARENA_INCLUDED_H */
