#ifndef BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H

#include <assert.h> /* For static_assert */

// Forward Declares

class Creature;

struct ScriptCreatureCurse
{
	float height; /* 0x0 */
	float strength;
	float alignment;

	ScriptCreatureCurse()
	{
		alignment = 0.0f;
		strength = 0.0f;
		height = 0.0f;
	}

	// Non-virtual methods

	// BW1W120 006f6190 BW1M119 015f04a0
	void Init(Creature* creature);
	// BW1W120 006f61e0 BW1M119 015f03c0
	void ResolveLoad(Creature* creature);
};

#endif /* BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H */
