#ifndef BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H
#define BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameThing;

class SpellStormAndTornado: public Spell
{
public:

    // Override methods

    // win1.41 0072d990 mac 1052dff0 SpellStormAndTornado::_dt(void)
    virtual ~SpellStormAndTornado();
    // win1.41 0072da20 mac 1052e7f0 SpellStormAndTornado::ToBeDeleted(int)
    virtual void ToBeDeleted(int param_1);
    // win1.41 0072d960 mac 1052e140 SpellStormAndTornado::GetRadius(void)
    virtual float GetRadius();
    // win1.41 0072d950 mac 1052e0e0 SpellStormAndTornado::Get2DRadius(void)
    virtual float Get2DRadius();
    // win1.41 0072d980 mac 1052e1f0 SpellStormAndTornado::GetDebugText(void)
    virtual char* GetDebugText();
    // win1.41 0072d970 mac 1052e1b0 SpellStormAndTornado::GetSaveType(void)
    virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H */
