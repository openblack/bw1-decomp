#include "MaxFloat.h"
#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "Villager.h"

#include "ColourConstants.h" /* For White */

#include "Balance.h"
#include "Creature.h"
#include "CreatureAgenda.h"
#include "CreatureMental.h"
#include "CreatureMentalBelief.h"
#include "Game.h"
#include "GameInfo.h"
#include "Map.h"
#include "MapCoords.h"
#include "MapCoordsMeters.h"
#include "MobileWallHugInfo.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Town.h"
#include "Utils.h"
#include "VillagerStateTableInfo.h"
#include "CreatureAttitudeConstants.h"

#include <string.h> /* For memset */

#include <Lionhead/LHLib/ver5.0/LHStack.h>

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\VillagerReactionToCreature.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\VillagerReactionToCreature.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\VillagerReactionToCreature.cpp"
#endif

#define VILLAGER_INSPECT_CREATURE_START_DISTANCE    20.0f
#define VILLAGER_INSPECT_CREATURE_DISTANCE_STEP     8.0f
#define VILLAGER_INSPECT_CREATURE_MIN_DISTANCE      1.0f
#define VILLAGER_INSPECT_CREATURE_MIN_SECONDS       1.5f
#define VILLAGER_INSPECT_CREATURE_RAND_SECONDS      3.0f
#define VILLAGER_REINSPECT_CREATURE_RAND_SECONDS    7.0f
#define VILLAGER_RESPECT_CREATURE_SECONDS           4.0f
#define VILLAGER_RESPECT_CREATURE_MAX_ANGLE         0x100
#define VILLAGER_FLEE_CREATURE_DISTANCE_SCALE       1.2f
#define VILLAGER_FLEE_CREATURE_STOP_SCALE           1.5f
#define VILLAGER_FLEE_CREATURE_RAND_RANGE           10
#define VILLAGER_CALCULATE_FREE_STACK_SIZE          8
#define VILLAGER_NEVER_SEEN_CREATURE_PRIORITY_SCALE 1.5f
#define VILLAGER_FEARED_CREATURE_PRIORITY_SCALE     2.0f

const float HalfMetre = 0.5f;

void Villager::SetupReactToCreature(GameThingWithPos* thing, Reaction* reaction)
{
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature->IsAvailable())
	{
		ReactionObject = creature;
		Town* town = GetTown();
		if (town != NULL)
		{
			town->CreateCreatureInfo(creature);
			switch (town->GetTownAttitudeToCreature(creature))
			{
			case TOWN_ATTITUDE_TO_CREATURE_FEAR:
				AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_CREATURE_REACTION);
				break;
			case TOWN_ATTITUDE_TO_CREATURE_NEVER_SEEN:
			case TOWN_ATTITUDE_TO_CREATURE_CURIOUS:
			case TOWN_ATTITUDE_TO_CREATURE_RESPECT:
				AddReaction(reaction, VILLAGER_STATE_INSPECT_CREATURE_REACTION);
				break;
			}
			return;
		}
		AddReaction(reaction, VILLAGER_STATE_INSPECT_CREATURE_REACTION);
	}
}

uint8_t Villager::ReactToCreaturePriority(Reaction* reaction, Reaction* current_reaction)
{
	if (IsDancing() != false)
	{
		return 0;
	}
	Creature* creature = dynamic_cast<Creature*>(reaction->GetInitiatingObject());
	if (creature == NULL || creature->IgnoredByVillagers != false || creature->Invisible != false)
	{
		return 0;
	}
	float distance = GUtils::GetDistanceInMetres(&Pos, &creature->Pos);
	if (distance > reaction->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		return 0;
	}
	Town* town = GetTown();
	if (town != NULL)
	{
		switch (town->GetTownAttitudeToCreature(creature))
		{
		case TOWN_ATTITUDE_TO_CREATURE_NEVER_SEEN:
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_CREATURE].priority *
			       VILLAGER_NEVER_SEEN_CREATURE_PRIORITY_SCALE;
		case TOWN_ATTITUDE_TO_CREATURE_CURIOUS:
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_CREATURE].priority;
		case TOWN_ATTITUDE_TO_CREATURE_FEAR:
			return GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_OBJECT].priority *
			       VILLAGER_FEARED_CREATURE_PRIORITY_SCALE;
		case TOWN_ATTITUDE_TO_CREATURE_RESPECT:
			if (town->GetPlayer() == creature->GetPlayer())
			{
				if (IsDisciple())
				{
					break;
				}
				VILLAGER_STATES state = (VILLAGER_STATES)GetFinalState();
				int             desireType = GVillagerStateTableInfo::Infos[state].TownDesireType;
				if (desireType >= TOWN_DESIRE_INFO_FIRST && desireType < TOWN_DESIRE_INFO_LAST &&
				    (town->desire.RawDesire[desireType] + town->desire.DesireBoost[desireType] +
				     town->desire.DesireCheat[desireType]) *
				            GVillagerStateTableInfo::Infos[state].TownDesireAmount >
				        0.0f)
				{
					break;
				}
			}
			return GInfoArrays::ReactionInfos[REACTION_FOLLOW_OBJECT].priority;
		}
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_CREATURE].priority;
}

