#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "ReactionFunction.h"
#include "Villager.h"

#include "ColourConstants.h" /* For White */

#include <limits.h>                                /* For LONG_MAX, UINT_MAX */
#include <Lionhead/LH3DLib/development/LH3DMath.h> /* For EIGHTH_PI_F, LHSinTable, QUARTER_PI_F */

#include "Abode.h"
#include "Animal.h"
#include "Arena.h"
#include "BuildingSite.h"
#include "Balance.h"
#include "Ball.h"
#include "Dance.h"
#include "DanceGroup.h"
#include "DanceInfo.h"
#include "Game.h"
#include "GameInfo.h"
#include "Graveyard.h"
#include "GroupBehaviour.h"
#include "Landscape.h"
#include "MagicTeleport.h"
#include "MagicTree.h"
#include "Map.h"
#include "MapCoords.h"
#include "MapCoordsMeters.h"
#include "MobileWallHugInfo.h"
#include "PhysicsObject.h"
#include "PileFood.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "SpellShield.h"
#include "Town.h"
#include "TownInfo.h"
#include "TownCentre.h"
#include "TownDesireInfo.h"
#include "Tree.h"
#include "Utils.h"
#include "VillagerInfo.h"
#include "VillagerStateTableInfo.h"
#include "CreatureAttitudeConstants.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\VillagerReaction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\VillagerReaction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\VillagerReaction.cpp"
#endif

#define VILLAGER_PREDATOR_SPEED_PRIORITY_SCALE   0.5f
#define VILLAGER_LOOK_TO_SEE_IF_IT_IS_SAFE_TURNS 20
#define VILLAGER_HIDE_MAX_DISTANCE               100.0f
#define VILLAGER_HIDE_MIN_TURNS                  150
#define VILLAGER_HIDE_RAND_TURNS                 150
#define VILLAGER_LOOK_IF_SAFE_MIN_TURNS          25
#define VILLAGER_LOOK_IF_SAFE_RAND_TURNS         25
#define VILLAGER_PREDATOR_CHASING_SPEED          5.0f
#define VILLAGER_HIDE_FROM_PREDATOR_RAND_RANGE   6
#define VILLAGER_BURNING_OBJECT_STILL_SPEED      3.0f
#define VILLAGER_SHIELD_INTEREST_RAND_RANGE      4
#define VILLAGER_SHIELD_INTEREST_RAND_TURNS      50
#define VILLAGER_NUM_GAME_TURNS_FOREVER          LONG_MAX
#define VILLAGER_INSPECT_OBJECT_START_DISTANCE   20.0f
#define VILLAGER_INSPECT_OBJECT_DISTANCE_STEP    8.0f
#define VILLAGER_INSPECT_OBJECT_MIN_DISTANCE     1.0f
#define VILLAGER_INSPECT_OBJECT_END_DISTANCE     1.0f
#define VILLAGER_INSPECT_OBJECT_MIN_SECONDS      1.5f
#define VILLAGER_INSPECT_OBJECT_RAND_SECONDS     3.0f
#define VILLAGER_WOOD_IN_PHYSICS_WAIT_SECONDS    100.0f
#define VILLAGER_WOOD_ARRIVE_DISTANCE            0.5f
#define VILLAGER_WOOD_WAIT_TURNS                 10
#define VILLAGER_MAGIC_TREE_LOOK_RAND_SECONDS    3.0f
#define VILLAGER_MAGIC_TREE_LOOK_MIN_SECONDS     2.0f
#define VILLAGER_SPEED_UP_FOOD_INTEREST_SCALE    2.0f
#define VILLAGER_FOOD_INTEREST_THRESHOLD         0.25f
#define VILLAGER_DROP_OFF_FOOD_THRESHOLD         0.1f
#define VILLAGER_FIND_NEARBY_VILLAGER_CELLS      50
#define VILLAGER_PICKUP_BALL_TOUCH_DISTANCE      0.001f
#define VILLAGER_BELIEF_POPULATION_EPSILON       0.001f
#define VILLAGER_DEATH_MAX_REACTING_LIVINGS      10
#define VILLAGER_DROPPED_BY_HAND_DISTANCE        10.0f
#define VILLAGER_DEAD_PERSON_POINT_RAND_SECONDS  20.0f
#define VILLAGER_DEAD_PERSON_POINT_MIN_SECONDS   2.0f
#define VILLAGER_DEAD_PERSON_MOURN_RAND_SECONDS  3.0f
#define VILLAGER_DEAD_PERSON_MOURN_MIN_SECONDS   4.0f
#define VILLAGER_CONFUSED_TURNS                  100
#define VILLAGER_CONFUSED_WANDER_RANGE           20.0f
#define VILLAGER_DEAD_PERSON_APPROACH_SCALE      1.2f
#define VILLAGER_DEAD_PERSON_MIN_MOVE_DISTANCE   1.0f
#define VILLAGER_MEET_MATE_DISTANCE              0.562f
#define VILLAGER_IMPRESSED_LOOK_SECONDS          1.5f
#define VILLAGER_BURNING_OBJECT_SLOW_SPEED       3.0f
#define VILLAGER_LARGE_BUILDING_RADIUS           10.0f
#define VILLAGER_FIGHT_WATCH_RADIUS_SCALE        1.4f
#define VILLAGER_GAME_ANGLE_FULL_TURN            0x800
#define VILLAGER_CROWD_DISTANCE                  20.0f
#define VILLAGER_SHIELD_EDGE_SCALE               0.2f
#define VILLAGER_SHIELD_LOOK_DISTANCE            1.0f
#define VILLAGER_LOOK_AT_OBJECT_MAX_DISTANCE     100.0f

bool32_t Villager::IsAvailableForReaction(REACTION reaction)
{
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	uint16_t        flags = Flags;
	if (!(flags & VILLAGER_FLAG_AT_WORSHIP_SITE) && GVillagerStateTableInfo::Infos[state].canReact &&
	    !(flags & VILLAGER_FLAG_PLAYING_FOOTBALL) && !IsDeathState(state))
	{
		const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
		if (GetLife() > villagerInfo->LifeWhenCrawlsWounded || reaction == REACTION_REACT_TO_FOOD)
		{
			return Living::IsAvailableForReaction(reaction);
		}
	}
	return false;
}

bool32_t Villager::IsAvailableForBeliefButNotReaction(REACTION reaction)
{
	if (!ReactionFunction::Functions[reaction].BeliefButNotReaction && IsReachable())
	{
		return false;
	}
	return true;
}

void Villager::AddReaction(Reaction* reaction, VILLAGER_STATES state)
{
	UpdateHowImpressed(reaction, 1);
	Living::AddReaction(reaction, state);
}

void Villager::StorePreviousState()
{
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	VILLAGER_STATES stateToStore = state;
	if (GVillagerStateTableInfo::Infos[state].isTransientState || GVillagerStateTableInfo::Infos[state].isReactiveState)
	{
		stateToStore = (VILLAGER_STATES)action.states[LIVING_ACTION_INDEX_PREVIOUS];
	}
	action.SetState(LIVING_ACTION_INDEX_PREVIOUS, stateToStore);
}

