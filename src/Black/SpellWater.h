#ifndef BW1_DECOMP_SPELL_WATER_INCLUDED_H
#define BW1_DECOMP_SPELL_WATER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t, uint8_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;

class SpellWater: public Spell
{
public:
    uint8_t field_0xec[0x8];

    // Override methods

    // win1.41 0055d020 mac 1051ee70 SpellWater::_dt(void)
    virtual ~SpellWater();
    // win1.41 0055d010 mac 1051ef50 SpellWater::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007253b0 mac 1051f070 SpellWater::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00725420 mac 1051ef90 SpellWater::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d000 mac 1051ef10 SpellWater::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00724ed0 mac 1051f310 SpellWater::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