bool32_t Villager::InspectCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		InspectDistance = VILLAGER_INSPECT_CREATURE_START_DISTANCE;
		uint32_t minTurns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_CREATURE_MIN_SECONDS);
		uint32_t extraTurns = GRand::GameRand(
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_CREATURE_RAND_SECONDS), FILEPATH, 160);
		InspectTurnsUntilApproach = minTurns + extraTurns;
		SetTopState(VILLAGER_STATE_PERFORM_INSPECT_CREATURE_REACTION);
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::PerformInspectCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		InspectTurnsUntilApproach--;
		if (InspectDistance < VILLAGER_INSPECT_CREATURE_MIN_DISTANCE)
		{
			if (InspectTurnsUntilApproach == 0)
			{
				StopReactingAndSetState();
				return true;
			}
		}
		else if (InspectTurnsUntilApproach == 0)
		{
			SetTopState(VILLAGER_STATE_APPROACH_CREATURE_REACTION);
			UpdateAttitudeToCreature();
			return true;
		}
		else
		{
			LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
		}
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::ApproachCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
		if (distance - InspectDistance > VILLAGER_INSPECT_CREATURE_MIN_DISTANCE)
		{
			long      angle = GUtils::GetAngleFromXZ(Pos, ReactionObject->Pos);
			long      dx = GUtils::GetXByAngleHugeDistance(angle, GUtils::MetersToWholeX(distance - InspectDistance));
			long      dz = GUtils::GetZByAngleHugeDistance(angle, GUtils::MetersToWholeZ(distance - InspectDistance));
			MapCoords destination = Pos;
			destination.x += dx;
			destination.z += dz;
			SetupMoveToCreatureReaction(destination, VILLAGER_STATE_APPROACH_CREATURE_REACTION);
			UpdateAttitudeToCreature();
			return true;
		}
		uint32_t minTurns = GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_INSPECT_CREATURE_MIN_SECONDS);
		uint32_t extraTurns = GRand::GameRand(
			GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_REINSPECT_CREATURE_RAND_SECONDS), FILEPATH,
			231);
		InspectTurnsUntilApproach = minTurns + extraTurns;
		InspectDistance -= VILLAGER_INSPECT_CREATURE_DISTANCE_STEP;
		SetTopState(VILLAGER_STATE_PERFORM_INSPECT_CREATURE_REACTION);
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::InitialiseRespectCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		MapCoords destination;
		destination.Clear();
		Creature* creature = dynamic_cast<Creature*>(ReactionObject.Get());
		LHPoint   edge;
		edge = GetNearestEdgeOfObject(creature);
		destination.SetX(edge.x);
		destination.SetZ(edge.z);
		destination.SetAltitude(0.0f);
		SetupMoveToCreatureReaction(destination, VILLAGER_STATE_TURN_TO_FACE_CREATURE_REACTION);
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::TurnToFaceCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		if (LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_FAST) == true)
		{
			TurnsUntilNextStateChange = 0;
			SetTopState(VILLAGER_STATE_PERFORM_RESPECT_CREATURE_REACTION);
		}
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::PerformRespectCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		if ((uint32_t)abs(GUtils::GetAngleFromXZ(Pos, ReactionObject->Pos) - GameAngle) >
		    VILLAGER_RESPECT_CREATURE_MAX_ANGLE)
		{
			SetTopState(VILLAGER_STATE_TURN_TO_FACE_CREATURE_REACTION);
			return true;
		}
		TurnsUntilNextStateChange++;
		if (TurnsUntilNextStateChange >
		    (int)GGameInfo::Info.ConvertRealWorldSecondsToGameTicks(VILLAGER_RESPECT_CREATURE_SECONDS))
		{
			SetTopState(VILLAGER_STATE_FINISH_RESPECT_CREATURE_REACTION);
		}
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::FinishRespectCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		StopReactingAndSetState();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::FleeingFromCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		float fleeDistance = GetReaction()->GetInfo()->MaxReactionDistance * VILLAGER_FLEE_CREATURE_DISTANCE_SCALE;
		if (GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos) <= fleeDistance * VILLAGER_FLEE_CREATURE_STOP_SCALE)
		{
			MapCoords destination;
			destination.Clear();
			GetFleeingPositionFromStationaryObject(&destination, ReactionObject.Get(), fleeDistance);
			if (destination.InBounds() != false)
			{
				Creature* creature = ReactionObject->CastCreature();
				if (creature != NULL && creature->mind->agenda.plans[0].ObjectToActOn != NULL &&
				    creature->mind->agenda.plans[0].ObjectToActOn->Pointer != NULL)
				{
					if (GRand::GameRand(VILLAGER_FLEE_CREATURE_RAND_RANGE, FILEPATH, 353) != 0)
					{
						return true;
					}
					SetSpeed(((const GMobileWallHugInfo*)info)->FleeingSpeed / 2, true);
					SetupMoveToCreatureReaction(destination, VILLAGER_STATE_FLEEING_FROM_CREATURE_REACTION);
					return true;
				}
				SetSpeed(((const GMobileWallHugInfo*)info)->FleeingSpeed, true);
				return true;
			}
			UpdateAttitudeToCreature();
			return true;
		}
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Villager::MoveTowardsCreatureReaction()
{
	if (ReactionObject.Get() != NULL && ReactionObject->IsAvailable())
	{
		if (MoveTo() == 10)
		{
			if (GUtils::GetDistanceInMetres(Pos, *GetDestPos()) <= HalfMetre)
			{
				SetTopStateToFinal();
			}
		}
		UpdateAttitudeToCreature();
		return true;
	}
	StopReactingAndSetState();
	return true;
}

