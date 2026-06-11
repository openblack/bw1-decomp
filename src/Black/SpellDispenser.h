#ifndef BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H
#define BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdbool.h> /* For bool */
#include <stdint.h> /* For uint32_t */

#include "Abode.h" /* For struct Abode */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class GameThingWithPos;
struct MapCoords;
class Object;

class SpellDispenser: public Abode
{
public:

    // Override methods

    // win1.41 00722700 mac 1051a8e0 SpellDispenser::_dt(void)
    virtual ~SpellDispenser();
    // win1.41 007228a0 mac 1051b9e0 SpellDispenser::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 00722fa0 mac 1051ac90 SpellDispenser::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00722e80 mac 1051acf0 SpellDispenser::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00722d50 mac 1051aeb0 SpellDispenser::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 007226f0 mac 1051aa40 SpellDispenser::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007226d0 mac 1051a9b0 SpellDispenser::IsSpellDispenser(void)
    virtual uint32_t IsSpellDispenser();
    // win1.41 007226c0 mac 1051a970 SpellDispenser::IsActive( const(void))
    virtual uint32_t IsActive();
    // win1.41 00722fb0 mac 1051ac40 SpellDispenser::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // win1.41 00722a70 mac 1051b590 SpellDispenser::Process(void)
    virtual uint32_t Process();
    // win1.41 00722940 mac 1051b6d0 SpellDispenser::Draw(void)
    virtual void Draw();
    // win1.41 007227d0 mac 1051ba80 SpellDispenser::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // win1.41 007226e0 mac 1051a9f0 SpellDispenser::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();
};

#endif /* BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H */
