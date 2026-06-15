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

    // win1.41 0055cf80 mac 1030e320 SpellWithObjects::_dt(void)
    virtual ~SpellWithObjects();
    // win1.41 00720fd0 mac 10517170 SpellWithObjects::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0055cf70 mac 10519dd0 SpellWithObjects::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007210f0 mac 10516ed0 SpellWithObjects::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 007211d0 mac 10516d00 SpellWithObjects::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055cf60 mac 10519d90 SpellWithObjects::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 007212f0 mac 10516c10 SpellWithObjects::ProcessSpellSeed(void)
    virtual void ProcessSpellSeed();
    // win1.41 00721290 mac 10516c70 SpellWithObjects::Process(void)
    virtual uint32_t Process();
    // win1.41 00721300 mac 10516b50 SpellWithObjects::CloseDown(void)
    virtual void CloseDown();
    // win1.41 0055cea0 mac inlined SpellWithObjects::GetMaxObjectsToCreate(void)
    virtual int GetMaxObjectsToCreate();
    // win1.41 0055cf50 mac 103b1b10 SpellWithObjects::GetSetObjectsDyingOnCloseDown(void)
    virtual bool GetSetObjectsDyingOnCloseDown();
};

#endif /* BW1_DECOMP_SPELL_WITH_OBJECTS_INCLUDED_H */
