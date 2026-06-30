#ifndef BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H
#define BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H

#include <assert.h> /* For static_assert */
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

    // BW1W120 00722700 BW1M100 1051a8e0 SpellDispenser::_dt(void)
    virtual ~SpellDispenser();
    // BW1W120 007228a0 BW1M100 1051b9e0 SpellDispenser::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 00722fa0 BW1M100 1051ac90 SpellDispenser::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00722e80 BW1M100 1051acf0 SpellDispenser::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00722d50 BW1M100 1051aeb0 SpellDispenser::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 007226f0 BW1M100 1051aa40 SpellDispenser::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 007226d0 BW1M100 1051a9b0 SpellDispenser::IsSpellDispenser(void)
    virtual uint32_t IsSpellDispenser();
    // BW1W120 007226c0 BW1M100 1051a970 SpellDispenser::IsActive( const(void))
    virtual uint32_t IsActive();
    // BW1W120 00722fb0 BW1M100 1051ac40 SpellDispenser::GetScriptObjectType(void)
    virtual uint32_t GetScriptObjectType();
    // BW1W120 00722a70 BW1M100 1051b590 SpellDispenser::Process(void)
    virtual uint32_t Process();
    // BW1W120 00722940 BW1M100 1051b6d0 SpellDispenser::Draw(void)
    virtual void Draw();
    // BW1W120 007227d0 BW1M100 1051ba80 SpellDispenser::CallVirtualFunctionsForCreation(MapCoords const &)
    virtual void CallVirtualFunctionsForCreation(const MapCoords* param_1);
    // BW1W120 007226e0 BW1M100 1051a9f0 SpellDispenser::IsSpellSeedReturnPoint( const(void))
    virtual bool IsSpellSeedReturnPoint();

    // Static methods

    // BW1W120 007228d0 BW1M100 1051b8a0 SpellDispenser::Create(MapCoords const &, GAbodeInfo const *, Town *, float, float, float, int)
    static SpellDispenser* Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale, float food, int wood);
};

#endif /* BW1_DECOMP_SPELL_DISPENSER_INCLUDED_H */
