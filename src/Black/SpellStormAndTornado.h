#ifndef BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H
#define BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include "Spell.h" /* For struct Spell */

// Forward Declares

class Base;
class GameThing;

class SpellStormAndTornado : public Spell
{
public:
	// Override methods

	// BW1W120 0072d990 BW1M100 1052dff0 SpellStormAndTornado::_dt(void)
	virtual ~SpellStormAndTornado();
	// BW1W120 0072da20 BW1M100 1052e7f0 SpellStormAndTornado::ToBeDeleted(int)
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072d960 BW1M100 1052e140 SpellStormAndTornado::GetRadius(void)
	virtual float GetRadius();
	// BW1W120 0072d950 BW1M100 1052e0e0 SpellStormAndTornado::Get2DRadius(void)
	virtual float Get2DRadius();
	// BW1W120 0072d980 BW1M100 1052e1f0 SpellStormAndTornado::GetDebugText(void)
	virtual char* GetDebugText();
	// BW1W120 0072d970 BW1M100 1052e1b0 SpellStormAndTornado::GetSaveType(void)
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H */