LivingMapCell::LivingMapCell(JustMapXZ& cell)
{
	memset(Occupied, 0, sizeof(Occupied));
	MapCell*        mapCell = cell.ToMap();
	MapCellIterator iter = mapCell->GetFirstIterator();
	while (iter.object != NULL)
	{
		float    metresX = iter.object->Pos.MetersX();
		uint32_t x = (metresX - metresX / MetresPerMapCell) * LIVING_MAP_CELL_SUBCELLS / MetresPerMapCell;
		float    metresZ = iter.object->Pos.MetersZ();
		uint32_t z = (metresZ - metresZ / MetresPerMapCell) * LIVING_MAP_CELL_SUBCELLS / MetresPerMapCell;
		Occupied[x][z / CHAR_BIT] |= 1 << (z % CHAR_BIT);
		iter.object = iter.object->GetMapChild(*iter.cell);
		iter.MoveToMobileObsIfNeededAndPoss();
	}
}

bool32_t LivingMapCell::FindFreePosition(JustMapXZ& cell, const MapCoords& target, MapCoords* position)
{
	float    bestDistance = MaxFloat;
	uint32_t bestX;
	uint32_t bestZ;
	for (uint32_t x = 0; x < LIVING_MAP_CELL_SUBCELLS; x++)
	{
		for (uint32_t z = 0; z < LIVING_MAP_CELL_SUBCELLS; z++)
		{
			if ((Occupied[x][z / CHAR_BIT] & (1 << (z % CHAR_BIT))) == 0)
			{
				MapCoords pos;
				pos.SetMetersX(cell.x * MetresPerMapCell + x * HalfMetre);
				pos.SetMetersZ(cell.z * MetresPerMapCell + z * HalfMetre);
				pos.SetAltitude(0.0f);
				if ((pos.CollideCollideWithFixe() & COLLIDE_TYPE_FIXED) == 0)
				{
					float distance = GUtils::GetDistanceInMetres(pos, target);
					if (distance < bestDistance)
					{
						bestDistance = distance;
						bestX = x;
						bestZ = z;
					}
				}
			}
		}
	}
	if (bestDistance < MaxFloat)
	{
		position->SetMetersX(cell.x * MetresPerMapCell + bestX * HalfMetre);
		position->SetMetersZ(cell.z * MetresPerMapCell + bestZ * HalfMetre);
		return true;
	}
	return false;
}

