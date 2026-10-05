#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS, enum GUIDANCE_ALIGNMENT */

#include "Base.h"       /* For struct Base */
#include "PlayerName.h" /* For _PLAYER_NAME_COUNT */

// Forward Declares

class GameThingWithPos;
class GPlayer;
class Town;

class GBelief : public Base
{
public:
	// BW1W120 004380b0 BW1M119 01081680
	static void ProcessOncePerTurn();

	float    BeliefInPlayer[_PLAYER_NAME_COUNT];
	uint32_t field_0x28[_PLAYER_NAME_COUNT];
	float    field_0x48[_PLAYER_NAME_COUNT];
	float    BeliefInPlayerMax[_PLAYER_NAME_COUNT];
	uint32_t field_0x88[_PLAYER_NAME_COUNT];
	float    field_0xa8[_PLAYER_NAME_COUNT];
	float    field_0xc8[_PLAYER_NAME_COUNT];
	float    BoredomMultiplier[NUM_REACTION_FUNCTIONS];
	float    field_0x18c[0x11];

	// Non-virtual methods

	// BW1W120 00437dd0 BW1M119 010b4960
	void Init(Town* town);
	// BW1W120 00437e70 BW1M119 010b4910
	float GetBeliefInPlayer(unsigned long param_1);
	// BW1W120 00437e90 BW1M119 0105f3a0
	float GetBeliefInPlayer(GPlayer* player);
	// BW1W120 00437eb0 BW1M119 0109b8e0
	void AddToBelief(GPlayer* player, float amount, GameThingWithPos* object, int param_4,
	                 GUIDANCE_ALIGNMENT alignment);
	// BW1W120 00438770 BW1M119 010b4310
	static float DistanceChangeToBelief(float param_1, float param_2);
	// BW1W120 004387d0 BW1M119 010b4200
	void SetBelief(unsigned long index, float value);
	// BW1W120 00438910 BW1M119 010b4080
	float GetBeliefNeededToConvert(GPlayer* player, Town* town);
	// BW1W120 004389b0 BW1M119 010b3f50
	float GetMaxBeliefMeNotIncluded(unsigned long player_number);
	// BW1W120 00438a00 BW1M119 010b3ec0
	void SetBeliefInPlayerCap(GPlayer* player, float cap);
	// BW1W120 00438a20 BW1M119 010b3e40
	float GetBeliefInPlayerCap(GPlayer* player);
	// BW1W120 00438b20 BW1M119 010b3bd0
	float GetPercentCloseOtherPlayer(GPlayer* player);
};

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
