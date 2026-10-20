#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureMental.h"
#include "CreaturePhysical.h"
#include "GameInfo.h"
#include "Utils.h"

#define IGNORED_BY_PLAYER_SECONDS 120.0f
#define COLD_WARMTH               -0.3f
#define WARM_WARMTH               0.3f
#define NEAR_HOME_DISTANCE        60.0f

bool32_t Creature::IsReadyToExplore()
{
	return DevelopmentPhase <= DEVELOPMENT_PHASE_MEET_GUIDE || !physical->IsKnackered(GetInfo());
}

bool32_t Creature::IsPlayerIgnoringMe()
{
	return mind->AttitudeToPlayer.TicksSinceAttention >
	       GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(IGNORED_BY_PLAYER_SECONDS);
}

bool32_t Creature::IsCreatureCold()
{
	return physical->GetWarmth() <= COLD_WARMTH;
}

bool32_t Creature::IsCreatureWarm()
{
	return physical->GetWarmth() >= WARM_WARMTH;
}

bool32_t Creature::HasPlayerBeenNasty()
{
	return mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe < 0.0f;
}

bool32_t Creature::IsCreatureReadyForRest()
{
	return true;
}

bool32_t Creature::HasNoticedActionWorthMimicking()
{
	return mind->AttitudeToPlayer.ObservedAction.Action != DETECTED_PLAYER_ACTION_LAST;
}

bool32_t Creature::CanCreatureBeFrightened()
{
	return false;
}

bool32_t Creature::IsCreatureNearHome()
{
	return GUtils::GetDistanceInMetres(Pos, HomePos) < NEAR_HOME_DISTANCE;
}
