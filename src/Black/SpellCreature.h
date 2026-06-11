#ifndef BW1_DECOMP_SPELL_CREATURE_INCLUDED_H
#define BW1_DECOMP_SPELL_CREATURE_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Object;
struct PSysProcessInfo;
struct SpellCastData;

class SpellCreature: public Spell
{
public:

    // Override methods

    // win1.41 00722240 mac 10519e90 SpellCreature::_dt(void)
    virtual ~SpellCreature();
    // win1.41 00722230 mac 10519fb0 SpellCreature::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00722520 mac 1051a0e0 SpellCreature::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00722590 mac 10519ff0 SpellCreature::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 00722220 mac 10519f70 SpellCreature::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00722490 mac 1051a2e0 SpellCreature::ProcessSpellSeed(void)
    virtual void ProcessSpellSeed();
    // win1.41 007222c0 mac 1051a7a0 SpellCreature::GetCreatureCastOn(void)
    virtual uint32_t GetCreatureCastOn();
    // win1.41 00722380 mac 1051a4c0 SpellCreature::Process(void)
    virtual uint32_t Process();
    // win1.41 007224f0 mac 1051a290 SpellCreature::CloseDown(void)
    virtual void CloseDown();
    // win1.41 007222d0 mac 1051a5f0 SpellCreature::InitWithObject(GameThing *, Object *, SpellCastData *, PSysProcessInfo const &)
    virtual int InitWithObject(GameThing* param_1, Object* param_2, SpellCastData* param_3, const PSysProcessInfo* param_4);
};

#endif /* BW1_DECOMP_SPELL_CREATURE_INCLUDED_H */