void Villager::UpdateHowImpressed(Reaction* reaction, int multiplier)
{
	GPlayer* player = reaction->GetPlayer();
	if (player != NULL)
	{
		Town* town = GetTown();
		if (town != NULL)
		{
			GameThingWithPos* initiator = reaction->GetInitiatingObject();
			float             impressiveValue = initiator->GetImpressiveValue(this, reaction);
			float populationScale = (((const GTownInfo*)town->info.Get())->PopulationForUnmodifiedBelief +
			                         VILLAGER_BELIEF_POPULATION_EPSILON) /
			                        ((float)town->stats.GetPopulation() + VILLAGER_BELIEF_POPULATION_EPSILON);
			town->belief.AddToBelief(player, populationScale * impressiveValue, this, multiplier,
			                         reaction->GetInfo()->AlignmentForSFX);
			(reaction->*ReactionFunction::Functions[reaction->GetFunctionIndex()].ModifyAlignmentFunction)(this);
			float boredom = initiator->GetUpdateOfBoredomValue(reaction, this) * populationScale;
			town->belief.AddToBoredomMultiplier(reaction, boredom);
		}
	}
}

void Villager::StopReacting()
{
	if ((uint8_t)Living::GetTopState() == VILLAGER_STATE_DANCE_WHILE_REACTING)
	{
		if (IsDancing())
		{
			RemoveFromDance(true);
		}
	}
	Living::StopReacting();
}

bool32_t Villager::SetupMoveToPos(const MapCoords& coord, VILLAGER_STATES end_state)
{
	return Living::SetupMoveToPos(coord, end_state);
}

void Villager::SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_INITIALISE_BEWILDERED_BY_MAGIC_TREE_REACTION);
	ReactionObject = thing;
}

uint8_t Villager::FleeFromPredatorPriority(Reaction* reaction, Reaction* current_reaction)
{
	Animal* predator = dynamic_cast<Animal*>(reaction->GetInitiatingObject());
	if (predator == NULL)
	{
		return 0;
	}
	float    distance = GUtils::GetDistanceInMetres(&Pos, &predator->Pos);
	bool32_t farAway = distance > reaction->GetInfo()->MinDistanceToRunAwayFromObject;
	if (Flags & VILLAGER_FLAG_AT_HOME)
	{
		return 0;
	}
	if (action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING)
	{
		return 0;
	}
	if (action.states[LIVING_ACTION_INDEX_FINAL] == VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING && farAway)
	{
		return 0;
	}
	if (GetFinalState() != VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE ||
	    action.TurnsSinceStateChange < VILLAGER_LOOK_TO_SEE_IF_IT_IS_SAFE_TURNS)
	{
		if (predator->action.GetState(LIVING_ACTION_INDEX_TOP) == ANIMAL_STATE_SLEEPS ||
		    predator->action.GetState(LIVING_ACTION_INDEX_TOP) == ANIMAL_STATE_HIDE_IN_LAIR)
		{
			return 0;
		}
		if (farAway && GetGameTurnReactionStarted(REACTION_FLEE_FROM_PREDATOR) > 0 &&
		    !IsObjectTravellingTowardsMe(predator))
		{
			return 0;
		}
	}
	const GMobileWallHugInfo* predatorInfo = (const GMobileWallHugInfo*)predator->info;
	float                     speedScale = predator->GetSpeedInMetresPerSecond() / predatorInfo->WalkingSpeed;
	speedScale *= VILLAGER_PREDATOR_SPEED_PRIORITY_SCALE;
	speedScale += VILLAGER_PREDATOR_SPEED_PRIORITY_SCALE;
	return speedScale * GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_PREDATOR].priority;
}

uint8_t Villager::ReactToScaffoldPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_SCAFFOLD].priority;
}

void Villager::SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction)
{
	if ((uint8_t)GetFinalState() == VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING)
	{
		HideTurns = 0;
		return;
	}
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_PREDATOR_REACTION);
	ReactionObject = thing;
}

void Villager::SetupReactToFlyingObject(GameThingWithPos* thing, Reaction* reaction)
{
	PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(dynamic_cast<Object*>(thing));
	if (physicsObject != NULL)
	{
		float speed = physicsObject->Physics.Velocity.GetNorme();
		if (GUtils::GetDistanceInMetres(Pos, thing->Pos) < speed + speed)
		{
			AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
			ReactionObject = thing;
			return;
		}
		AddReaction(reaction, VILLAGER_STATE_POINT_AT_FLYING_OBJECT_REACTION);
		ReactionObject = thing;
	}
}

void Villager::SetupLookAtObject(GameThingWithPos* thing, Reaction* reaction)
{
	Living::SetupLookAtObject(thing, reaction);
}

void Villager::SetupLookAtSpell(GameThingWithPos* thing, Reaction* reaction)
{
	Living::SetupLookAtObject(thing, reaction);
}

void Villager::SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction)
{
	SetupLookAtSpell(thing, reaction);
}

