#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "Living.h"

#include "ColourConstants.h" /* For White */

#include <math.h> /* For sqrt */

#include <Lionhead/LH3DLib/development/LH3DIsland.h> /* For LH3DIsland::GetAltitude */

#include "Animal.h"
#include "Balance.h"
#include "Ball.h"
#include "Creature.h"
#include "CreatureActionInfo.h"
#include "CreatureMental.h"
#include "Game.h"
#include "MapCoords.h"
#include "MapCoordsMeters.h"
#include "MobileWallHugInfo.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Spell.h"
#include "Town.h"
#include "Utils.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\LivingReaction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\LivingReaction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\LivingReaction.cpp"
#endif

#define LIVING_FLEE_FROM_SPELL_PRIORITY_DISTANCE     600000
#define LIVING_FLEE_FROM_SPELL_PRIORITY_BONUS        100
#define LIVING_PREDATOR_CHASING_SPEED                5.0f
#define LIVING_QUITE_IMPRESSIVE_CREATURE_SCALE       2.0f
#define LIVING_VERY_IMPRESSIVE_CREATURE_SCALE        3.0f
#define LIVING_FEARED_CREATURE_SCALE                 4.0f
#define LIVING_QUITE_IMPRESSIVE_CREATURE_AGAIN_SCALE 0.5f
#define LIVING_VERY_IMPRESSIVE_CREATURE_AGAIN_SCALE  (1.0f / 3.0f)
#define LIVING_FLEE_FROM_MOVING_OBJECT_DISTANCE      10.0f
#define LIVING_TRAVELLING_TOWARDS_MIN_DOT            0.8f
#define LIVING_FLEE_SIDEWAYS_RAND_RANGE              8.0f

void Living::AddReaction(Reaction* reaction, VILLAGER_STATES state)
{
	if (this->reaction.Get() == NULL)
	{
		StorePreviousState();
	}
	SetTopState(state);
	if (IsDancing())
	{
		RemoveFromDance(true);
	}
	this->reaction = reaction;
	reaction->ReactingLivings.Push(this);
}

uint32_t Living::GetGameTurnReactionStarted(REACTION reaction)
{
	for (LHLinkedNode<ReactionDoneWhen*>* node = reaction_done_when.Head.Get(); node != NULL; node = node->next.Get())
	{
		ReactionDoneWhen* doneWhen = node->payload;
		if (doneWhen->ReactionType == reaction)
		{
			return doneWhen->GameTurn;
		}
	}
	return 0;
}

void Living::SetGameTurnReactionFinished(REACTION reaction)
{
	for (LHLinkedNode<ReactionDoneWhen*>* node = reaction_done_when.Head.Get(); node != NULL; node = node->next.Get())
	{
		ReactionDoneWhen* doneWhen = node->payload;
		if (doneWhen->ReactionType == reaction)
		{
			doneWhen->GameTurn = GGame::g_game->data.GameTurn;
			return;
		}
	}
}

void Living::AddMoveToPosWithFootpathReaction(Reaction* reaction, GameThingWithPos& thing, uint8_t state,
                                              int stop_dancing)
{
	if (this->reaction.Get() == NULL)
	{
		StorePreviousState();
	}
	if (stop_dancing && IsDancing())
	{
		RemoveFromDance(true);
	}
	SetupMoveToOnFootpath(thing, thing.GetArrivePos(), state);
	this->reaction = reaction;
	reaction->ReactingLivings.Push(this);
}

void Living::AddMoveToPosReaction(Reaction* reaction, const MapCoords& pos, uint8_t state, int stop_dancing)
{
	if (this->reaction.Get() == NULL)
	{
		StorePreviousState();
	}
	if (stop_dancing && IsDancing())
	{
		RemoveFromDance(true);
	}
	SetupMoveToWithHug(pos, state);
	this->reaction = reaction;
	reaction->ReactingLivings.Push(this);
}

void Living::StopReacting()
{
	if (reaction.Get() != NULL)
	{
		reaction->ReactingLivings.Remove(this);
		SetGameTurnReactionFinished(reaction->type);
		reaction = NULL;
	}
	ReactionObject = NULL;
}

