#include "MaxFloat.h"

const float MinimumLifeToFight = 0.1f;

#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"

#include "ColourConstants.h" /* For White */

#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureImpressiveSpells.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "CreaturePhysical.h"
#include "CreaturePlan.h"
#include "FishFarm.h"
#include "Game.h"
#include "GameInfo.h"
#include "Global.h"
#include "InterfaceStatus.h"
#include "Landscape.h"
#include "MapCoords.h"
#include "OneOffSpellSeed.h"
#include "Player.h"
#include "Town.h"
#include "Utils.h"

const float SlightDesireLevel = 0.1f;

#define HALF_LEARNT                     0.5f
#define TELEPORT_MIN_DISTANCE_FROM_HOME 150.0f
#define HAND_NEARBY_DISTANCE            10.0f
#define FRIEND_NEARBY_DISTANCE          10.0f
#define NOT_TOO_FAR_FROM_HOME_DISTANCE  1000.0f
#define LEASH_FREE_HOME_DISTANCE        140.0f
#define IMPRESSIVE_DANCE_REPEAT_TURNS   200
#define CREATURE_DANCE_REPEAT_TURNS     300
#define STORY_DANCE_REPEAT_TURNS        450
#define HAND_DISTANCE_SCREEN_FRACTION   0.125f
#define REST_REPEAT_SECONDS             2.0f
#define WAVE_REPEAT_SECONDS             90.0f
#define SCRATCH_REPEAT_SECONDS          2.0f
#define CROSS_WITH_PLAYER_ATTITUDE      (-0.1f)
#define IMPRESSIVE_ANIM_REPEAT_TURNS    200
#define FISH_FARM_NEARBY_DISTANCE       600.0f

bool32_t Creature::CanCreatureCastSpell(CreaturePlan& plan, CREATURE_ACTION action)
{
	MAGIC_TYPE magic = CreatureActionInfo::GetInfo()[action].MagicType;
	if (magic <= MAGIC_TYPE_NONE || magic >= MAGIC_TYPE_LAST)
	{
		return false;
	}
	if (min(1.0f, mind->learning.NumTimesMagicActionSeen[magic] /
	                  NumTimesMagicActionMustBeSeenBeforeItIsLearnt(magic)) < HALF_LEARNT)
	{
		return false;
	}
	if (GGlobal::Global.CreatureSpellsNeedPlayerMagic)
	{
		GPlayer* player = GetPlayer();
		if (player != NULL && !player->IsMagicTypeEnabled(magic))
		{
			return false;
		}
	}
	return HasEnoughEnergyToCastSpell(magic);
}

bool32_t Creature::CanCreatureCastImpressiveSpell(CreaturePlan& plan, CREATURE_ACTION action)
{
	for (unsigned long i = 0; i < NUM_CREATURE_IMPRESSIVE_SPELLS; i++)
	{
		MAGIC_TYPE      magic = CreatureImpressiveSpells::Spells[i];
		CreatureMental* mental = mind;
		if (mental->ActionsKnownAbout.KnowsAction(CREATURE_ACTION_LEARNING_TYPE_MAGIC, magic) &&
		    HasEnoughEnergyToCastSpell(magic) &&
		    min(1.0f, mind->learning.NumTimesMagicActionSeen[magic] /
		                  NumTimesMagicActionMustBeSeenBeforeItIsLearnt(magic)) > HALF_LEARNT)
		{
			return true;
		}
	}
	return false;
}

bool32_t Creature::CanCreatureCastPowerUpSpell(CreaturePlan& plan, CREATURE_ACTION action)
{
	return DevelopmentPhase >= DEVELOPMENT_PHASE_GUIDE_TEACHES_SPELLS && CanCreatureCastSpell(plan, action);
}

bool32_t Creature::CanCreatureCastTeleport(CreaturePlan& plan, CREATURE_ACTION action)
{
	float distance;
	{
		JustMapXZ home(HomePos);
		distance = GUtils::GetDistanceInMetres(Pos, home);
	}
	return CanCreatureCastSpell(plan, action) && distance > TELEPORT_MIN_DISTANCE_FROM_HOME;
}

bool32_t Creature::IsMatureEnoughToLeaveHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return DevelopmentPhase >= DEVELOPMENT_PHASE_LEASH_PULL_AND_PICKUP;
}

bool32_t Creature::IsTimeRipeForEatingFromFields(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GGameInfo::Info.GetSeason() == SEASON_AUTUMN;
}

bool32_t Creature::IsCreatureFarAwayFromCamera(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetInterfaceStatusLookingAtCreature() == NULL;
}

bool32_t Creature::DoesCreatureHaveACitadel(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetCitadel() != NULL;
}

bool32_t Creature::HasCreatureBeenAskedToPlayGame(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->agenda.SubActionAgenda.AskedToPlayGame;
}

bool32_t Creature::IsActivityObjectATown(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (plan.ActivityObject != NULL && plan.ActivityObject->GetType() == CREATURE_BELIEF_TYPE_TOWN)
	{
		return true;
	}
	return false;
}