bool32_t Villager::FleeingFromObjectReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		ReactionObject->GetPlayer();
		return Living::FleeingFromObjectReaction();
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::FleeingFromPredatorReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		Animal* predator = dynamic_cast<Animal*>(ReactionObject.Get());
		if (predator == NULL)
		{
			return false;
		}
		float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
		if (distance > GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
		{
			StopReactingAndSetState();
			return true;
		}
		if ((uint8_t)GetFinalState() == VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
		{
			Abode* abode = GetAbodeToHideInAtPos(MapCoords(&HidePos));
			if (abode != NULL)
			{
				SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
				return true;
			}
		}
		if ((predator->GetSpeedInMetresPerSecond() > VILLAGER_PREDATOR_CHASING_SPEED &&
		     IsObjectTravellingTowardsMe(predator)) ||
		    GRand::GameRand(VILLAGER_HIDE_FROM_PREDATOR_RAND_RANGE, FILEPATH, 365) == 0)
		{
			if (SetupGoAndHideInNearbyBuilding(predator))
			{
				return true;
			}
		}
		return FleeFromObjectIfComingTowardsMe(ReactionObject.Get(), VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION,
		                                       VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::SetupGoAndHideInNearbyBuilding(GameThingWithPos* thing)
{
	if (GetTown() == NULL)
	{
		return false;
	}
	float              bestDistance = VILLAGER_HIDE_MAX_DISTANCE;
	Abode*             bestAbode = NULL;
	LHListHead<Abode>& abodeList = GetTown()->AbodeList;
	Abode*             abode = abodeList.head;
	if (abode != NULL)
	{
		do
		{
			float distance = GUtils::GetDistanceInMetres(Pos, abode->GetArrivePos());
			if (abode->CanBeHiddenIn() && distance < bestDistance)
			{
				bestDistance = distance;
				bestAbode = abode;
			}
			abode = abode->next;
		} while (abode != NULL);
		if (bestAbode != NULL)
		{
			HidePos.Init(bestAbode->Pos);
			HideTurns = 0;
			SetupMoveToOnFootpath(*bestAbode, bestAbode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
			return true;
		}
	}
	return false;
}

bool32_t Villager::GoAndHideInNearbyBuilding()
{
	MapCoords coords(&HidePos);
	Abode*    abode = GetAbodeToHideInAtPos(coords);
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable() != true)
	{
		ReactionObject = NULL;
	}
	if (abode != NULL && abode->CanBeHiddenIn())
	{
		if (AreWeThere(abode->GetArrivePos(), 0.0f))
		{
			if (ReactionObject.Get() != NULL)
			{
				float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
				if (distance <= GetReaction()->GetInfo()->MinDistanceToRunAwayFromObject)
				{
					return true;
				}
			}
			uint32_t hideTurns = ++HideTurns;
			if (hideTurns > GRand::GameRand(VILLAGER_HIDE_RAND_TURNS, FILEPATH, 422) + VILLAGER_HIDE_MIN_TURNS)
			{
				HideTurns = 0;
				MapCoords outsidePos = FindPosOutsideAbode(abode);
				SetupMoveToWithHug(outsidePos, VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE);
			}
			return true;
		}
		SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

Abode* Villager::GetAbodeToHideInAtPos(const MapCoords& pos)
{
	Abode* abode = (Abode*)pos.ToMap()->FindFixedOnMap(NULL);
	while (abode != NULL)
	{
		if (abode->IsAbode() && abode->Pos.x == pos.x && abode->Pos.z == pos.z && abode->IsAvailable() &&
		    abode->CanBeHiddenIn())
		{
			return abode;
		}
		abode = (Abode*)pos.ToMap()->FindFixedOnMap(abode);
	}
	return NULL;
}

bool32_t Villager::LookToSeeIfItIsSafe()
{
	if (ReactionObject.Get() != NULL)
	{
		float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
		if (distance <= GetReaction()->GetInfo()->MaxReactionDistance && ReactionObject->IsAnimal())
		{
			uint8_t predatorState = ((Living*)ReactionObject.Get())->action.states[LIVING_ACTION_INDEX_TOP];
			if (predatorState != ANIMAL_STATE_SLEEPS && predatorState != ANIMAL_STATE_HIDE_IN_LAIR)
			{
				Abode* abode = GetAbodeToHideInAtPos(MapCoords(&HidePos));
				if (abode != NULL)
				{
					HideTurns = 0;
					SetupMoveToOnFootpath(*abode, abode->GetArrivePos(), VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING);
					return true;
				}
				return FleeFromObjectIfComingTowardsMe(ReactionObject.Get(), VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION,
				                                       VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
			}
		}
	}
	uint32_t safeTurns = ++HideTurns;
	if (safeTurns > GRand::GameRand(VILLAGER_LOOK_IF_SAFE_RAND_TURNS, FILEPATH, 469) + VILLAGER_LOOK_IF_SAFE_MIN_TURNS)
	{
		StopReactingAndSetState();
	}
	return true;
}

uint32_t Villager::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	uint8_t state = GetFinalState();
	if (state != VILLAGER_STATE_GO_AND_HIDE_IN_NEARBY_BUILDING && state != VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
	{
		return Living::NumGameTurnsToReactToPredatorFunction(thing, reaction, distance);
	}
	return VILLAGER_NUM_GAME_TURNS_FOREVER;
}

uint32_t Villager::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                     float distance)
{
	if ((uint8_t)GetFinalState() == VILLAGER_STATE_LOOK_TO_SEE_IF_IT_IS_SAFE)
	{
		return 0;
	}
	return Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(thing, reaction, distance);
}

uint32_t Villager::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* thing, uint32_t reaction,
                                                              float distance)
{
	return StandardNumGameTurnsToReactFunction(thing, reaction, distance);
}

uint32_t Villager::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                          float distance)
{
	if (GUtils::GetDistanceInMetres(&Pos, &thing->Pos) >=
	        GInfoArrays::ReactionInfos[reaction].MinDistanceToRunAwayFromObject &&
	    thing->GetSpeedInMetresPerSecond() <= VILLAGER_BURNING_OBJECT_STILL_SPEED)
	{
		return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
	}
	return 0;
}

uint32_t Villager::NumGameTurnsToReactToShieldFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	if (GetTown() != NULL && GRand::GameRand(VILLAGER_SHIELD_INTEREST_RAND_RANGE, FILEPATH, 526) != 0)
	{
		uint32_t             gameTurn = GGame::g_game->data.GetGameTurn();
		uint32_t             lastAttackedTurn = GetTown()->LastAttackedTurn;
		const GVillagerInfo* villagerInfo = (const GVillagerInfo*)info;
		if (GRand::GameRand(VILLAGER_SHIELD_INTEREST_RAND_TURNS, FILEPATH, 528) + (gameTurn - lastAttackedTurn) <
		    villagerInfo->NumGameTurnsAfterAggressionInterestedInShield)
		{
			return VILLAGER_NUM_GAME_TURNS_FOREVER;
		}
	}
	return StandardNumGameTurnsToReactFunction(thing, reaction, distance);
}

uint32_t Villager::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                   float distance)
{
	if (GetTown() != NULL && GGame::g_game->data.GetGameTurn() - GetTown()->LastAttackedTurn >
	                             ((const GVillagerInfo*)info)->NumGameTurnsAfterAggressionInterestedInShield)
	{
		return VILLAGER_NUM_GAME_TURNS_FOREVER;
	}
	SpellShield* shield = thing->IsSpellShield();
	if (shield != NULL && !shield->IsUnder(goal, 0.0f))
	{
		return 0;
	}
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
}

bool32_t Villager::LookingAtObjectReaction()
{
	if (ReactionObject.Get() == NULL || GetReaction() == NULL)
	{
		StopReactingAndSetState();
		return true;
	}
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	return Living::LookingAtObjectReaction();
}

bool32_t Villager::FleeingAndLookingAtObjectReaction()
{
	return LookingAtObjectReaction();
}

bool32_t Villager::FollowingObjectReaction()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	return Living::FollowingObjectReaction();
}

bool32_t Villager::InspectObjectReaction()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	InspectDistance = VILLAGER_INSPECT_OBJECT_START_DISTANCE;
	uint32_t minTurns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_OBJECT_MIN_SECONDS);
	uint32_t extraTurns = GRand::GameRand(
		GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_OBJECT_RAND_SECONDS), FILEPATH, 601);
	InspectTurnsUntilApproach = minTurns + extraTurns;
	SetTopState(VILLAGER_STATE_PERFORM_INSPECTION_REACTION);
	return true;
}

bool32_t Villager::PerformInspectionReaction()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	if (InspectDistance < VILLAGER_INSPECT_OBJECT_END_DISTANCE)
	{
		StopReactingAndSetState();
		return true;
	}
	if (--InspectTurnsUntilApproach == 0)
	{
		SetTopState(VILLAGER_STATE_APPROACH_OBJECT_REACTION);
		return true;
	}
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	return true;
}

bool32_t Villager::ApproachObjectReaction()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	if (distance - InspectDistance > VILLAGER_INSPECT_OBJECT_MIN_DISTANCE)
	{
		long      angle = GUtils::GetAngleFromXZ(Pos, ReactionObject->Pos);
		long      dx = GUtils::GetXByAngleHugeDistance(angle, GUtils::MetersToWholeX(distance - InspectDistance));
		long      dz = GUtils::GetZByAngleHugeDistance(angle, GUtils::MetersToWholeZ(distance - InspectDistance));
		MapCoords destination = Pos;
		destination.x += dx;
		destination.z += dz;
		SetupMoveToWithHug(destination, VILLAGER_STATE_APPROACH_OBJECT_REACTION);
		return true;
	}
	uint32_t minTurns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_OBJECT_MIN_SECONDS);
	uint32_t extraTurns = GRand::GameRand(
		GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_OBJECT_RAND_SECONDS), FILEPATH, 665);
	InspectTurnsUntilApproach = minTurns + extraTurns;
	InspectDistance -= VILLAGER_INSPECT_OBJECT_DISTANCE_STEP;
	SetTopState(VILLAGER_STATE_PERFORM_INSPECTION_REACTION);
	return true;
}

bool32_t Villager::InitialiseTellOthersAboutObject()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	TurnsUntilNextStateChange = 0;
	SetTopState(VILLAGER_STATE_TELL_OTHERS_ABOUT_INTERESTING_OBJECT);
	return true;
}

bool32_t Villager::TellOthersAboutInterestingObject()
{
	return false;
}

bool32_t Villager::InitialiseLookAroundForVillagerToTell()
{
	return false;
}

