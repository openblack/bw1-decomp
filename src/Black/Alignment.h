#ifndef BW1_DECOMP_ALIGNMENT_INCLUDED_H
#define BW1_DECOMP_ALIGNMENT_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For enum RESOURCE_TYPE, enum DEATH_REASON, enum TOWN_DESIRE_INFO */

#include "Base.h" /* For struct Base */

// Forward Declares

class Abode;
class Creature;
class EffectValues;
class GPlayer;
class GameThing;
class Object;
class Reaction;
class Town;
class Tree;
class Villager;

class GAlignment : public Base
{
public:
	float Value; /* 0x8 */
	float ChangeThisTurn;

	// Override methods

	// BW1W120 004740e0 BW1M119 011e63d0
	virtual ~GAlignment();

	// Constructors

	// BW1W120 inlined BW1M119 inlined
	GAlignment() { SetToZero(); }

	// Non-virtual methods

	// BW1W120 inlined BW1M119 011e8cc0
	void SetToZero()
	{
		ChangeThisTurn = 0.0f;
		Value = 0.0f;
	}
	// BW1W120 inlined BW1M119 011e3270
	float GetValue() { return Value; }
	// BW1W120 00414140 BW1M119 0102e360
	void Process(GameThing* thing);
	// BW1W120 004141a0 BW1M119 01035580
	void ProcessForPlayer(GPlayer* player);
	// BW1W120 004141f0 BW1M119 01069e10
	void Update(Town& town);
	// BW1W120 00414220 BW1M119 010a7a10
	void Update(Creature& creature);
	// BW1W120 00414320 BW1M119 0109d980
	void UpdateFromReaction(Reaction* reaction, float change);
	// BW1W120 00414360 BW1M119 010a7850
	void ScriptUpdate(float change, GPlayer* player, unsigned long script);
	// BW1W120 004143b0 BW1M119 010a7750
	void Update(GPlayer* player, Object* object, DEATH_REASON reason);
	// BW1W120 00414410 BW1M119 010a7380
	void Update(Object* object, EffectValues& values, float life);
	// BW1W120 00414520 BW1M119 010a7210
	void Update(Abode* abode, RESOURCE_TYPE type, long amount, float scale);
	// BW1W120 004145a0 BW1M119 010a70f0
	void Update(GPlayer* player, Tree* tree, bool planted);
	// BW1W120 00414600 BW1M119 010a6f80
	void UpdateFromDisciple(GPlayer* player, Villager* villager);
	// BW1W120 00414660 BW1M119 01069e90
	float GetUpdatedChangeThisTurn(float change);
	// BW1W120 004146b0 BW1M119 010a6ed0
	void CrudeUpdate(float change);
	// BW1W120 004146f0 BW1M119 010a6e70
	void CrudeSet(float value);

	// Static methods

	// BW1W120 00414730 BW1M119 01094660
	static DISCRETE_ALIGNMENT_VALUES GetDiscreteAlignmentValue(float value);
};

#endif /* BW1_DECOMP_ALIGNMENT_INCLUDED_H */