bool32_t Creature::IsActivityObjectATownUnderAttack(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (plan.ActivityObject != NULL && plan.ActivityObject->GetType() == CREATURE_BELIEF_TYPE_TOWN &&
	    dynamic_cast<Town*>(plan.ActivityObject->GetPointer())->LastAttackingPlayer != NULL)
	{
		return true;
	}
	return false;
}

bool32_t Creature::IsCreatureHealthyEnoughToFight(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetLife() > MinimumLifeToFight;
}

bool32_t Creature::IsPlayerNearbyAndFrightening(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (GetPlayer() != NULL)
	{
		LH3DCreature* body = physical->Creature3d;
		return GUtils::GetDistance(body->GetPos(), GetNearestHandInterfaceStatus()->ReportedHandPos) <
		           HAND_NEARBY_DISTANCE &&
		       mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe < 0.0f;
	}
	return false;
}

bool32_t Creature::IsHandMoving(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetPlayer() != NULL && GetNearestHandInterfaceStatus()->HandSpeed > 0.0f;
}

bool32_t Creature::NotTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetPlayer() != NULL && GetPlayer()->GetCitadel() != NULL &&
	       GUtils::GetDistanceInMetres(Pos, HomePos) < NOT_TOO_FAR_FROM_HOME_DISTANCE;
}

bool32_t Creature::LastDanceWasntToDanceToImpress(CreaturePlan& plan, CREATURE_ACTION action)
{
	return LastImpressiveDanceType != DANCE_INFO_CREATURE_DANCE_TO_IMPRESS_VILLAGERS &&
	       GGame::g_game->data.GetGameTurn() - LastImpressiveDanceTurn > IMPRESSIVE_DANCE_REPEAT_TURNS;
}

bool32_t Creature::LastDanceWasntDanceCreature(CreaturePlan& plan, CREATURE_ACTION action)
{
	return LastImpressiveDanceType != DANCE_INFO_CREATURE &&
	       GGame::g_game->data.GetGameTurn() - LastImpressiveDanceTurn > CREATURE_DANCE_REPEAT_TURNS;
}

bool32_t Creature::LastDanceWasntDanceStory(CreaturePlan& plan, CREATURE_ACTION action)
{
	return LastImpressiveDanceType != DANCE_INFO_CREATURE_TELLING_STORY &&
	       GGame::g_game->data.GetGameTurn() - LastImpressiveDanceTurn > STORY_DANCE_REPEAT_TURNS;
}

bool32_t Creature::LeashedOrTooFarFromHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetInterfaceStatusLeashOn() != NULL || GetPlayer() == NULL || GetPlayer()->GetCitadel() == NULL ||
	       GUtils::GetDistanceInMetres(Pos, HomePos) > LEASH_FREE_HOME_DISTANCE;
}

bool32_t Creature::FriendIsDoingSomethingWorthFollowing(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (plan.ActivityObject != NULL)
	{
		Creature* followed = dynamic_cast<Creature*>(plan.ActivityObject->GetPointer());
		return GUtils::GetDistanceInMetres(Pos, followed->Pos) > FRIEND_NEARBY_DISTANCE &&
		       CreatureActionInfo::GetInfo()[followed->mind->agenda.CurrentPlan.creature_action].WorthFollowing;
	}
	return false;
}

bool32_t Creature::IsCreatureAwayFromCentreOfScreen(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (GetPlayer() != NULL)
	{
		return GetInterfaceStatusLookingAtCreature() != NULL;
	}
	return false;
}

bool32_t Creature::IsCreatureAwayFromHand(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (GetPlayer() != NULL)
	{
		LHPoint   handPos = GetNearestHandInterfaceStatus()->GetHandPos();
		MapCoords handCoords;
		GLandscape::ConvertLandscapePointToMapCoord(handPos, handCoords);
		float maxDistance = GetScreenWidthInWorldMetres() * HAND_DISTANCE_SCREEN_FRACTION;
		return GUtils::GetDistanceInMetres(Pos, handCoords) > maxDistance;
	}
	return false;
}

bool32_t Creature::IsCreatureNotNearHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return IsCreatureFarFromHome();
}

bool32_t Creature::IsCreatureNearHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return !IsCreatureFarFromHome();
}

bool32_t Creature::HasCreatureBuiltHisHome(CreaturePlan& plan, CREATURE_ACTION action)
{
	return HasFinishedBuildingHome();
}

bool32_t Creature::CreatureHasntRestedRecently(CreaturePlan& plan, CREATURE_ACTION action)
{
	return !HasPerformedActionInLastNSeconds(CREATURE_SIT, REST_REPEAT_SECONDS);
}

bool32_t Creature::CreatureHasntWavedRecently(CreaturePlan& plan, CREATURE_ACTION action)
{
	return !HasPerformedActionInLastNSeconds(CREATURE_WAVE_AT_PLAYER, WAVE_REPEAT_SECONDS);
}

bool32_t Creature::CreatureHasntScratchedRecently(CreaturePlan& plan, CREATURE_ACTION action)
{
	return !HasPerformedActionInLastNSeconds(CREATURE_SCRATCH, SCRATCH_REPEAT_SECONDS);
}

