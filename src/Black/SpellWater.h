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

    // BW1W120 0055d020 BW1M100 1051ee70 SpellWater::_dt(void)
    virtual ~SpellWater();
    // BW1W120 0055d010 BW1M100 1051ef50 SpellWater::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007253b0 BW1M100 1051f070 SpellWater::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00725420 BW1M100 1051ef90 SpellWater::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055d000 BW1M100 1051ef10 SpellWater::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00724ed0 BW1M100 1051f310 SpellWater::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_WATER_INCLUDED_H */