void Living::StopReactingAndSetState()
{
	ResetStateAfterReacting();
	if (reaction.Get() != NULL)
	{
		StopReacting();
	}
}

bool32_t Living::IsAvailableForReaction(REACTION reaction)
{
	uint8_t state = GetFinalState();
	if (IsFunctional() && !(Flags & GAME_THING_WITH_POS_FLAG_CONTROLLED_BY_SCRIPT) && !IsBeingUsedInTheDanceEditor() &&
	    state != VILLAGER_STATE_DEAD && state != VILLAGER_STATE_DROWNING && state != VILLAGER_STATE_DOWNED &&
	    state != VILLAGER_STATE_BEING_EATEN && state != VILLAGER_STATE_DYING &&
	    state != VILLAGER_STATE_WAIT_FOR_ANIMATION && state != VILLAGER_STATE_IN_DANCE &&
	    (status & LIVING_STATUS_DYING) != LIVING_STATUS_DYING && !(Flags & GAME_THING_WITH_POS_FLAG_ON_STRUCTURE))
	{
		return true;
	}
	return false;
}

void Living::SetupFleeFromObject(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
	ReactionObject = thing;
}

void Living::SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction)
{
	SetupFleeFromObject(thing, reaction);
}

void Living::SetupLookAtObject(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	ReactionObject = thing;
}

void Living::SetupLookAtSpell(GameThingWithPos* thing, Reaction* reaction)
{
	SetupLookAtObject(thing, reaction);
}

void Living::SetupLookAtNiceSpell(GameThingWithPos* thing, Reaction* reaction)
{
	SetupLookAtObject(thing, reaction);
}

void Living::SetupFollowObject(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_FOLLOWING_OBJECT_REACTION);
	ReactionObject = thing;
}

void Living::SetupReactToCreature(GameThingWithPos* thing, Reaction* reaction)
{
	Object* object = dynamic_cast<Object*>(thing);
	if (object->IsScary())
	{
		AddReaction(reaction, VILLAGER_STATE_FLEEING_FROM_OBJECT_REACTION);
		ReactionObject = object;
		return;
	}
	AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	ReactionObject = object;
}

void Living::SetupReactToFood(GameThingWithPos* thing, Reaction* reaction)
{
	Object* object = dynamic_cast<Object*>(thing);
	AddReaction(reaction, VILLAGER_STATE_GOTO_FOOD_REACTION);
	ReactionObject = object;
}

void Living::SetupReactToMagicTree(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION);
	ReactionObject = thing;
}

void Living::SetupReactToFlyingObject(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_LOOK_AT_FLYING_OBJECT_REACTION);
	ReactionObject = thing;
}

void Living::SetupReactToBall(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, VILLAGER_STATE_GOTO_PICKUP_BALL_REACTION);
	ReactionObject = thing;
}

void Living::SetupReactToCreatureGift(GameThingWithPos* thing, Reaction* reaction)
{
	SetupReactToFood(thing, reaction);
}

void Living::SetupReactToNewBuilding(GameThingWithPos* thing, Reaction* reaction) {}

uint8_t Living::FleeFromObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_OBJECT].priority;
}

uint8_t Living::FleeFromPredatorPriority(Reaction* reaction, Reaction* current_reaction)
{
	GameThingWithPos* predator = reaction->GetInitiatingObject();
	if (predator != NULL && predator->IsAnimal())
	{
		Animal* animal = (Animal*)predator;
		if (animal->speed <= ((const GMobileWallHugInfo*)animal->info)->FastSpeedThreshold)
		{
			return 0;
		}
	}
	return GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_PREDATOR].priority;
}

uint8_t Living::LookAtObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_LOOK_AT_OBJECT].priority;
}

uint8_t Living::FollowObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_FOLLOW_OBJECT].priority;
}

