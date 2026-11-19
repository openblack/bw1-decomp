#include "GameTimeConstants.h"
#include "AnimalWolf.h"
#include "PuzzleGame.h"

#include "AnimalInfo.h"
#include "Flock.h"
#include "Game.h"
#include "GameInfo.h"
#include "LivingInfo.h"
#include "ObjectMovementConstants.h"
#include "Town.h"
#include "Utils.h"
#include "Game3DObject.h" /* For Game3DObject */

Wolf* Wolf::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Wolf* wolf = NEW(29) Wolf(coords, info, age);
	if (wolf != NULL)
	{
		wolf->CallVirtualFunctionsForCreation(coords);
		wolf->Game3dObject->SetHumanShadowed(true);
	}
	return wolf;
}

bool32_t Wolf::DecideWhatToDo()
{
	if (flock.Get() != NULL && ReactToAnimalNeeds() != ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		SetupMoveToPos(GUtils::GetRandomPos(flock->Pos, flock->Members.GetSize()), ANIMAL_STATE_HIDE_IN_LAIR);
		SetSpeed(GetDefaultSpeed());
	}
	return true;
}

void Wolf::CalculeLairPos()
{
	if (flock.Get() != NULL && flock->FeedingDisabled)
	{
		return;
	}
	if (flock.Get() != NULL && flock->Members.GetLast() != this)
	{
		return;
	}
	if (flock.Get() != NULL && IsInScript())
	{
		flock->SetDomainCentrePos(Pos);
		return;
	}
	if (flock.Get() == NULL)
	{
		return;
	}

	BigForest* nearestBigForest = NULL;
	for (BigForest* bigForest = GGame::g_game->GameLists.BigForests.Get(); bigForest != NULL;
	     bigForest = bigForest->next.Get())
	{
		if (nearestBigForest == NULL)
		{
			nearestBigForest = bigForest;
		}
		else if ((unsigned long)GUtils::GetDistance(Pos, nearestBigForest->Pos) >
		         (unsigned long)GUtils::GetDistance(Pos, bigForest->Pos))
		{
			nearestBigForest = bigForest;
		}
	}
	if (nearestBigForest != NULL)
	{
		flock->SetDomainCentrePos(nearestBigForest->Pos);
		return;
	}

	Forest* bestForest = NULL;
	float   bestDesire = 0.0f;
	for (Forest* forest = GGame::g_game->GameLists.forests.Get(); forest != NULL; forest = forest->next.Get())
	{
		if (bestForest == NULL)
		{
			bestForest = forest;
		}
		else
		{
			float desire = forest->GetDesireDistanceModifierForLair(
				(float)(unsigned long)GUtils::GetDistance(Pos, forest->Pos), WOLF_LAIR_FOREST_MAX_DISTANCE);
			if (bestDesire < desire)
			{
				bestForest = forest;
				bestDesire = desire;
			}
		}
	}
	if (bestForest != NULL && bestForest->Trees0.GetHead() != NULL)
	{
		flock->SetDomainCentrePos(((Tree*)bestForest->Trees0.GetHead()->GetData())->Pos);
		return;
	}

	Tree* nearestTree = NULL;
	bool  firstTree = true;
	long  nearestDistance;
	for (LHLinkedNode<Tree*>* node = GGame::g_game->GameLists.trees.GetStart(); node != NULL; node = node->next.Get())
	{
		Tree* tree = node->payload;
		if (firstTree)
		{
			nearestTree = tree;
			nearestDistance = GUtils::GetDistance(Pos, tree->Pos);
			firstTree = false;
		}
		else
		{
			long distance = GUtils::GetDistance(Pos, tree->Pos);
			if (nearestDistance > distance)
			{
				nearestTree = tree;
				nearestDistance = distance;
			}
		}
	}
	if (nearestTree != NULL)
	{
		flock->SetDomainCentrePos(nearestTree->Pos);
	}
	else
	{
		flock->SetDomainCentrePos(Pos);
	}
}

bool32_t Wolf::SeekLair()
{
	return true;
}