bool32_t Creature::IsSunVisible(CreaturePlan& plan, CREATURE_ACTION action)
{
	return !GGameInfo::Info.IsVisualNight();
}

bool32_t Creature::IsMoonVisible(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GGameInfo::Info.IsVisualNight();
}

bool32_t Creature::IsSlightlyHungry(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->desires.GetDesire(CREATURE_DESIRE_HUNGER) > SlightDesireLevel;
}

bool32_t Creature::IsSlightlyThirsty(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->desires.GetDesire(CREATURE_DESIRE_FOR_WATER) > SlightDesireLevel;
}

bool32_t Creature::IsSlightlyInNeedOfAPoo(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->desires.GetDesire(CREATURE_DESIRE_TO_POO) > SlightDesireLevel;
}

bool32_t Creature::IsSlightlyContent(CreaturePlan& plan, CREATURE_ACTION action)
{
	return GetSadnessSource() < SlightDesireLevel;
}

bool32_t Creature::IsSlightlySleepy(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->desires.GetDesire(CREATURE_DESIRE_TIREDNESS) > SlightDesireLevel;
}

bool32_t Creature::IsNearWater(CreaturePlan& plan, CREATURE_ACTION action)
{
	MapCoords water;
	return mind->ExplorationMap.FindNearest(REGION_TYPE_WATER, Pos, &water,
	                                        PREFERENCE_THAT_REGION_HAS_NOT_BEEN_VISITED_1, 1);
}

bool32_t Creature::IsCrossWithPlayer(CreaturePlan& plan, CREATURE_ACTION action)
{
	return mind->AttitudeToPlayer.HowNicePlayerHasBeenToMe < CROSS_WITH_PLAYER_ATTITUDE;
}

bool32_t Creature::IsHoldingOneOffSpellAggressive(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (physical->GetObjectCarried() != NULL)
	{
		OneOffSpellSeed* seed = physical->GetObjectCarried()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			return seed->IsOneOffSpellAggressive(NULL);
		}
	}
	return false;
}

bool32_t Creature::IsHoldingOneOffSpellCompassionate(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (physical->GetObjectCarried() != NULL)
	{
		OneOffSpellSeed* seed = physical->GetObjectCarried()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			return seed->IsOneOffSpellCompassionate(NULL);
		}
	}
	return false;
}

bool32_t Creature::IsHoldingOneOffSpellPlayful(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (physical->GetObjectCarried() != NULL)
	{
		OneOffSpellSeed* seed = physical->GetObjectCarried()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			return seed->IsOneOffSpellPlayful(NULL);
		}
	}
	return false;
}

bool32_t Creature::IsHoldingOneOffSpellToRestoreHealth(CreaturePlan& plan, CREATURE_ACTION action)
{
	if (physical->GetObjectCarried() != NULL)
	{
		OneOffSpellSeed* seed = physical->GetObjectCarried()->CastOneOffSpellSeed();
		if (seed != NULL)
		{
			return seed->IsOneOffSpellToRestoreHealth(NULL);
		}
	}
	return false;
}

bool32_t Creature::ShouldCreatureCastWaterOnHimself(CreaturePlan& plan, CREATURE_ACTION action)
{
	return IsOnFire() && CanCreatureCastSpell(plan, action);
}

bool32_t Creature::ShouldNearestTownBeAttacked(CreaturePlan& plan, CREATURE_ACTION action)
{
	Town* town = Pos.GetNearestTown(MaxFloat);
	if (town != NULL)
	{
		CreatureBelief* belief = mind->GetBeliefAboutObject(town);
		if (belief != NULL && mind->GetActivityObjectUsefulness(belief, CREATURE_DESIRE_ANGER) >
		                          mind->GetActivityObjectUsefulness(belief, CREATURE_DESIRE_COMPASSION))
		{
			return true;
		}
	}
	return false;
}

bool32_t Creature::ShouldNearestTownBeHelped(CreaturePlan& plan, CREATURE_ACTION action)
{
	Town* town = Pos.GetNearestTown(MaxFloat);
	if (town != NULL)
	{
		CreatureBelief* belief = mind->GetBeliefAboutObject(town);
		if (belief != NULL && mind->GetActivityObjectUsefulness(belief, CREATURE_DESIRE_ANGER) <=
		                          mind->GetActivityObjectUsefulness(belief, CREATURE_DESIRE_COMPASSION))
		{
			return true;
		}
	}
	return false;
}

bool32_t Creature::HasntDoneImpressiveAnimRecently(CreaturePlan& plan, CREATURE_ACTION action)
{
	uint32_t lastDone = mind->learning.GameTurnActionLastPerformed[CREATURE_SHOW_IMPRESSIVE_ANIMATION];
	int      turnsSinceDone = GGame::g_game->data.GetGameTurn() - lastDone;
	return lastDone == 0 || turnsSinceDone > IMPRESSIVE_ANIM_REPEAT_TURNS;
}

bool32_t Creature::IsThereFishFarmNearby(CreaturePlan& plan, CREATURE_ACTION action)
{
	return FishFarm::FindClosestFishFarm(Pos, FISH_FARM_NEARBY_DISTANCE) != NULL;
}