uint8_t Living::FleeFromSpellPriority(Reaction* reaction, Reaction* current_reaction)
{
	int distance = GUtils::FastDistance(Pos, reaction->GetInitiatingObject()->Pos);
	if (distance < LIVING_FLEE_FROM_SPELL_PRIORITY_DISTANCE)
	{
		return (LIVING_FLEE_FROM_SPELL_PRIORITY_DISTANCE - distance) * LIVING_FLEE_FROM_SPELL_PRIORITY_BONUS /
		           LIVING_FLEE_FROM_SPELL_PRIORITY_DISTANCE +
		       GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_SPELL].priority;
	}
	return GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_SPELL].priority;
}

uint8_t Living::LookAtSpellPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_LOOK_AT_SPELL].priority;
}

uint8_t Living::LookAtNiceSpellPriority(Reaction* reaction, Reaction* current_reaction)
{
	Spell* spell = dynamic_cast<Spell*>(reaction->GetInitiatingObject());
	if (spell != NULL && spell->creator == this)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_LOOK_AT_NICE_SPELL].priority;
}

uint8_t Living::FollowSpellPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_FOLLOW_SPELL].priority;
}

uint8_t Living::ReactToCreaturePriority(Reaction* reaction, Reaction* current_reaction)
{
	if (IsDancing())
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_CREATURE].priority;
}

uint8_t Living::ReactToFoodPriority(Reaction* reaction, Reaction* current_reaction)
{
	Object* food = dynamic_cast<Object*>(reaction->GetInitiatingObject());
	if (!(food->Flags &
	      (GAME_THING_WITH_POS_FLAG_UNAVAILABLE_FOR_STATE_CHANGE | GAME_THING_WITH_POS_FLAG_IN_PHYSICS)) &&
	    food->GetResource(RESOURCE_TYPE_FOOD) &&
	    GUtils::GetDistanceInMetres(&Pos, &food->Pos) <= reaction->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		if (IsInterestedInFoodObject(food))
		{
			return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FOOD].priority;
		}
		return 0;
	}
	return 0;
}

uint8_t Living::ReactToWoodPriority(Reaction* reaction, Reaction* current_reaction)
{
	Object* wood = dynamic_cast<Object*>(reaction->GetInitiatingObject());
	if (wood->IsInMagicHand())
	{
		return 0;
	}
	if (IsInterestedInWoodObject(wood) == true)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_WOOD].priority;
	}
	return 0;
}

uint8_t Living::ReactToMagicTreePriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_TREE].priority;
}

uint8_t Living::ReactToFlyingObjectPriority(Reaction* reaction, Reaction* current_reaction)
{
	uint8_t state = action.states[LIVING_ACTION_INDEX_TOP];
	if (state != VILLAGER_STATE_FLYING && state != VILLAGER_STATE_LANDED)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FLYING_OBJECT].priority;
	}
	return 0;
}

uint8_t Living::ReactToBallPriority(Reaction* reaction, Reaction* current_reaction)
{
	Ball* ball = dynamic_cast<Ball*>(reaction->GetInitiatingObject());
	if (ball->IsBallFree() == true)
	{
		return GInfoArrays::ReactionInfos[REACTION_REACT_TO_BALL].priority;
	}
	return 0;
}

uint8_t Living::ReactToMagicShieldPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_MAGIC_SHIELD].priority;
}

uint8_t Living::ReactToCreatureGiftPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_GIFT_FROM_CREATURE].priority;
}

uint8_t Living::ReactToNewBuildingPriority(Reaction* reaction, Reaction* current_reaction)
{
	if (IsDancing())
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_NEW_BUILDING].priority;
}

uint8_t Living::ReactToFaintingPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_FAINTING].priority;
}

uint8_t Living::ReactToConfusedPriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_CONFUSED].priority;
}

uint32_t Living::StandardNumGameTurnsToReactFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	float maxDistance = MetresPerMapCell + GInfoArrays::ReactionInfos[reaction].MaxReactionDistance;
	float scale =
		(maxDistance - distance) / maxDistance * GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance * 0.5f +
		1.0f;
	return (uint32_t)(scale * GInfoArrays::ReactionInfos[reaction].NumGameTurnsForNormalThingsToReact);
}

