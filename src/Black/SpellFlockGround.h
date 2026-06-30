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

    // BW1W120 0055d2f0 BW1M100 1051bea0 SpellFlockGround::_dt(void)
    virtual ~SpellFlockGround();
    // BW1W120 0055d2e0 BW1M100 1051bf80 SpellFlockGround::GetDebugText(void)
    virtual char* GetDebugText();
    // BW1W120 00724bb0 BW1M100 1051c030 SpellFlockGround::Load(GameOSFile &)
    virtual uint32_t Load(GameOSFile& file);
    // BW1W120 00724bd0 BW1M100 1051bfc0 SpellFlockGround::Save(GameOSFile &)
    virtual uint32_t Save(GameOSFile& file);
    // BW1W120 0055d2d0 BW1M100 1051bf40 SpellFlockGround::GetSaveType(void)
    virtual uint32_t GetSaveType();
    // BW1W120 00724290 BW1M100 1051ccf0 SpellFlockGround::GetParticleType(void)
    virtual void GetParticleType();
    // BW1W120 007242a0 BW1M100 1051c720 SpellFlockGround::Process(void)
    virtual uint32_t Process();
};

#endif /* BW1_DECOMP_SPELL_FLOCK_GROUND_INCLUDED_H */
