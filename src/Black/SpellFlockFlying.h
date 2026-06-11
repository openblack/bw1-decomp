#ifndef BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Spell;

class SpellFlockFlying: public SpellFlock
{
public:

    // Override methods

    // win1.41 0055d2a0 mac 1051dac0 SpellFlockFlying::_dt(void)
    virtual ~SpellFlockFlying();
    // win1.41 0055d290 mac 1051ec90 SpellFlockFlying::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 007249d0 mac 1051c220 SpellFlockFlying::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00724ac0 mac 1051c0a0 SpellFlockFlying::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d280 mac 1051ec50 SpellFlockFlying::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00723a30 mac 1051d940 SpellFlockFlying::GetParticleType(void)
    virtual void GetParticleType();
    // win1.41 00724100 mac 1051cea0 SpellFlockFlying::Draw(void)
    virtual void Draw();
    // win1.41 00723bc0 mac 1051d040 SpellFlockFlying::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H */
