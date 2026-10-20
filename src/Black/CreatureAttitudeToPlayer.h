#ifndef BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H
#define BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stddef.h> /* For offsetof */
#include <stdint.h> /* For uint32_t */
#include <stdio.h>  /* For FILE */

#include <Lionhead/LH3DLib/development/LHPoint.h> /* For struct LHPoint */
#include <chlasm/CreatureEnum.h>                  /* For enum DETECTED_PLAYER_ACTION */
#include <chlasm/Enum.h> /* For enum CREATURE_DESIRES, enum MAGIC_TYPE, enum TOWN_DESIRE_INFO */
#include <re_common.h>   /* For bool32_t */

#include "Base.h"           /* For struct Base */
#include "ForgetfulStack.h" /* For struct ForgetfulStack */

#define PERCEIVED_DESIRE_HISTORY_SIZE 30

// Forward Declares

class Creature;
class GameThingWithPos;

struct CreaturePerceivedPlayerDesires
{
	float                                                Desires[NUM_CREATURE_DESIRES];              /* 0x0 */
	float                                                TownDesires[TOWN_DESIRE_INFO_LAST];         /* 0xa0 */
	ForgetfulStack<float, PERCEIVED_DESIRE_HISTORY_SIZE> PreviousDesires[NUM_CREATURE_DESIRES];      /* 0xe4 */
	ForgetfulStack<float, PERCEIVED_DESIRE_HISTORY_SIZE> PreviousTownDesires[TOWN_DESIRE_INFO_LAST]; /* 0x14e4 */

	// BW1W120 004c7e50 BW1M119 inlined
	CreaturePerceivedPlayerDesires();

	// BW1W120 004c7eb0 BW1M119 0123a800
	void Process();
	// BW1W120 004c7ed0 BW1M119 0123a710
	CREATURE_DESIRES GetDominantDesire(Creature* creature);
	// BW1W120 004c7f20 BW1M119 inlined
	void DecayDesires();
	// BW1W120 004c7f60 BW1M119 0123a590
	void StorePreviousValues();
	// BW1W120 004c8000 BW1M119 0123a4f0
	void IncreaseDesire(CREATURE_DESIRES desire, float amount);
	// BW1W120 004c8050 BW1M119 inlined
	void IncreaseTownDesire(TOWN_DESIRE_INFO desire, float amount);
};
static_assert(sizeof(CreaturePerceivedPlayerDesires) == 0x1d64, "Data type is of wrong size");

struct CreatureObservedPlayerAction
{
	DETECTED_PLAYER_ACTION Action; /* 0x0 */
	GameThingWithPos*      Object;
	GameThingWithPos*      AssociatedObject;
	MAGIC_TYPE             MagicType;

	// BW1W120 004c7e30 BW1M119 inlined
	CreatureObservedPlayerAction();
};

class CreatureAttitudeToPlayer : public Base
{
public:
	uint32_t                       NumGameTicksPlayerHasBeenCurrentlyWatchingMe;
	uint32_t                       TicksSinceAttention;
	uint32_t                       TotalNumGameTicksPlayerHasBeenWatchingMe;
	uint32_t                       TicksSinceInteraction;
	float                          HowNicePlayerHasBeenToMe; /* 0x18 */
	float                          MostRecentPlayerFeedbackValue;
	uint32_t                       GameTurnOfMostRecentPlayerFeedback;
	float                          ImpressedByPlayer;
	float                          Interest;
	LHPoint                        PreviousHandPos; /* 0x2c */
	float                          HandMovement;
	bool32_t                       HandPosNeedsInitialising;
	CreaturePerceivedPlayerDesires PerceivedPlayerDesires; /* 0x40 */
	CreatureObservedPlayerAction   ObservedAction;         /* 0x1da4 */

	// BW1W120 004c8130 BW1M119 0123a070
	CreatureAttitudeToPlayer();

	// BW1W120 004c81d0 BW1M119 0123a000
	void UpdatePlayerFeedback(float feedback);
	// BW1W120 004c7d20 BW1M119 null
	void Dump(FILE* file, unsigned long indent);
};
static_assert(offsetof(CreatureAttitudeToPlayer, PerceivedPlayerDesires) == 0x40, "Data member is at the wrong offset");
static_assert(sizeof(CreatureAttitudeToPlayer) == 0x1db4, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_ATTITUDE_TO_PLAYER_INCLUDED_H */
