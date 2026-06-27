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

    // BW1W120 0055d2a0 BW1M100 1051dac0 SpellFlockFlying::_dt(void)
    virtual ~SpellFlockFlying();
    // BW1W120 0055d290 BW1M100 1051ec90 SpellFlockFlying::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 007249d0 BW1M100 1051c220 SpellFlockFlying::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // BW1W120 00724ac0 BW1M100 1051c0a0 SpellFlockFlying::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // BW1W120 0055d280 BW1M100 1051ec50 SpellFlockFlying::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00723a30 BW1M100 1051d940 SpellFlockFlying::GetParticleType(void)
    virtual void GetParticleType();
    // BW1W120 00724100 BW1M100 1051cea0 SpellFlockFlying::Draw(void)
    virtual void Draw();
    // BW1W120 00723bc0 BW1M100 1051d040 SpellFlockFlying::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_FLYING_INCLUDED_H */