bool32_t Villager::LookAroundForVillagerToTell()
{
	return false;
}

bool32_t Villager::ApproachVillagerToTalkTo()
{
	return false;
}

bool32_t Villager::TellParticularVillagerAboutObject()
{
	return false;
}

bool32_t Villager::GotoFoodReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		return Living::GotoFoodReaction();
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::GotoWoodReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable() && !ReactionObject->IsInMagicHand() &&
	    !((Object*)ReactionObject.Get())->IsOnFire())
	{
		return Living::GotoWoodReaction();
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::ArrivesAtWoodReaction()
{
	Object* wood = dynamic_cast<Object*>(ReactionObject.Get());
	if (wood != NULL && wood->IsAvailable() && !wood->IsInMagicHand() && !wood->IsOnFire())
	{
		if (wood->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS)
		{
			REACTION reactionType = reaction->GetFunctionIndex();
			uint32_t maxTurns =
				GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_WOOD_IN_PHYSICS_WAIT_SECONDS);
			if (GGame::g_game->data.GameTurn - GetGameTurnReactionStarted(reactionType) <= maxTurns)
			{
				MapCoords pos = wood->GetWorkingPos(this);
				if (AreWeThere(pos, VILLAGER_WOOD_ARRIVE_DISTANCE))
				{
					if (LookAtObject(wood, LIVING_LOOK_AT_SPEED_NORMAL))
					{
						SetupWaitForCounter(VILLAGER_WOOD_WAIT_TURNS, (VILLAGER_STATES)GetFinalState());
					}
					return true;
				}
				SetupMoveToWithHug(pos, GetFinalState());
				return true;
			}
		}
		else
		{
			if (wood->GetResourceType() == RESOURCE_TYPE_WOOD)
			{
				int capacity = GetWoodCapacity();
				if (capacity > 0)
				{
					int amount = wood->RemoveResource(RESOURCE_TYPE_WOOD, capacity, NULL, NULL);
					if (amount > 0)
					{
						PickupWood(amount, wood->GetCarriedTreeType());
					}
				}
			}
			return GotWoodDecideWhatToDo();
		}
	}
	SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
	return true;
}

uint32_t Villager::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                         float distance)
{
	VILLAGER_STATES state = (VILLAGER_STATES)(GetFinalState() & VILLAGER_STATE_LAST_STATE);
	if (state >= VILLAGER_STATE_FORESTER_MOVE_TO_FOREST &&
	    (state <= VILLAGER_STATE_FORESTER_CHOPS_TREE || state == VILLAGER_STATE_FORESTER_FINISHED_FORESTERING))
	{
		return 0;
	}
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
}

bool32_t Villager::ArrivesAtFoodReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		int       capacity = GetFoodCapacity();
		PileFood* food = dynamic_cast<PileFood*>(ReactionObject.Get());
		if (food != NULL && capacity > 0)
		{
			GetResourceFrom(food, RESOURCE_TYPE_FOOD, capacity);
		}
		if (ResourceHeld[RESOURCE_TYPE_FOOD] > 0)
		{
			if (IsHungry())
			{
				SetTopState(VILLAGER_STATE_EAT_FOOD);
				return true;
			}
#ifdef VERSION_BW1W100
			if (GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState != true)
#else
			if (!IsDisciple() || GVillagerInfo::GetDiscipleInfo()[DiscipleType].UsesNothingToDoState != true)
#endif // VERSION_BW1W100
			{
				MapCoords dropoffPos = GetResourceDropoffPos(RESOURCE_TYPE_FOOD);
				float     distanceScale =
					CalculateDesireChangeByDistance(dropoffPos, ((const GVillagerInfo*)info)->MaxDistCarryFoodPit);
				float loadScale =
					(float)ResourceHeld[RESOURCE_TYPE_FOOD] / ((const GVillagerInfo*)info)->MaxFoodCarried;
				if (GetTown() != NULL &&
				    GetTown()->CalculateDesireForFood() * loadScale * distanceScale > VILLAGER_DROP_OFF_FOOD_THRESHOLD)
				{
					return GotoStoragePitForDropOff();
				}
			}
		}
		SetTopState(VILLAGER_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::InitialiseBewilderedByMagicTreeReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		MagicTree* tree = dynamic_cast<MagicTree*>(ReactionObject.Get());
		if (tree == NULL)
		{
			StopReactingAndSetState();
			return true;
		}
		Forest* forest = tree->GetForest();
		BewilderedTreeIndex = GRand::GameRand(forest->Trees0.count + forest->Trees1.count - 1, FILEPATH, 1057);
		BewilderedTreesSeen = 0;
		SetTopState(VILLAGER_STATE_PERFORM_BEWILDERED_BY_MAGIC_TREE_REACTION);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::PerformBewilderedByMagicTreeReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		MagicTree* tree = dynamic_cast<MagicTree*>(ReactionObject.Get());
		if (tree != NULL)
		{
			Forest*   forest = tree->GetForest();
			MapCoords pos;
			uint32_t  numTrees = forest->Trees1.count + forest->Trees0.count;
			if (BewilderedTreesSeen < numTrees - GRand::GameRand(numTrees / 2, FILEPATH, 1080))
			{
				ReactionObject = forest->GetTree(BewilderedTreeIndex);
				BewilderedTreesSeen++;
				BewilderedTreeIndex = (BewilderedTreeIndex + 1) % numTrees;
				LHPoint edge;
				edge = tree->GetNearestEdgeOfObject(this);
				pos.SetX(edge.x);
				pos.SetZ(edge.z);
				pos.SetAltitude(0.0f);
				SetupMoveToWithHug(pos, VILLAGER_STATE_TURN_TO_FACE_MAGIC_TREE);
				uint8_t turns = GRand::GameRand(
					GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_MAGIC_TREE_LOOK_RAND_SECONDS), FILEPATH,
					1092);
				turns -= GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(-VILLAGER_MAGIC_TREE_LOOK_MIN_SECONDS);
				StateTurnsTotal = turns;
				StateTurnsLeft = turns;
				return true;
			}
		}
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::TurnToFaceMagicTree()
{
	if (ReactionObject.Get() == NULL || !ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL) != true)
	{
		return true;
	}
	SetTopState(VILLAGER_STATE_LOOK_AT_MAGIC_TREE);
	return true;
}

bool32_t Villager::LookAtMagicTree()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		dynamic_cast<Tree*>(ReactionObject.Get());
		if (StateTurnsLeft == StateTurnsTotal / 2)
		{
			SetAnim(1);
		}
		if (--StateTurnsLeft == 0)
		{
			SetTopState(VILLAGER_STATE_PERFORM_BEWILDERED_BY_MAGIC_TREE_REACTION);
		}
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool Villager::IsInterestedInFoodObject(Object* food)
{
	if (food->IsAvailable() && !(food->Flags & GAME_THING_WITH_POS_FLAG_IN_PHYSICS) && !food->IsInMagicHand())
	{
		float distanceScale = CalculateDesireChangeByDistance(
			food, GInfoArrays::ReactionInfos[REACTION_REACT_TO_FOOD].MaxReactionDistance);
		float stateScale = GVillagerStateTableInfo::Infos[GetFinalState()].FoodInterestMultiplier;
		float desire = GetDesireForFood();
		float capacityScale = (float)GetFoodCapacity() / ((const GVillagerInfo*)info)->MaxFoodCarried;
		float speedUpScale = food->IsSpeedUp() ? VILLAGER_SPEED_UP_FOOD_INTEREST_SCALE : 1.0f;
		if (speedUpScale * capacityScale * desire * stateScale * distanceScale + GGame::g_game->data.InteractDesire >
		    VILLAGER_FOOD_INTEREST_THRESHOLD)
		{
			return true;
		}
		Town* town = GetTown();
		if (town != NULL)
		{
			float townDesire = town->GetDesire(TOWN_DESIRE_INFO_FOR_FOOD) * capacityScale * stateScale * distanceScale +
			                   GGame::g_game->data.InteractDesire;
			if (townDesire > town->desire.GetInfo(TOWN_DESIRE_INFO_FOR_FOOD)->DesireTriggersVillagerAction)
			{
				return true;
			}
		}
	}
	return false;
}