ANIMAL_BEHAVIOUR_RESULT Wolf::ReactToAnimalNeeds()
{
	switch (CheckNeeds())
	{
	case ANIMAL_NEEDS_FOOD:
		if (flock.Get() == NULL || !flock->FeedingDisabled)
		{
			return ReactToAnimalFoodNeeds();
		}
		break;
	case ANIMAL_NEEDS_SLEEP:
		if (flock.Get() != NULL)
		{
			SetupMoveToPos(flock->Pos, ANIMAL_STATE_SLEEPS);
			SetSpeed(GetDefaultSpeed());
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
		break;
	case ANIMAL_NEEDS_BREED:
		SetTopState(ANIMAL_STATE_GIVES_BIRTH);
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}
	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

bool32_t Wolf::ExitSeekLair(uint8_t state)
{
	return true;
}

bool32_t Wolf::HideInLair()
{
	if (Tiredness > 0)
	{
		Tiredness -= WOLF_LAIR_TIREDNESS_RECOVERY;
		return true;
	}
	if (flock.Get() != NULL && flock->Members.GetLast() == this && IsInScript() &&
	    ReactToAnimalFoodNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return true;
	}
	if (CheckNeeds() != ANIMAL_NEEDS_FOOD)
	{
		return true;
	}
	if (GGameInfo::Info.GetVisualTime() <= WOLF_LAIR_MIN_VISUAL_TIME)
	{
		return true;
	}
	if (flock.Get() == NULL || flock->FeedingDisabled)
	{
		return true;
	}

	Flock*        nearestFlock = NULL;
	unsigned long nearestDistance = flock->DomainRadius + 1;
	for (LHLinkedNode<Flock*>* node = GGame::g_game->GameLists.flocks.GetStart(); node != NULL; node = node->next.Get())
	{
		Flock* other = node->payload;
		if (other->Members.GetLast() != NULL &&
		    ((const GLivingInfo*)other->Members.GetLast()->info)->Strength <= ((const GLivingInfo*)info)->Strength &&
		    other->Pos.Altitude() <= WOLF_LAIR_MAX_FLOCK_ALTITUDE)
		{
			unsigned long distance = (unsigned long)GUtils::GetDistance(Pos, other->GetPos()) / WOLF_LAIR_DISTANCE_UNIT;
			if (distance <= flock->DomainRadius && distance < nearestDistance)
			{
				nearestDistance = distance;
				nearestFlock = other;
			}
		}
	}
	if (nearestFlock != NULL)
	{
		SetSpeed(GetDefaultSpeed());
		SetupMoveToPos(GUtils::GetRandomPos(nearestFlock->Pos, flock->Members.GetSize()), ANIMAL_STATE_START_WANDER);
		return true;
	}

	Town* nearestTown = NULL;
	for (LHLinkedNode<Town*>* townNode = GGame::g_game->GameLists.TownList.GetStart(); townNode != NULL;
	     townNode = townNode->next.Get())
	{
		Town* town = townNode->payload;
		if (nearestTown == NULL)
		{
			nearestTown = town;
		}
		else if ((unsigned long)GUtils::GetDistance(Pos, nearestTown->Pos) >
		         (unsigned long)GUtils::GetDistance(Pos, town->Pos))
		{
			nearestTown = town;
		}
	}
	if (nearestTown != NULL)
	{
		SetSpeed(GetDefaultSpeed());
		SetupMoveToPos(GUtils::GetRandomPos(nearestTown->Pos, flock->Members.GetSize()), ANIMAL_STATE_START_WANDER);
	}
	return true;
}

bool32_t Wolf::MoveToPos()
{
	return Animal::MoveToPos();
}

bool32_t Wolf::ExitHideInLair(uint8_t state)
{
	return true;
}

bool32_t Wolf::ExitWander(uint8_t state)
{
	return true;
}

bool32_t Wolf::WanderInFlock(uint8_t state)
{
	if (MoveToWander(GetFlockPos(), 0, GetFlockDistance()) == OBJECT_MOVE_RESULT_CHANGED_CELL)
	{
		const GAnimalInfo* animalInfo = GetInfo();
		LookForFlocksInSpiral(Pos, animalInfo, GetDomainRadius() * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
		                      animalInfo->CanFlock);
	}
	return true;
}

bool32_t Wolf::Wander()
{
	return Animal::Wander();
}

PieceWolf* PieceWolf::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceWolf* wolf = NEW(438) PieceWolf(coords, info, age);
	if (wolf != NULL)
	{
		wolf->CallVirtualFunctionsForCreation(coords);
		wolf->Game3dObject->SetHumanShadowed(true);
	}
	return wolf;
}

bool32_t PieceWolf::DecideWhatToDo()
{
	return true;
}
