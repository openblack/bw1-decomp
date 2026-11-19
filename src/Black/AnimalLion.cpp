#include "GameTimeConstants.h"
#include "AnimalLion.h"

#include "AnimalInfo.h"   /* For GAnimalInfo */
#include "Flock.h"        /* For Flock */
#include "Game.h"         /* For GGame */
#include "Game3DObject.h" /* For Game3DObject */
#include "GameInfo.h"     /* For GGameInfo */
#include "PuzzleGame.h"   /* For PieceLion */
#include "Reaction.h"     /* For Reaction */

Lion::Lion(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Animal(coords, info, age)
{
	Reaction::CreateReaction(this, REACTION_FLEE_FROM_PREDATOR, GetPlayer(), 0);
}

Lion::~Lion()
{
	Reaction::RemoveAllReactionsInitiatedByObject(this);
}

Lion* Lion::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Lion* lion = NEW(37) Lion(coords, info, age);
	if (lion != NULL)
	{
		lion->CallVirtualFunctionsForCreation(coords);
		lion->Game3dObject->SetHumanShadowed(true);
	}
	return lion;
}

bool32_t Lion::Eat()
{
	bool32_t result = Animal::Eat();
	if (FoodObject == NULL)
	{
		TurnsUntilNextStateChange = 0;
		SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
	}
	return result;
}

int Lion::DecideWhatToDo()
{
	if (CheckNeeds() == ANIMAL_NEEDS_BREED)
	{
		SetTopState(ANIMAL_STATE_GIVES_BIRTH);
		return true;
	}

	if (GGameInfo::Info.GetVisualTime() > LION_SLEEP_TIME)
	{
		SetTopState(ANIMAL_STATE_SEEK_SLEEP);
		Tiredness = GetInfo()->TirednessThreshold;
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}

	const GAnimalInfo* animalInfo = GetInfo();
	LookForFlocksInSpiral(Pos, animalInfo, GetDomainRadius() * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
	                      animalInfo->CanFlock);
	if (KeepLeaderWithinDomain() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	if (KeepFlockMemberWithinFlockArea() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	if (ReactToAnimalNeeds() != ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		SetTopState(ANIMAL_STATE_START_WANDER);
	}
	return true;
}

ANIMAL_BEHAVIOUR_RESULT Lion::ReactToAnimalFoodNeeds()
{
	if (TargetFoodInRange())
	{
		SetSpeed(GetInfo()->ApproachSpeed);
		HuntStartTurn = GGame::g_game->data.GameTurn;
		SetupMoveToTarget(target.Get());
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	if (!FindATargetInSpiral(Pos, GetInfo()->FoodSearchRadius))
	{
		if (FoodPos.IsSet())
		{
			SetSpeed(GetInfo()->ApproachSpeed);
			SetupMoveToPos(MapCoords(&FoodPos), ANIMAL_STATE_START_WANDER);
			FoodPos.Init();
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
	}
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

void Lion::CalculeLairPos()
{
	if (flock->Members.GetLast() == this)
	{
		flock->SetDomainCentrePos(Pos);
	}
}

PieceLion* PieceLion::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceLion* lion = NEW(153) PieceLion(coords, info, age);
	if (lion != NULL)
	{
		lion->CallVirtualFunctionsForCreation(coords);
		lion->Game3dObject->SetHumanShadowed(true);
	}
	return lion;
}

bool32_t PieceLion::DecideWhatToDo()
{
	return true;
}
