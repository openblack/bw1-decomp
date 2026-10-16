#include "MapCellConstants.h"
#include "GameTimeConstants.h"
#include "Animal.h"

#include "AnimalLion.h"
#include "Balance.h"
#include "Landscape.h"
#include "LivingInfo.h"
#include "MapCoords.h"
#include "MapCoordsMeters.h"
#include "Object.h"
#include "PhysicsObject.h"
#include "Rand.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Utils.h"

#if defined(VERSION_BW1W100)
#define FILEPATH "C:\\dev\\black\\AnimalReaction.cpp"
#elif defined(VERSION_BW1W110)
#define FILEPATH "C:\\dev\\Black\\AnimalReaction.cpp"
#else
#define FILEPATH "C:\\dev\\MP\\Black\\AnimalReaction.cpp"
#endif

#define ANIMAL_FLEE_FROM_PREDATOR_DISTANCE     10.0f
#define ANIMAL_FLEE_FLYING_OBJECT_SPEED_FACTOR 2.0f
#define ANIMAL_FLEE_POSITION_SPREAD            8.0f

bool32_t Animal::FleeingFromPredatorReaction()
{
	if (ReactionObject.Get() == NULL)
	{
		return false;
	}
	if (ReactionObject->IsAvailable() == false)
	{
		StopReactingAndSetState();
		return true;
	}
	float distance = GUtils::GetDistanceInMetres(&Pos, &ReactionObject->Pos);
	if (distance > GetReaction()->GetInfo()->MaxDistanceToRunAwayFromObject)
	{
		StopReactingAndSetState();
		return true;
	}
	if (GetReaction()->GetInfo()->MinDistanceToRunAwayFromObject < distance)
	{
		LHPoint pos;
		GLandscape::ConvertMapCoordToLandscapePoint(Pos, pos);
		LHPoint predatorPos;
		GLandscape::ConvertMapCoordToLandscapePoint(ReactionObject->Pos, predatorPos);
		LHPoint away = pos - predatorPos;
		away.Normalise();
		LHPoint movement;
		ReactionObject->GetMovementDirection(&movement);
		movement.Normalise();
	}
	MapCoords fleePos;
	GetFleeingPositionFromMovingObject(&fleePos, ReactionObject.Get(), ANIMAL_FLEE_FROM_PREDATOR_DISTANCE);
	if (fleePos.InBounds())
	{
		SetSpeed(GetInfo()->FleeingSpeed);
		SetupMoveToPos(fleePos, ANIMAL_STATE_FLEEING_FROM_OBJECT_REACTION);
	}
	return true;
}

uint8_t Animal::ReactToFirePriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_REACT_TO_FIRE].priority;
}

uint8_t Animal::ReactToFallingTreePriority(Reaction* reaction, Reaction* current_reaction)
{
	return GInfoArrays::ReactionInfos[REACTION_AVOID_FALLING_TREE].priority;
}

uint8_t Lion::FleeFromPredatorPriority(Reaction* reaction, Reaction* current_reaction)
{
	Living* predator = dynamic_cast<Living*>(reaction->GetInitiatingObject());
	if (predator != NULL && ((const GLivingInfo*)predator->info)->Strength <= ((const GLivingInfo*)info)->Strength)
	{
		return 0;
	}
	return GInfoArrays::ReactionInfos[REACTION_FLEE_FROM_PREDATOR].priority;
}

void Animal::SetupFleeFromPredator(GameThingWithPos* thing, Reaction* reaction)
{
	AddReaction(reaction, (VILLAGER_STATES)ANIMAL_STATE_FLEEING_FROM_PREDATOR_REACTION);
	ReactionObject = thing;
}

void Animal::SetupReactToCreature(GameThingWithPos* thing, Reaction* reaction)
{
	SetupFleeFromObject(thing, reaction);
}

void Animal::SetupReactToFire(GameThingWithPos* thing, Reaction* reaction)
{
	SetupFleeFromObject(thing, reaction);
}

void Animal::SetupReactToFallingTree(GameThingWithPos* thing, Reaction* reaction)
{
	SetupFleeFromObject(thing, reaction);
}

void Animal::SetupReactToFlyingObject(GameThingWithPos* thing, Reaction* reaction)
{
	PhysicsObject* physicsObject = PhysicsObject::SearchForPhysicsObject(dynamic_cast<Object*>(thing));
	if (physicsObject != NULL)
	{
		float speed = physicsObject->Physics.Velocity.GetNorme();
		if (GUtils::GetDistanceInMetres(Pos, thing->Pos) < speed * ANIMAL_FLEE_FLYING_OBJECT_SPEED_FACTOR)
		{
			AddReaction(reaction, (VILLAGER_STATES)ANIMAL_STATE_FLEEING_FROM_OBJECT_REACTION);
			ReactionObject = thing;
		}
	}
}

void Animal::GetFleeingPositionFromMovingObject(MapCoords* pos, GameThingWithPos* object, float distance)
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
		offset.x = side.x * distance + GRand::GameFloatRand(ANIMAL_FLEE_POSITION_SPREAD, FILEPATH, 204) -
		           ANIMAL_FLEE_POSITION_SPREAD / 2;
		offset.z = side.z * distance + GRand::GameFloatRand(ANIMAL_FLEE_POSITION_SPREAD, FILEPATH, 205) -
		           ANIMAL_FLEE_POSITION_SPREAD / 2;
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