uint32_t Living::StandardNumGameTurnsBeforeReactingAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                 float distance)
{
	float maxDistance = MetresPerMapCell + GInfoArrays::ReactionInfos[reaction].MaxReactionDistance;
	float scale =
		(maxDistance - distance) / maxDistance * GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance * 0.5f +
		1.0f;
	return (uint32_t)(scale * GInfoArrays::ReactionInfos[reaction].NumGameTurnsForNormalThingsBeforeReactingAgain);
}

uint32_t Living::NumGameTurnsToReactToPredatorFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	Animal* predator = dynamic_cast<Animal*>(thing);
	if (predator == NULL)
	{
		return 0;
	}
	if (action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_LOOKING_AT_OBJECT_REACTION &&
	    predator->GetSpeedInMetresPerSecond() > LIVING_PREDATOR_CHASING_SPEED && IsObjectTravellingTowardsMe(predator))
	{
		return 0;
	}
	return StandardNumGameTurnsToReactFunction(thing, reaction, distance);
}

uint32_t Living::NumGameTurnsBeforeReactingAgainToPredatorFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                   float distance)
{
	Animal* predator = dynamic_cast<Animal*>(thing);
	if (predator != NULL && predator->GetSpeedInMetresPerSecond() <= LIVING_PREDATOR_CHASING_SPEED &&
	    GUtils::GetDistanceInMetres(&Pos, &predator->Pos) >=
	        GInfoArrays::ReactionInfos[reaction].MinDistanceToRunAwayFromObject)
	{
		return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
	}
	return 0;
}

uint32_t Living::NumGameTurnsToReactToBurningObjectFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	return StandardNumGameTurnsToReactFunction(thing, reaction, distance);
}

uint32_t Living::NumGameTurnsBeforeReactingAgainToBurningObjectFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                        float distance)
{
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
}

uint32_t Living::NumGameTurnsToReactToShieldFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	return StandardNumGameTurnsToReactFunction(thing, reaction, distance);
}

uint32_t Living::NumGameTurnsBeforeReactingToShieldAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                 float distance)
{
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
}

uint32_t Living::NumGameTurnsToReactToCreatureFunction(GameThingWithPos* thing, uint32_t reaction, float distance)
{
	float     maxDistance = MetresPerMapCell + GInfoArrays::ReactionInfos[reaction].MaxReactionDistance;
	float     importance = GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance;
	float     scale = (maxDistance - distance) * importance / maxDistance + (1.0f - importance);
	Creature* creature = dynamic_cast<Creature*>(thing);
	if (creature == NULL)
	{
		return 0;
	}
	switch (creature->GetImpressiveType())
	{
	case IMPRESSIVE_TYPE_CREATURE_QUITE_IMPRESSIVE:
		scale *= LIVING_QUITE_IMPRESSIVE_CREATURE_SCALE;
		break;
	case IMPRESSIVE_TYPE_CREATURE_VERY_IMPRESSIVE:
		scale *= LIVING_VERY_IMPRESSIVE_CREATURE_SCALE;
		break;
	}
	return (
		uint32_t)(GInfoArrays::ReactionInfos[reaction].NumGameTurnsForNormalThingsToReact *
	              (GetTown() != NULL && GetTown()->GetTownAttitudeToCreature(creature) == TOWN_ATTITUDE_TO_CREATURE_FEAR
	                   ? scale * LIVING_FEARED_CREATURE_SCALE
	                   : scale));
}

