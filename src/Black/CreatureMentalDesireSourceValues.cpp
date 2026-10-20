#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureAttitudeToCreature.h"
#include "CreatureDevelopment.h"
#include "CreatureMental.h"
#include "CreatureMentalDesireSource.h"
#include "CreaturePhysical.h"
#include "GameInfo.h"
#include "Player.h"
#include "Utils.h"

#define LONELINESS_SECONDS                      60.0f
#define LACK_OF_INTERACTION_SECONDS             120.0f
#define UNSATISFIED_DESIRES_FOR_MAX_SOURCE      3.0f
#define HANG_AROUND_AT_HOME_DISTANCE            100.0f
#define MUSHROOMS_FOR_MAX_SOURCE                100
#define MISSED_FRIEND_MIN_NICENESS              0.4f
#define MISSED_FRIEND_MAX_ATTENTION             0.4f
#define YOUNG_CREATURE_AGE                      10
#define ADOLESCENT_CREATURE_AGE                 40
#define YOUNG_CREATURE_INTEREST_MULTIPLIER      4.0f
#define ADOLESCENT_CREATURE_INTEREST_MULTIPLIER 2.0f
#define ADULT_CREATURE_INTEREST_MULTIPLIER      1.0f

float Creature::GetHungerSourceFromEnergy()
{
	return MAX_SOURCE_VALUE - physical->GetEnergy();
}

