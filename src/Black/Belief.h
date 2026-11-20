#ifndef BW1_DECOMP_BELIEF_INCLUDED_H
#define BW1_DECOMP_BELIEF_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/Enum.h> /* For NUM_REACTION_FUNCTIONS, enum GUIDANCE_ALIGNMENT */

#include "Base.h"       /* For struct Base */
#include "PlayerName.h" /* For _PLAYER_NAME_COUNT */

// Forward Declares

class GBeliefInfo;
class GameThingWithPos;
class GPlayer;
struct MapCoords;
class Reaction;
class Town;

#define BELIEF_DEFAULT_MAX                     10.0f
#define BELIEF_SPRITE_VALUE_SCALE              10000.0f
#define BELIEF_SPINNER_VALUE_SCALE             1000.0f
#define BELIEF_SPINNER_MIN_TOTAL               0.001f
#define BELIEF_LOSS_DISPLAY_THRESHOLD          0.005
#define BELIEF_MIN_GAIN_FOR_DESIRE             0.008f
#define BELIEF_GAIN_FRACTION_SCALE             10.0f
#define BELIEF_SFX_EPSILON                     0.0001f
#define BELIEF_TURNS_PER_PROCESS               10
#define BELIEF_BOREDOM_MULTIPLIER_MAX          1.0f
#define BELIEF_NEEDED_TO_CONVERT_UNSET         -9999.0f
#define BELIEF_DISTANCE_SIGMOID_THRESHOLD      -0.9f
#define BELIEF_ALMOST_LOST_SKIPPED_LAND_NUMBER 1

class GBelief : public Base
{
public:
	// BW1W120 004380b0 BW1M119 01081680
	static void ProcessOncePerTurn();

	float    BeliefInPlayer[_PLAYER_NAME_COUNT];
	float    TotalBeliefGained[_PLAYER_NAME_COUNT];
	uint32_t LastBeliefGainTurn[_PLAYER_NAME_COUNT];
	float    BeliefInPlayerMax[_PLAYER_NAME_COUNT];
	float    DisplayedBeliefGain[_PLAYER_NAME_COUNT];
	float    PendingBeliefLoss[_PLAYER_NAME_COUNT];
	float    PendingBeliefGain[_PLAYER_NAME_COUNT];
	float    BoredomMultiplier[NUM_REACTION_FUNCTIONS];
	float    DesireAffectsBeliefAfter[TOWN_DESIRE_INFO_LAST];

	// Static methods

	static void CheckAlmostLostTowns(GPlayer& player);

	// Non-virtual methods

	// BW1W120 00437dd0 BW1M119 010b4960
	void  Init(Town* town);
	void  InitDesireAffectsBeliefAfter();
	void  PlayBeliefSFX(GPlayer* player, MapCoords& pos, GUIDANCE_ALIGNMENT alignment);
	float GetDisplayedBeliefGain(unsigned long player_number);
	float GetBeliefGained(unsigned long player_number);
	float GetBeliefGainedFraction(unsigned long player_number);
	// BW1W120 00437e70 BW1M119 010b4910
	float GetBeliefInPlayer(unsigned long player);
	// BW1W120 00437e90 BW1M119 0105f3a0
	float GetBeliefInPlayer(GPlayer* player);
	// BW1W120 00437eb0 BW1M119 0109b8e0
	void AddToBelief(GPlayer* player, float amount, GameThingWithPos* object, bool32_t show_popup,
	                 GUIDANCE_ALIGNMENT alignment);
	// BW1W120 00438770 BW1M119 010b4310
	static float DistanceChangeToBelief(float distance, float range);
	// BW1W120 00438790 BW1M119 01002610
	void AddToBoredomMultiplier(Reaction* reaction, float multiplier);
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
	// BW1W120 00438a40 BW1M119 010b3cd0
	float GetBeliefChangeInPlayerDesire(GPlayer* player);
	// BW1W120 00438b20 BW1M119 010b3bd0
	float GetPercentCloseOtherPlayer(GPlayer* player);
	// BW1W120 00438800 BW1M119 010a0330
	void DrawBelief(float scale, GameThingWithPos* thing, GPlayer* player);
	// BW1W120 00437fd0 BW1M119 010b46f0
	void ReduceBelief(GPlayer* player, Town* town, float amount);
	// BW1W120 004383d0 BW1M119 0105ea90
	void Update(Town* town);
};

#endif /* BW1_DECOMP_BELIEF_INCLUDED_H */
