#ifndef BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H
#define BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "SpellFlock.h" /* For struct SpellFlock */

// Forward Declares

class Base;
class GameOSFile;
class GameThing;
class Spell;

class SpellFlockGround: public SpellFlock
{
public:

    // Override methods

    // win1.41 0055d2f0 mac 1051bea0 SpellFlockGround::_dt(void)
    virtual ~SpellFlockGround();
    // win1.41 0055d2e0 mac 1051bf80 SpellFlockGround::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 00724bb0 mac 1051c030 SpellFlockGround::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile* param_1);
    // win1.41 00724bd0 mac 1051bfc0 SpellFlockGround::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile* param_1);
    // win1.41 0055d2d0 mac 1051bf40 SpellFlockGround::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // win1.41 00724290 mac 1051ccf0 SpellFlockGround::GetParticleType(void)
    virtual void GetParticleType();
    // win1.41 007242a0 mac 1051c720 SpellFlockGround::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H */