bool Villager::IsInterestedInWoodObject(Object* wood)
{
	Town* town = GetTown();
	if (wood->IsAvailable() && !wood->IsInMagicHand() && GetWoodCapacity() != 0 && town != NULL &&
	    GetLife() > ((const GVillagerInfo*)info)->DamageThresholdToGoHome)
	{
		if (wood->IsDeadTree() && ResourceHeld[RESOURCE_TYPE_WOOD] < GetWoodCapacity() && IsVillagerAvailable())
		{
			return true;
		}
		BuildingSite* site = building_site;
		if (site != NULL && town->IsBuildingSiteValid(site) && site->GetWoodNeededToBuild() <= 0.0f)
		{
			return false;
		}
		if ((wood->IsAPotFromABuildingSite() || GVillagerInfo::GetDiscipleInfo()[DiscipleType].CollectsWood) &&
		    IsVillagerAvailable())
		{
			return true;
		}
		float distanceScale = CalculateDesireChangeByDistance(
			wood, GInfoArrays::ReactionInfos[REACTION_REACT_TO_WOOD].MaxReactionDistance);
		float stateScale = GVillagerStateTableInfo::Infos[GetFinalState()].WoodInterestMultiplier;
		float capacityScale = (float)GetWoodCapacity() / ((const GVillagerInfo*)info)->MaxWoodCarried;
		if (town->GetRawDesire(TOWN_DESIRE_INFO_FOR_WOOD) * capacityScale * stateScale * distanceScale +
		        GGame::g_game->data.InteractDesire >
		    town->desire.GetInfo(TOWN_DESIRE_INFO_FOR_WOOD)->DesireTriggersVillagerAction)
		{
			return true;
		}
	}
	return false;
}

bool32_t Villager::ApproachHandReaction()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	return true;
}

Villager* Villager::FindNearbyVillagerWhoIsntReacting()
{
	MapCoords pos = Pos;
	int       remaining = VILLAGER_FIND_NEARBY_VILLAGER_CELLS;
	long      spiralX = 1;
	long      spiralZ = 1;
	while (remaining != 0)
	{
		if (pos.InBounds() == true)
		{
			for (Object* object = pos.GetFirstObjectMobile(); object != NULL;
			     object = object->GetMapChild(*pos.ToMap()))
			{
				Villager* villager = dynamic_cast<Villager*>(object);
				if (villager != NULL && villager->reaction.Get() == NULL)
				{
					return villager;
				}
			}
		}
		remaining--;
		pos += *GUtils::Spiral(spiralX, spiralZ);
	}
	return NULL;
}

uint8_t Villager::ReactToFlyingObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (IsDancing() && !IsObjectTravellingTowardsMe(reaction->GetInitiatingObject()))
	{
		return 0;
	}
	if (this->reaction.Get() != NULL && GetReaction()->GetFunctionIndex() == REACTION_REACT_TO_MAGIC_SHIELD)
	{
		GameThingWithPos* shield = ReactionObject.Get();
		if (shield == NULL)
		{
			return 0;
		}
		if (GUtils::GetDistanceInMetres(GetReaction()->GetPos(), reaction->GetPos()) >= shield->GetRadius())
		{
			return 0;
		}
	}
	return Living::ReactToFlyingObjectPriority(reaction, NULL);
}

bool32_t Villager::ArrivesAtPickupBallReaction()
{
	Ball* ball = dynamic_cast<Ball*>(ReactionObject.Get());
	if (ball == NULL || ball->IsBallFree() != true)
	{
		StopReactingAndSetState();
		return true;
	}
	if (IsTouching(ball, VILLAGER_PICKUP_BALL_TOUCH_DISTANCE))
	{
		Reaction::RemoveAllReactionsInitiatedByObject(ball);
		if (reaction.Get() != NULL)
		{
			StopReacting();
		}
		if (GetTown() != NULL && ball->AddToTown(GetTown()) == true)
		{
			GoHome();
		}
		return true;
	}
	SetupMoveToPos(ReactionObject->Pos, VILLAGER_STATE_ARRIVES_AT_PICKUP_BALL_REACTION);
	return true;
}

bool32_t Villager::WatchFlyingObjectReaction()
{
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	SetAnim(1);
	Object* object = dynamic_cast<Object*>(ReactionObject.Get());
	if (!object->IsActuallyInTheAir())
	{
		StopReactingAndSetState();
	}
	return true;
}

bool32_t Villager::PointAtFlyingObjectReaction()
{
	PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject((Object*)ReactionObject.Get());
	if (physicsObject != NULL)
	{
		float speed = physicsObject->Physics.Velocity.GetNorme();
		if (GUtils::GetDistanceInMetres(Pos, reaction->GetInitiatingObject()->Pos) < speed + speed)
		{
			SetTopState(VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
			return true;
		}
		LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
		Object* object = dynamic_cast<Object*>(ReactionObject.Get());
		if (!object->IsActuallyInTheAir())
		{
			StopReactingAndSetState();
		}
	}
	return true;
}

void Villager::SetupReactToFire(GameThingWithPos* thing, Reaction* reaction) {}

uint8_t Villager::ReactToFirePriority(Reaction* reaction, Reaction* current_reaction)
{
	return 0;
}

bool32_t Villager::ReactToFire()
{
	return false;
}

void Villager::SetupReactToWood(GameThingWithPos* thing, Reaction* reaction)
{
	Object* wood = dynamic_cast<Object*>(thing);
	AddReaction(reaction, VILLAGER_STATE_GOTO_WOOD_REACTION);
	ReactionObject = wood;
}

uint8_t Villager::ReactToMagicShieldPriority(Reaction* reaction, Reaction* current_reaction)
{
	SpellShield* shield = dynamic_cast<SpellShield*>(reaction->GetInitiatingObject());
	if (shield != NULL && shield->IsAvailable())
	{
		GUtils::GetDistanceInMetres(reaction->GetPos(), Pos);
		Town* town = GetTown();
		if (town != NULL)
		{
			if (town->desire.GetDesireSignificanceToVillager(TOWN_DESIRE_INFO_FOR_PROTECTION) == 0.0f)
			{
				return 0;
			}
			if (GGame::g_game->data.GetGameTurn() - GetTown()->LastAttackedTurn >
			    ((const GVillagerInfo*)info)->NumGameTurnsAfterAggressionInterestedInShield)
			{
				return 0;
			}
		}
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_SHIELD].priority;
	}
	return 0;
}

