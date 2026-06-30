#ifndef BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H
#define BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Spell.h" /* For struct Spell, struct SpellVftable */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class SpellWithObjects: public Spell
{
public:
    uint8_t field_0xec[0x8];

    // Override methods

    // BW1W120 0055cf80 BW1M100 1030e320 SpellWithObjects::_dt(void)
    virtual ~SpellWithObjects();
    // BW1W120 00720fd0 BW1M100 10517170 SpellWithObjects::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // BW1W120 0055cf70 BW1M100 10519dd0 SpellWithObjects::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007210f0 BW1M100 10516ed0 SpellWithObjects::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 007211d0 BW1M100 10516d00 SpellWithObjects::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055cf60 BW1M100 10519d90 SpellWithObjects::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 007212f0 BW1M100 10516c10 SpellWithObjects::ProcessSpellSeed(void)
    virtual void ProcessSpellSeed();
    // BW1W120 00721290 BW1M100 10516c70 SpellWithObjects::Process(void)
    virtual uint32_t Process();
    // BW1W120 00721300 BW1M100 10516b50 SpellWithObjects::CloseDown(void)
    virtual void CloseDown();
    // BW1W120 0055cea0 BW1M100 inlined SpellWithObjects::GetMaxObjectsToCreate(void)
    virtual int GetMaxObjectsToCreate();
    // BW1W120 0055cf50 BW1M100 103b1b10 SpellWithObjects::GetSetObjectsDyingOnCloseDown(void)
    virtual bool GetSetObjectsDyingOnCloseDown();
};

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
