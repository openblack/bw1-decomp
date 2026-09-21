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

	// BW1W120 0072d990 BW1M119 01536890
	virtual ~SpellStormAndTornado();
	// BW1W120 0072da20 BW1M119 01537090
	virtual void ToBeDeleted(int param_1);
	// BW1W120 0072d960 BW1M119 015369e0
	virtual float GetRadius();
	// BW1W120 0072d950 BW1M119 01536980
	virtual float Get2DRadius();
	// BW1W120 0072d980 BW1M119 01536a90
	virtual char* GetDebugText();
	// BW1W120 0072d970 BW1M119 01536a50
	virtual uint32_t GetSaveType();
};

#endif /* BW1_DECOMP_SPELL_STORM_AND_TORNADO_INCLUDED_H */