void Villager::CalculateNearestFreeDestination(MapCoords* destination)
{
	LHStack<JustMapXZ, VILLAGER_CALCULATE_FREE_STACK_SIZE> toVisit;
	LHStack<JustMapXZ, VILLAGER_CALCULATE_FREE_STACK_SIZE> visited;
	const MapCoords&                                       pos = Pos;
	JustMapXZ                                              start(pos);
	toVisit.Push(start);
	for (;;)
	{
		JustMapXZ cell = toVisit.Pop();
		visited.Push(cell);
		LivingMapCell livingCell(cell);
		if (livingCell.FindFreePosition(cell, pos, destination))
		{
			return;
		}
		for (uint32_t direction = 0; direction < ARRAY_SIZE(MapXZDirections); direction++)
		{
			JustMapXZ next(MapXZDirections[direction].x + cell.x, MapXZDirections[direction].z + cell.z);
			bool32_t  found = false;
			for (uint32_t i = 0; i < visited.Size(); i++)
			{
				if (visited[i].x == next.x && visited[i].z == next.z)
				{
					found = true;
				}
			}
			if (found == false)
			{
				toVisit.Push(next);
			}
		}
	}
}

void Villager::UpdateAttitudeToCreature()
{
	UpdateReactiveStateFromAttitudeToCreature();
}

void Villager::UpdateReactiveStateFromAttitudeToCreature()
{
	if (CheckNeededForWorship() == true)
	{
		return;
	}
	Creature* creature = dynamic_cast<Creature*>(ReactionObject.Get());
	if (creature == NULL)
	{
		return;
	}
	if (creature->arena != NULL)
	{
		StopReactingAndSetState();
		Reaction* reaction;
		for (reaction = GGame::g_game->GameLists.reactions.head; reaction != NULL; reaction = reaction->next)
		{
			if (reaction->GetInitiatingObject() == creature->arena)
			{
				break;
			}
		}
		if (reaction != NULL)
		{
			SetupReactToFight(creature->arena, reaction);
		}
		return;
	}
	if (GetTown() == NULL)
	{
		return;
	}
	switch (GetTown()->GetTownAttitudeToCreature(creature))
	{
	case TOWN_ATTITUDE_TO_CREATURE_NONE:
		StopReactingAndSetState();
		break;
	case TOWN_ATTITUDE_TO_CREATURE_FEAR:
		if (GetFinalState() != VILLAGER_STATE_FLEEING_FROM_CREATURE_REACTION)
		{
			SetTopState(VILLAGER_STATE_FLEEING_FROM_CREATURE_REACTION);
		}
		break;
	case TOWN_ATTITUDE_TO_CREATURE_RESPECT: {
		uint8_t state = GetFinalState();
		if (state < VILLAGER_STATE_INITIALISE_RESPECT_CREATURE_REACTION ||
		    (state > VILLAGER_STATE_FINISH_RESPECT_CREATURE_REACTION &&
		     state != VILLAGER_STATE_TURN_TO_FACE_CREATURE_REACTION))
		{
			SetTopState(VILLAGER_STATE_INITIALISE_RESPECT_CREATURE_REACTION);
		}
		break;
	}
	}
}

void Villager::SetupMoveToCreatureReaction(const MapCoords& destination, uint8_t state)
{
	SetupMoveToWithHug(destination, (VILLAGER_STATES)state);
	action.SetState(LIVING_ACTION_INDEX_TOP, VILLAGER_STATE_MOVE_TOWARDS_CREATURE_REACTION);
}

uint32_t GameThingWithPos::AttitudeToCreatureNone()
{
	return TOWN_ATTITUDE_TO_CREATURE_NONE;
}

uint32_t GameThingWithPos::AttitudeToCreatureFear()
{
	return TOWN_ATTITUDE_TO_CREATURE_FEAR;
}

uint32_t GameThingWithPos::AttitudeToCreatureRespect()
{
	return TOWN_ATTITUDE_TO_CREATURE_RESPECT;
}

uint32_t GameThingWithPos::AttitudeToCreatureEating()
{
	return TOWN_ATTITUDE_TO_CREATURE_NONE;
}

uint32_t Living::AttitudeToCreatureEating()
{
	return IsVillager(NULL) ? TOWN_ATTITUDE_TO_CREATURE_FEAR : TOWN_ATTITUDE_TO_CREATURE_NONE;
}