uint32_t Living::NumGameTurnsBeforeReactingAgainToCreatureFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                   float distance)
{
	float importance = GInfoArrays::ReactionInfos[reaction].HowImportantIsDistance;
	float scale =
		importance * distance / (MetresPerMapCell + GInfoArrays::ReactionInfos[reaction].MaxReactionDistance) +
		(1.0f - importance);
	Creature* creature = dynamic_cast<Creature*>(thing);
	switch (creature->GetImpressiveType())
	{
	case IMPRESSIVE_TYPE_CREATURE_QUITE_IMPRESSIVE:
		scale *= LIVING_QUITE_IMPRESSIVE_CREATURE_AGAIN_SCALE;
		break;
	case IMPRESSIVE_TYPE_CREATURE_VERY_IMPRESSIVE:
		scale *= LIVING_VERY_IMPRESSIVE_CREATURE_AGAIN_SCALE;
		break;
	}
	CREATURE_ACTION creatureAction = creature->mind->agenda.plans[0].creature_action;
	if (creatureAction < NUM_CREATURE_ACTIONS &&
	    CreatureActionInfo::g_CreatureActionInfos[creatureAction].ImpressiveType !=
	        IMPRESSIVE_TYPE_CREATURE_NOT_IMPRESSIVE)
	{
		return 0;
	}
	if (GetTown() != NULL)
	{
		int attitude = GetTown()->GetTownAttitudeToCreature(creature);
		if (attitude >= TOWN_ATTITUDE_TO_CREATURE_FEAR && attitude <= TOWN_ATTITUDE_TO_CREATURE_RESPECT)
		{
			return 0;
		}
	}
	return (uint32_t)(GInfoArrays::ReactionInfos[reaction].NumGameTurnsForNormalThingsBeforeReactingAgain * scale);
}

bool32_t Living::FleeingFromObjectReaction()
{
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	if (GetReaction() != NULL && GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos) <=
	                                 GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		return FleeFromObjectIfComingTowardsMe(ReactionObject.Get(),
		                                       VILLAGER_STATE_FLEEING_AND_LOOKING_AT_OBJECT_REACTION,
		                                       VILLAGER_STATE_FLEEING_AND_LOOKING_AT_OBJECT_REACTION);
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Living::FleeFromObjectIfComingTowardsMe(GameThingWithPos* object, VILLAGER_STATES look_state,
                                                 VILLAGER_STATES flee_state)
{
	float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	if (distance > GetReaction()->GetInfo()->MinDistanceToRunAwayFromObject && !IsObjectTravellingTowardsMe(object))
	{
		SetTopState(look_state);
		LookAtObject(object, LIVING_LOOK_AT_SPEED_NORMAL);
		return true;
	}
	MapCoords pos;
	GetFleeingPositionFromMovingObject(&pos, object, LIVING_FLEE_FROM_MOVING_OBJECT_DISTANCE);
	if (pos.InBounds())
	{
		SetupMoveToWithHug(pos, flee_state);
	}
	return true;
}

bool32_t Living::IsObjectTravellingTowardsMe(GameThingWithPos* object)
{
	LHPoint away = Pos.GetLHPoint() - object->Pos.GetLHPoint();
	away.Normalise();
	LHPoint direction;
	object->GetMovementDirection(&direction);
	direction.Normalise();
	if (direction * away < LIVING_TRAVELLING_TOWARDS_MIN_DOT)
	{
		return false;
	}
	return true;
}

void Living::GetFleeingPositionFromStationaryObject(MapCoords* pos, GameThingWithPos* object, float distance)
{
	LHPoint objectPos = object->Pos.GetLHPoint();
	LHPoint myPos = Pos.GetLHPoint();
	LHPoint away = myPos - objectPos;
	away.y = 0.0f;
	away.SetSize(distance);
	away += myPos;
	*pos = MapCoords(away);
}

void Living::GetFleeingPositionFromMovingObject(MapCoords* pos, GameThingWithPos* object, float distance)
{
	LHPoint movement;
	object->GetMovementDirection(&movement);
	if (movement.GetNorme() > 0.0f)
	{
		*pos = Pos;
		LHPoint away;
		away.x = Pos.MetersX() - object->Pos.MetersX();
		away.z = Pos.MetersZ() - object->Pos.MetersZ();
		LHPoint side;
		side.x = -movement.z;
		side.z = movement.x;
		side.FastNormalizeInline();
		LHPoint offset;
		offset.x = side.x * distance + GRand::GameFloatRand(LIVING_FLEE_SIDEWAYS_RAND_RANGE, FILEPATH, 753) -
		           LIVING_FLEE_SIDEWAYS_RAND_RANGE / 2;
		offset.z = side.z * distance + GRand::GameFloatRand(LIVING_FLEE_SIDEWAYS_RAND_RANGE, FILEPATH, 754) -
		           LIVING_FLEE_SIDEWAYS_RAND_RANGE / 2;
		if (side.z * away.z + side.x * away.x >= 0.0f)
		{
			pos->SetMetersX(pos->MetersX() + offset.x);
			pos->SetMetersZ(pos->MetersZ() + offset.z);
		}
		else
		{
			pos->SetMetersX(pos->MetersX() - offset.x);
			pos->SetMetersZ(pos->MetersZ() - offset.z);
		}
		return;
	}
	GetFleeingPositionFromStationaryObject(pos, object, distance);
}

bool32_t Living::LookingAtObjectReaction()
{
	if (GetReaction() == NULL)
	{
		return false;
	}
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	if (GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos) >
	    GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		StopReactingAndSetState();
		return true;
	}
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	return true;
}