void Creature::SetEnergyFromHungerSource(float value)
{
	CreaturePhysical* body = physical;
	body->Energy = MAX_SOURCE_VALUE - value;
	CLAMP(body->Energy, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
}

float Creature::GetPooSourceFromAmountOfPoo()
{
	return physical->GetAmountOfPoo();
}

void Creature::SetAmountOfPooFromPooSource(float value)
{
	physical->AmountOfPoo = value;
}

float Creature::GetTirednessSourceFromExhaustion()
{
	return physical->GetExhaustion();
}

float Creature::GetTirednessSourceFromNightTime()
{
#ifdef VERSION_BW1WCI
	if (!ConfinedToObject && GGameInfo::Info.IsVisualNight())
#else
	if (GGameInfo::Info.IsVisualNight())
#endif // VERSION_BW1WCI
	{
		return MAX_SOURCE_VALUE;
	}
	return MIN_SOURCE_VALUE;
}

void Creature::SetExhaustionFromTirednessSource(float value)
{
	physical->Exhaustion = value;
}

float Creature::GetThirstSourceFromDehydration()
{
	return physical->GetDehydration();
}

void Creature::SetDehydrationFromThirstSource(float value)
{
	physical->Dehydration = value;
}

float Creature::GetRestoreHealthSourceFromLife()
{
	return MAX_SOURCE_VALUE - GetLife();
}

float Creature::GetSadnessSource()
{
	return mind->desires.GetSource(SADNESS)->Value;
}

void Creature::SetLifeFromRestoreHealthSource(float value)
{
	SetLife(MAX_SOURCE_VALUE - value);
}

float Creature::GetAttractPlayerSourceFromLoneliness()
{
	float source =
		(mind->AttitudeToPlayer.TicksSinceAttention / GGameInfo::Info.NumGameTicksPerSecond()) / LONELINESS_SECONDS;
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

void Creature::SetLonelinessFromAttractPlayerSource(float value)
{
	mind->AttitudeToPlayer.TicksSinceAttention =
		GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(value * LONELINESS_SECONDS);
}

float Creature::GetAttractPlayerSourceFromLackOfInteraction()
{
	float source = (mind->AttitudeToPlayer.TicksSinceInteraction / GGameInfo::Info.NumGameTicksPerSecond()) /
	               LACK_OF_INTERACTION_SECONDS;
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

void Creature::SetAmountOfInteractionFromAttractPlayerSource(float value)
{
	mind->AttitudeToPlayer.TicksSinceInteraction =
		GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(value * LACK_OF_INTERACTION_SECONDS);
}

float Creature::GetManifestStateSourceFromUnsatisfiedDesires()
{
	float source = mind->desires.TotalLevel * (1.0f / UNSATISFIED_DESIRES_FOR_MAX_SOURCE);
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetWarmerSourceFromPhysicalWarmth()
{
	float source = -physical->GetWarmth();
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetColderSourceFromPhysicalWarmth()
{
	float source = physical->GetWarmth();
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetScratchSourceFromPhysicalItchiness()
{
	return physical->GetItchiness();
}

float Creature::GetRunAwayFromPlayerSource()
{
	float source = -mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe;
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetGoHomeSource()
{
	float source = GUtils::GetDistanceInMetres(Pos, HomePos) /
	               CreatureDevelopmentPhaseEntry::GetInfo()[DevelopmentPhase].GoHomeDistance;
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetHangAroundAtHomeSource()
{
	float distance = GUtils::GetDistanceInMetres(Pos, HomePos) / HANG_AROUND_AT_HOME_DISTANCE;
	CLAMP(distance, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return MAX_SOURCE_VALUE - distance;
}

float Creature::GetUrgeToGetHigh()
{
	if (NumMushroomsEaten > 0)
	{
		return NumMushroomsEaten / MUSHROOMS_FOR_MAX_SOURCE;
	}
	return MIN_SOURCE_VALUE;
}

void Creature::SetUrgeToGetHigh(float value)
{
	NumMushroomsEaten = MUSHROOMS_FOR_MAX_SOURCE;
}

float Creature::GetSourceForCraziness()
{
	return NumMushroomsEaten / MUSHROOMS_FOR_MAX_SOURCE;
}

float Creature::GetSourceForMissFriend()
{
	float source = MIN_SOURCE_VALUE;
	for (LHLinkedNode<CreatureAttitudeToCreature*>* node = mind->AttitudesToCreatures.GetStart(); node != NULL;
	     node = node->next.Get())
	{
		CreatureAttitudeToCreature* attitude = node->payload;
#ifdef VERSION_BW1WCI
		if (attitude->HowNice > MISSED_FRIEND_MIN_NICENESS &&
		    attitude->HowMuchAttentionPaidToMe < MISSED_FRIEND_MAX_ATTENTION && !CanSeeAnObject(attitude->creature))
#else
		if (attitude->HowNice > MISSED_FRIEND_MIN_NICENESS &&
		    attitude->HowMuchAttentionPaidToMe < MISSED_FRIEND_MAX_ATTENTION)
#endif // VERSION_BW1WCI
		{
			source += MAX_SOURCE_VALUE - attitude->HowMuchAttentionPaidToMe;
		}
	}
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

float Creature::GetHowInterestingPlayerIsBeing()
{
	if (GetPlayer() != NULL && GetPlayer()->type == PLAYER_TYPE_COMPUTER)
	{
		return MIN_SOURCE_VALUE;
	}

	float multiplier;
	if (physical->Age < YOUNG_CREATURE_AGE)
	{
		multiplier = YOUNG_CREATURE_INTEREST_MULTIPLIER;
	}
	else if (physical->Age < ADOLESCENT_CREATURE_AGE)
	{
		multiplier = ADOLESCENT_CREATURE_INTEREST_MULTIPLIER;
	}
	else
	{
		multiplier = ADULT_CREATURE_INTEREST_MULTIPLIER;
	}

	float source = multiplier * mind->AttitudeToPlayer.Interest;
	CLAMP(source, MIN_SOURCE_VALUE, MAX_SOURCE_VALUE);
	return source;
}

void Creature::SetHowInterestingPlayerIsBeing(float value)
{
	mind->AttitudeToPlayer.Interest = 0.0f;
}

float Creature::GetInnateNicenessSource()
{
	return mind->InnatePersonality.Niceness;
}

float Creature::GetDesireToImpressFromVillagersWhoNeedIt()
{
	return mind->desires.DesireToImpressFromVillagersWhoNeedIt;
}

float Creature::GetInnateAggressionSource()
{
	return mind->InnatePersonality.Aggression;
}

float Creature::GetInnateLethargySource()
{
	return mind->InnatePersonality.Lethargy;
}

float Creature::GetInnateFriendlinessSource()
{
	return mind->InnatePersonality.Friendliness;
}

float Creature::GetInnateCommunicativenessSource()
{
	return mind->InnatePersonality.Communicativeness;
}

void Creature::SetInnateNicenessSource(float value)
{
	mind->InnatePersonality.Niceness = value;
}

void Creature::SetInnateAggressionSource(float value)
{
	mind->InnatePersonality.Aggression = value;
}

void Creature::SetInnateLethargySource(float value)
{
	mind->InnatePersonality.Lethargy = value;
}

void Creature::SetInnateFriendlinessSource(float value)
{
	mind->InnatePersonality.Friendliness = value;
}

void Creature::SetInnateCommunicativenessSource(float value)
{
	mind->InnatePersonality.Communicativeness = value;
}
