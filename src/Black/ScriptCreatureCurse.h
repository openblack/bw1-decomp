#ifndef BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H
#define BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H

#include <assert.h> /* For static_assert */

class Creature;

struct ScriptCreatureCurse
{
	float Height; /* 0x0 */
	float Strength;
	float Alignment;

	ScriptCreatureCurse()
	{
		Alignment = 0.0f;
		Strength = 0.0f;
		Height = 0.0f;
	}

	// BW1W120 006f6190 BW1M119 015f04a0
	void Init(Creature* creature);
	// BW1W120 006f61e0 BW1M119 015f03c0
	void ResolveLoad(Creature* creature);
};

#endif /* BW1_DECOMP_SCRIPT_CREATURE_CURSE_INCLUDED_H */