void Villager::SetupReactToMagicShield(GameThingWithPos* thing, Reaction* reaction)
{
	SpellShield* shield = dynamic_cast<SpellShield*>(thing);
	if (shield != NULL)
	{
		AddReaction(reaction, VILLAGER_STATE_AMAZED_BY_MAGIC_SHIELD_REACTION);
		ReactionObject = shield;
		float edge = shield->GetRadius() * VILLAGER_SHIELD_EDGE_SCALE;
		if (!shield->IsUnder(Pos, edge))
		{
			float angle = GUtils::Get3DAngleFromXZ(reaction->GetPos(), Pos);
			angle += GRand::GameFloatRand(QUARTER_PI_F, FILEPATH, 1577) - EIGHTH_PI_F;
			float     inside = shield->GetRadius() - edge;
			float     distance = inside - POWER(GRand::GameFloatRand(1.0f, FILEPATH, 1579), 3) * inside;
			MapCoords pos = reaction->GetPos() + GUtils::GetPosFromAngle(angle, distance);
			SetupMoveToWithHug(pos, VILLAGER_STATE_AMAZED_BY_MAGIC_SHIELD_REACTION);
		}
		float angle = GUtils::Get3DAngleFromXZ(reaction->GetPos(), Pos);
		angle += GRand::GameFloatRand(QUARTER_PI_F, FILEPATH, 1583) - EIGHTH_PI_F;
		ReactionPos.Init(Pos + GUtils::GetPosFromAngle(angle, VILLAGER_SHIELD_LOOK_DISTANCE));
	}
}

bool32_t Villager::AmazedByMagicShieldReaction()
{
	return false;
}

void Villager::SetupReactToNewBuilding(GameThingWithPos* thing, Reaction* reaction)
{
	Object* building = dynamic_cast<Object*>(thing);
	float   radius = building->Get2DRadius();
	Dance*  dance = reaction->ReactionDance.Get();
	if (dance == NULL)
	{
		DANCE_INFO type =
			radius < VILLAGER_LARGE_BUILDING_RADIUS ? DANCE_INFO_BUILDING_SMALL : DANCE_INFO_BUILDING_LARGE;
		dance = new (FILEPATH, 1646)
			Dance(thing->Pos, &GDanceInfo::Infos[type], building, GDanceInfo::Infos[type].Duration, false, town);
		if (dance == NULL)
		{
			return;
		}
		reaction->ReactionDance = dance;
	}
	ReactionObject = thing;
	if (dance->FindDanceGroup(this) == true)
	{
		MapCoords pos;
		CalculateDancePosition(dance->Pos, &pos);
		AddMoveToPosReaction(reaction, pos, VILLAGER_STATE_DANCE_WHILE_REACTING, false);
		return;
	}
	AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
}

bool32_t Villager::DanceWhileReacting()
{
	MapCoords dancePos;
	CalculateDancePosition(dance_group->Dancer->Pos, &dancePos);
	if (Pos != dancePos && Pos == dance_group->Dancer->GetArrivePos())
	{
		SetupMoveToPos(dancePos, VILLAGER_STATE_DANCE_WHILE_REACTING);
		return true;
	}
	if (!IsDancing())
	{
		return DecideWhatToDo();
	}
	PerformDance(dance_group->behaviour->Pos, VILLAGER_STATE_DANCE_WHILE_REACTING, dance_group->Action.Kind);
	return true;
}

uint8_t Villager::ReactToTeleportPriority(Reaction* reaction, Reaction* current_reaction)
{
	GameThingWithPos* initiator = reaction->GetInitiatingObject();
	if (dynamic_cast<MagicTeleport*>(initiator) == NULL)
	{
		return 0;
	}
	if (((MagicTeleport*)initiator)->ShouldLivingThingReact(this))
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_TELEPORT].priority;
	}
	return 0;
}

void Villager::SetupReactToTeleport(GameThingWithPos* thing, Reaction* reaction)
{
	if (dynamic_cast<MagicTeleport*>(thing) != NULL)
	{
		MapCoords pos;
		GetFinalDestPos(&pos);
		((MagicTeleport*)thing)->AddLivingMapCoordsPair(this, pos);
		ReactionObject = thing;
		AddReaction(reaction, speed > ((const GMobileWallHugInfo*)info)->FastSpeedThreshold
		                          ? VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION_QUICKLY
		                          : VILLAGER_STATE_GO_TOWARDS_TELEPORT_REACTION);
	}
}

bool32_t Villager::GoToTeleportReaction()
{
	GameThingWithPos* teleport = GetReaction()->GetInitiatingObject();
	MapCoords         coords;
	coords.x = teleport->Pos.x;
	coords.z = teleport->Pos.z;
	coords.altitude = teleport->Pos.Altitude();
	if (AreWeThere(coords, 0.0f))
	{
		SetTopState(VILLAGER_STATE_TELEPORT_REACTION);
		return true;
	}
	SetupMoveToWithHug(coords, GetFinalState());
	return true;
}

bool32_t Villager::GoToTeleportReactionQuickly()
{
	return GoToTeleportReaction();
}

bool32_t Villager::ExitReactToTeleport(unsigned char state)
{
	if (!IsStateExitFunctionSameAs((VILLAGER_STATES)state))
	{
		if (GetTown() != NULL)
		{
			GetTown()->RemoveVillagerOnWayToWorshipSite(this);
		}
		Flags &= ~VILLAGER_FLAG_ON_WAY_TO_WORSHIP_SITE;
	}
	return ExitReaction(state);
}

bool32_t Villager::TeleportReaction()
{
	Reaction* reaction = GetReaction();
	if (reaction == NULL)
	{
		return false;
	}
	GameThingWithPos* target = reaction->GetInitiatingObject();
	if (dynamic_cast<MagicTeleport*>(target) == NULL)
	{
		return false;
	}
	((MagicTeleport*)target)->DoTeleport(this, false);
	StopReactingAndSetState();
	return true;
}

uint8_t Villager::ReactToDeathPriority(Reaction* reaction, Reaction* current_reaction)
{
	GameThingWithPos* dead = reaction->GetInitiatingObject();
	if (dead->IsCreature())
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_DEATH].priority;
	}
	if (GetTown() != NULL)
	{
		Town* town = GetTown();
		if (town->graveyard != NULL && town->graveyard->IsFunctional())
		{
			return 0;
		}
	}
	if (this != dead && reaction->ReactingLivings.GetSize() < VILLAGER_DEATH_MAX_REACTING_LIVINGS)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_DEATH].priority;
	}
	return 0;
}

uint8_t Villager::ReactToDroppedByHandPriority(Reaction* reaction, Reaction* current_reaction)
{
	GetTopState();
	Villager* dropped = dynamic_cast<Villager*>(reaction->GetInitiatingObject());
	if (dropped != NULL && dropped->IsAvailable() && !IsDisciple() && GetTown() == dropped->GetTown() &&
	    GUtils::GetDistanceInMetres(Pos, dropped->Pos) < VILLAGER_DROPPED_BY_HAND_DISTANCE && IsVillagerAvailable() &&
	    !(GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && IsAvailable() && !IsChild() &&
	    !IsSkeleton() && !IsDead()
#ifndef VERSION_BW1W100
	    && !(Flags & VILLAGER_FLAG_PLAYING_FOOTBALL)
#endif // VERSION_BW1W100
	)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_DROPPED_BY_HAND].priority;
	}
	return 0;
}

void Villager::SetupReactToDeath(GameThingWithPos* thing, Reaction* reaction)
{
	if (reaction->GetInitiatingObject() != NULL && reaction->GetInitiatingObject()->IsCreature())
	{
		AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	}
	else if (GRand::GameRand(2, FILEPATH, 1830) == 0)
	{
		TurnsUntilNextStateChange = 0;
		AddReaction(reaction, VILLAGER_STATE_POINT_AT_DEAD_PERSON);
	}
	else
	{
		AddReaction(reaction, VILLAGER_STATE_GO_TOWARDS_DEAD_PERSON);
	}
	ReactionObject = thing;
}

