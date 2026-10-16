#ifndef BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H
#define BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H

#include <assert.h> /* For static_assert */
#include <stdint.h> /* For uint32_t */

#include <chlasm/CreatureEnum.h> /* For enum DETECTED_PLAYER_ACTION, enum MIMIC_STAGE */
#include <chlasm/Enum.h>         /* For enum MAGIC_TYPE */
#include <re_common.h>           /* For bool32_t */

#include "Base.h"      /* For struct Base */
#include "MapCoords.h" /* For struct MapCoords */

#define CREATURE_MIMICKING_MIN_REACTION_PRIORITY 150

// Forward Declares

class GameThingWithPos;
class GPlayer;

class CreatureMimicState : public Base
{
public:
	bool32_t               Mimicking;
	bool32_t               ActionUnderway;
	DETECTED_PLAYER_ACTION DetectedPlayerAction; /* 0x10 */
	MAGIC_TYPE             MagicType;
	GameThingWithPos*      Object;
	uint32_t               MimicType;
	MIMIC_STAGE            Stage;
	uint32_t               StageProgress;
	uint32_t               StageLimit;
	uint32_t               GameTurnStageStarted;
	MapCoords              ObjectPos;

	// Constructors

	// BW1W120 004e9d20 BW1M119 01273cb0
	CreatureMimicState();

	// Non-virtual methods

	// BW1W120 004e9d60 BW1M119 01273b20
	void SetCreatureIntoStateOfMimicking(DETECTED_PLAYER_ACTION action, GameThingWithPos* object,
	                                     MAGIC_TYPE magic_type);

	// BW1W120 004e9df0 BW1M119 012738f0
	static DETECTED_PLAYER_ACTION ComputeDetectedAction(GameThingWithPos* object, MAGIC_TYPE magic_type,
	                                                    GPlayer* player);
};
static_assert(sizeof(CreatureMimicState) == 0x3c, "Data type is of wrong size");

#endif /* BW1_DECOMP_CREATURE_MIMIC_INCLUDED_H */