bool32_t Living::FleeingAndLookingAtObjectReaction()
{
	return LookingAtObjectReaction();
}

bool32_t Living::FollowingObjectReaction()
{
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	if (distance > GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		long angle = GUtils::GetAngleFromXZ(Pos, ReactionObject->Pos);
		long dx = GUtils::GetXByAngleHugeDistance(
			angle, GUtils::MetersToWholeX(distance - GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject));
		long dz = GUtils::GetZByAngleHugeDistance(
			angle, GUtils::MetersToWholeZ(distance - GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject));
		MapCoords destination = Pos;
		destination.x += dx;
		destination.z += dz;
		SetupMoveToWithHug(destination, VILLAGER_STATE_FOLLOWING_OBJECT_REACTION);
		return true;
	}
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	return true;
}

bool32_t Living::InspectObjectReaction()
{
	return LookingAtObjectReaction();
}

bool32_t Living::GotoFoodReaction()
{
	Object* food = dynamic_cast<Object*>(ReactionObject.Get());
	if (food != NULL && food->IsAvailable())
	{
		SetupMoveToWithHug(food->GetWorkingPos(this), VILLAGER_STATE_ARRIVES_AT_FOOD_REACTION);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Living::GotoWoodReaction()
{
	Object* wood = dynamic_cast<Object*>(ReactionObject.Get());
	if (wood != NULL && wood->IsAvailable())
	{
		SetupMoveToWithHug(wood->GetWorkingPos(this), VILLAGER_STATE_ARRIVES_AT_WOOD_REACTION);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Living::ArrivesAtFoodReaction()
{
	StopReactingAndSetState();
	return true;
}

bool32_t Living::GotoPickupBallReaction()
{
	Object* ball = dynamic_cast<Object*>(ReactionObject.Get());
	if (ball != NULL && ball->IsAvailable())
	{
		SetupMoveToPos(ReactionObject->Pos, VILLAGER_STATE_ARRIVES_AT_PICKUP_BALL_REACTION);
		return true;
	}
	StopReactingAndSetState();
	return true;
}

bool32_t Living::ArrivesAtPickupBallReaction()
{
	Ball* ball = dynamic_cast<Ball*>(ReactionObject.Get());
	if (ball != NULL)
	{
		Reaction::RemoveAllReactionsInitiatedByObject(ball);
	}
	return true;
}

bool32_t Living::LookAtFlyingObjectReaction()
{
	LookAtObject(ReactionObject.Get(), LIVING_LOOK_AT_SPEED_NORMAL);
	SetAnim(1);
	return true;
}

void Living::DrawWallHugDebug() {}

bool Living::AmILikelyToMove()
{
	return action.states[LIVING_ACTION_INDEX_TOP] == VILLAGER_STATE_MOVE_TO_POS;
}

uint32_t Living::StandardNumGameTurnsBeforeReactingToWoodAgainFunction(GameThingWithPos* thing, uint32_t reaction,
                                                                       float distance)
{
	return StandardNumGameTurnsBeforeReactingAgainFunction(thing, reaction, distance);
}