void Villager::SetupReactToDroppedByHand(GameThingWithPos* thing, Reaction* reaction)
{
	GameThingWithPos* target = reaction->GetInitiatingObject();
	Villager*         dropped = dynamic_cast<Villager*>(target);
	if (dropped != NULL && dropped->IsAvailable() && !(Flags & VILLAGER_FLAG_DISCIPLE_FOLLOWER))
	{
		SetDiscipleFollower((VILLAGER_DISCIPLE)dropped->DiscipleType);
	}
}

bool32_t Villager::PointAtDeadPerson()
{
	if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL))
	{
		TurnsUntilNextStateChange++;
		if (TurnsUntilNextStateChange >
		    (int)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
				GRand::GameFloatRand(VILLAGER_DEAD_PERSON_POINT_RAND_SECONDS, FILEPATH, 1860) +
				VILLAGER_DEAD_PERSON_POINT_MIN_SECONDS))
		{
			SetTopState(VILLAGER_STATE_GO_TOWARDS_DEAD_PERSON);
		}
	}
	return true;
}

bool32_t Villager::GoTowardsDeadPerson()
{
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	float lookDistance = GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject;
	float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	if (distance > lookDistance * VILLAGER_DEAD_PERSON_APPROACH_SCALE)
	{
		long angle = GUtils::GetAngleFromXZ(Pos, ReactionObject->Pos);
		distance -= lookDistance;
		if (distance > VILLAGER_DEAD_PERSON_MIN_MOVE_DISTANCE)
		{
			long      dx = GUtils::GetXByAngleHugeDistance(angle, GUtils::MetersToWholeX(distance));
			long      dz = GUtils::GetZByAngleHugeDistance(angle, GUtils::MetersToWholeZ(distance));
			MapCoords destination = Pos;
			destination.x += dx;
			destination.z += dz;
			SetupMoveToWithHug(destination, VILLAGER_STATE_GO_TOWARDS_DEAD_PERSON);
			return true;
		}
	}
	SetTopState(VILLAGER_STATE_LOOK_AT_DEAD_PERSON);
	return true;
}

bool32_t Villager::LookAtDeadPerson()
{
	GameThingWithPos* target = ReactionObject.Get();
	if (LookAtObject(target, LIVING_LOOK_AT_SPEED_NORMAL) == true)
	{
		TurnsUntilNextStateChange = 0;
		SetTopState(VILLAGER_STATE_MOURN_DEAD_PERSON);
	}
	return true;
}

bool32_t Villager::MournDeadPerson()
{
	TurnsUntilNextStateChange++;
	if (TurnsUntilNextStateChange > (int)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(
										GRand::GameFloatRand(VILLAGER_DEAD_PERSON_MOURN_RAND_SECONDS, FILEPATH, 1914) +
										VILLAGER_DEAD_PERSON_MOURN_MIN_SECONDS))
	{
		StopReactingAndSetState();
	}
	return true;
}

void Villager::SetupReactToFainting(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = this;
	AddReaction(reaction, VILLAGER_STATE_FAINTING_REACTION);
}

bool32_t Villager::FaintingReaction()
{
	return true;
}

void Villager::SetupReactToConfused(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = this;
	AddReaction(reaction, VILLAGER_STATE_START_CONFUSED_REACTION);
}

bool32_t Villager::StartConfusedReaction()
{
	action.TurnsSinceStateChange = 0;
	SetTopState(VILLAGER_STATE_CONFUSED_REACTION);
	return true;
}

bool32_t Villager::ConfusedReaction()
{
	action.TurnsSinceStateChange++;
	if (action.TurnsSinceStateChange > VILLAGER_CONFUSED_TURNS)
	{
		MapCoords pos = Pos;
		pos.SetMetersX(pos.MetersX() + GRand::GameFloatRand(VILLAGER_CONFUSED_WANDER_RANGE, FILEPATH, 1960) -
		               VILLAGER_CONFUSED_WANDER_RANGE / 2);
		pos.SetMetersZ(pos.MetersZ() + GRand::GameFloatRand(VILLAGER_CONFUSED_WANDER_RANGE, FILEPATH, 1961) -
		               VILLAGER_CONFUSED_WANDER_RANGE / 2);
		SetupMoveToWithHug(pos, VILLAGER_STATE_START_CONFUSED_REACTION);
	}
	return true;
}

uint8_t Villager::ReactToFallingTreePriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_AVOID_FALLING_TREE].priority;
}

void Villager::SetupReactToFallingTree(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
	ReactionObject = thing;
}

uint8_t Villager::ReactToCrowdPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_CROWD_AROUND].priority;
}

void Villager::SetupReactToCrowd(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_CROWD_REACTION);
	ReactionObject = thing;
}

bool32_t Villager::CrowdReaction()
{
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	LHPoint myPoint;
	LHPoint objectPoint;
	GLandscape::ConvertMapCoordToLandscapePoint(Pos, myPoint);
	GLandscape::ConvertMapCoordToLandscapePoint(ReactionObject->Pos, objectPoint);
	LHPoint direction = objectPoint - myPoint;
	float   distance = direction.GetNorme();
	direction.SetSize(1.0f);
	if (distance > VILLAGER_CROWD_DISTANCE)
	{
		LHPoint   destinationPoint = myPoint + direction * (distance - VILLAGER_CROWD_DISTANCE);
		MapCoords destination;
		GLandscape::ConvertLandscapePointToMapCoord(destinationPoint, destination);
		SetupMoveToWithHug(destination, VILLAGER_STATE_CROWD_REACTION);
		SetTopState(VILLAGER_STATE_MOVE_TOWARDS_OBJECT_TO_LOOK_AT);
		return true;
	}
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	return true;
}

bool32_t Villager::MoveTowardsObjectToLookAt()
{
	if (!ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	MapCoords destPos;
	destPos = *GetDestPos();
	if (GUtils::GetDistanceInMetres(ReactionObject->Pos, destPos) > VILLAGER_LOOK_AT_OBJECT_MAX_DISTANCE)
	{
		SetTopState(VILLAGER_STATE_CROWD_REACTION);
		return true;
	}
	return MoveToPos();
}

bool32_t Villager::InitialiseImpressedReaction()
{
	if (ReactionObject.Get() == NULL || !ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_FAST) != true)
	{
		return true;
	}
	TurnsUntilNextStateChange = 0;
	SetTopState(VILLAGER_STATE_PERFORM_IMPRESSED_REACTION);
	return true;
}

bool32_t Villager::PerformImpressedReaction()
{
	if (ReactionObject.Get() == NULL || !ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	TurnsUntilNextStateChange++;
	if (TurnsUntilNextStateChange >
	    (int)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_IMPRESSED_LOOK_SECONDS))
	{
		if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_FAST) == true)
		{
			TurnsUntilNextStateChange = 0;
		}
	}
	return true;
}

uint8_t Villager::ReactToFightPriority(Reaction* reaction, Reaction* current_reaction)
{
	GArena* arena = dynamic_cast<GArena*>(reaction->GetInitiatingObject());
	if (arena == NULL)
	{
		return 0;
	}
	if (arena->FightInProgress != false)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FIGHT].priority;
	}
	return 0;
}

void Villager::SetupReactToFight(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_INITIALISE_FIGHT_REACTION);
}

bool32_t Villager::InitialiseFightReaction()
{
	GArena* arena = dynamic_cast<GArena*>(ReactionObject.Get());
	if (arena != NULL)
	{
		MapCoords pos = arena->Pos;
		float     radius = arena->GetRadius() * VILLAGER_FIGHT_WATCH_RADIUS_SCALE;
		uint32_t  index = UINT_MAX;
		for (uint32_t i = 0; i < reaction->ReactingLivings.GetSize(); i++)
		{
			if (reaction->ReactingLivings.GetNthMember(i) == this)
			{
				index = i;
				break;
			}
		}
		if (index == UINT_MAX)
		{
			return false;
		}
		GetTown();
		uint16_t angle = GUtils::Spread(index, VILLAGER_GAME_ANGLE_FULL_TURN);
		pos.SetMetersX(LHSinTable[angle + LH_SIN_TABLE_COSINE_OFFSET] * radius / LH_SIN_TABLE_ONE + pos.MetersX());
		pos.SetMetersZ(LHSinTable[angle] * radius / LH_SIN_TABLE_ONE + pos.MetersZ());
		SetupMoveToWithHug(pos, VILLAGER_STATE_PERFORM_FIGHT_REACTION);
		return true;
	}
	StopReactingAndSetState();
	return false;
}

bool32_t Villager::PerformFightReaction()
{
	LookAtPos(ReactionObject->Pos, LIVING_LOOK_AT_SPEED_FAST);
	return true;
}

void Villager::SetupReactToTownCelebration(GameThingWithPos* thing, Reaction* reaction)
{
	if (thing->IsTown())
	{
		if (reaction->ReactionDance.Get() == NULL)
		{
			Dance* dance = new (FILEPATH, 2167)
				Dance(thing->Pos, &GDanceInfo::Infos[DANCE_INFO_DANCE_AROUND_PERSON], NULL,
			          GDanceInfo::Infos[DANCE_INFO_DANCE_AROUND_PERSON].Duration, false, (Town*)thing);
			if (dance == NULL)
			{
				return;
			}
			reaction->ReactionDance = dance;
		}
		ReactionObject = thing;
		AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
		return;
	}
	Object* building = dynamic_cast<Object*>(thing);
	building->Get2DRadius();
	Dance* dance = reaction->ReactionDance.Get();
	if (dance == NULL)
	{
		TownCentre* townCentre = dynamic_cast<TownCentre*>(thing);
		dance = new (FILEPATH, 2187) Dance(thing->Pos, &GDanceInfo::Infos[DANCE_INFO_DANCE_TOWN_CELEBRATION], building,
		                                   GDanceInfo::Infos[DANCE_INFO_DANCE_TOWN_CELEBRATION].Duration, false,
		                                   townCentre != NULL ? townCentre->GetTown() : NULL);
		if (dance == NULL)
		{
			return;
		}
		reaction->ReactionDance = dance;
	}
	if (IsDancing())
	{
		RemoveFromDance(true);
	}
	ReactionObject = thing;
	if (dance->FindDanceGroup(this) == true)
	{
		MapCoords pos;
		CalculateDancePosition(dance->Pos, &pos);
		AddMoveToPosWithFootpathReaction(reaction, *dance, VILLAGER_STATE_DANCE_WHILE_REACTING, false);
		return;
	}
	AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
}

uint8_t Villager::ReactToTownCelebrationPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (IsDisciple())
	{
		return 0;
	}
	if (IsDancing())
	{
		return 0;
	}
	Town* town = GetTown();
	if (town == NULL)
	{
		return 0;
	}
	if (reaction->GetInitiatingObject() == town)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_TOWN_CELEBRATION].priority;
	}
	return 0;
}

void Villager::SetupReactToBreeder(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_REACT_TO_BREEDER);
	ReactionObject = thing;
}

uint8_t Villager::ReactToBreederPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (reaction->GetInitiatingObject()->IsVillager(NULL))
	{
		Villager* breeder = (Villager*)reaction->GetInitiatingObject();
		if (breeder != NULL && this != breeder && IsSexuallyActive() && GetInfo()->sex != breeder->GetInfo()->sex &&
		    reaction->ReactingLivings.GetSize() == 0 &&
		    !(GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
		{
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_BREEDER].priority;
		}
	}
	return 0;
}

bool32_t Villager::ReactToBreeder()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsVillager(NULL))
	{
		GoAndHaveSexWith((Villager*)ReactionObject.Get());
		return true;
	}
	return false;
}

bool32_t Villager::GoAndHaveSexWith(Villager* mate)
{
	bool32_t result = MakeVillagesMeet(mate, VILLAGER_STATE_START_HAVING_SEX, VILLAGER_MEET_MATE_DISTANCE);
	TargetThing = mate;
	mate->TargetThing = this;
	return result;
}

void Villager::SetupReactToVillagerInHand(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_WAIT_FOR_MATE);
	ReactionObject = thing;
}

uint8_t Villager::ReactToVillagerInHandPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (reaction->GetInitiatingObject()->IsVillager(NULL))
	{
		Villager* mate = (Villager*)reaction->GetInitiatingObject();
		if (mate != NULL && mate->GetFinalState() == VILLAGER_STATE_IN_HAND && IsSexuallyActive() &&
		    GetInfo()->sex != mate->GetInfo()->sex && GetPlayer() == mate->GetPlayer() &&
		    !(GameThingWithPos::Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT))
		{
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_BREEDER].priority;
		}
	}
	return 0;
}

bool32_t Villager::WaitForMate()
{
	if (GUtils::GetDistanceInMetres(Pos, ReactionObject->Pos) <
	    GInfoArrays::ReactionInfos[REACTION_REACT_TO_VILLAGER_IN_HAND].MaxReactionDistance)
	{
		if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL) && IsReadyForNewAnimation(1))
		{
			SetStateAnim();
			return true;
		}
	}
	else
	{
		StopReactingAndSetState();
	}
	return true;
}

bool32_t Villager::EnterDrowning(unsigned char current_state, unsigned char previous_state)
{
	return true;
}

bool32_t Villager::ExitDrowning(unsigned char state)
{
	return true;
}

uint8_t Villager::ReactToBurningObjectInHandPriority(Reaction* reaction, Reaction* current_reaction)
{
	REACTION          type = reaction->GetFunctionIndex();
	GameThingWithPos* burning = reaction->GetInitiatingObject();
	if (GUtils::GetDistanceInMetres(&Pos, &burning->Pos) >
	        GInfoArrays::ReactionInfos[type].MinDistanceToRunAwayFromObject &&
	    burning->GetSpeedInMetresPerSecond() < VILLAGER_BURNING_OBJECT_SLOW_SPEED)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_BURNING_OBJECT_IN_HAND].priority;
}

void Villager::SetupReactToBurningObjectInHand(GameThingWithPos* thing, Reaction* reaction)
{
	ReactionObject = thing;
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
}

void Villager::SetupReactToMagicShieldStruck(GameThingWithPos* thing, Reaction* reaction) {}

void Villager::SetupReactToMagicShieldDestroyed(GameThingWithPos* thing, Reaction* reaction)
{
	SetupPanicReaction(reaction, thing->Pos);
}

uint8_t Villager::ReactToMagicShieldStruckPriority(Reaction* reaction, Reaction* current_reaction)
{
	SpellShield* shield = dynamic_cast<SpellShield*>(reaction->GetInitiatingObject());
	if (shield != NULL && GetFinalState() == VILLAGER_STATE_AMAZED_BY_MAGIC_SHIELD_REACTION &&
	    (ReactionPos.x != shield->Pos.x || ReactionPos.z != shield->Pos.z))
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_SHIELD_STRUCK].priority;
	}
	return 0;
}

uint8_t Villager::ReactToMagicShieldDestroyedPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_SHIELD_DESTROYED].priority;
}
