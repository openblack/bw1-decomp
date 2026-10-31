#include "GameTimeConstants.h"
#include "AnimalCow.h"
#include "ObjectMovementConstants.h"

#include "Rand.h"
#include "AnimalInfo.h"
#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalPig.h"
#include "AnimalSheep.h"
#include "AnimalTortoise.h"
#include "AnimalZebra.h"
#include "Flock.h"
#include "PuzzleGame.h"
#include "Game3DObject.h" /* For Game3DObject */

#if defined(VERSION_BW1W100)
#define ANIMAL_COW_FILE "C:\\dev\\black\\AnimalCow.cpp"
#elif defined(VERSION_BW1W110)
#define ANIMAL_COW_FILE "C:\\dev\\Black\\AnimalCow.cpp"
#elif defined(VERSION_BW1W130)
#define ANIMAL_COW_FILE "D:\\Work\\Games\\dd\\Black\\AnimalCow.cpp"
#elif defined(VERSION_BW1WCI)
#define ANIMAL_COW_FILE "C:\\dev\\black\\AnimalCow.cpp"
#else
#define ANIMAL_COW_FILE "C:\\dev\\MP\\Black\\AnimalCow.cpp"
#endif

Cow::Cow(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Animal(coords, info, age) {}

Cow* Cow::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Cow* cow = new (ANIMAL_COW_FILE, 29) Cow(coords, info, age);
	if (cow != NULL)
		cow->CallVirtualFunctionsForCreation(coords);
	if (cow->Game3dObject != NULL)
		cow->Game3dObject->SetHumanShadowed(true);
	return cow;
}

int Cow::DecideWhatToDo()
{
	if (CheckNeeds() == ANIMAL_NEEDS_BREED)
	{
		BreedingUrge = ANIMAL_BREEDING_URGE_NONE;
		SetTopState(ANIMAL_STATE_GIVES_BIRTH);
		return true;
	}

	const GAnimalInfo* animalInfo = (const GAnimalInfo*)GetInfo();
	LookForFlocksInSpiral(Pos, animalInfo, GetDomainRadius() * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
	                      animalInfo->CanFlock);

	if (flock.Get() != NULL)
	{
		if (flock->FollowShepherd)
		{
			ANIMAL_BEHAVIOUR_RESULT result = KeepFlockMemberWithinFlockArea();
			if (result == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
			{
				return result;
			}
			SetTopState(ANIMAL_STATE_WANDER);
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}

		if (KeepLeaderWithinDomain() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
		{
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
		if (KeepFlockMemberWithinFlockArea() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
		{
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
	}

	if (ReactToAnimalNeeds() != ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		SetTopState(ANIMAL_STATE_START_WANDER);
	}
	return true;
}

bool32_t Cow::Wander()
{
	if (ReactToAnimalNeeds() == ANIMAL_BEHAVIOUR_RESULT_HANDLED)
	{
		return true;
	}

	if (!PosWithinDomain(Pos, LIVING_DOMAIN_FULL_RADIUS_SCALE))
	{
		SetTopState(ANIMAL_STATE_DECIDE_WHAT_TO_DO);
		return true;
	}

	if (MoveToWander(GetFlockPos(), 0, GetFlockDistance()) == OBJECT_MOVE_RESULT_CHANGED_CELL)
	{
		const GAnimalInfo* animalInfo = (const GAnimalInfo*)GetInfo();
		LookForFlocksInSpiral(Pos, animalInfo, GetDomainRadius() * ANIMAL_FLOCK_SEARCH_RADIUS_MULTIPLIER,
		                      animalInfo->CanFlock);
	}
	return true;
}

ANIMAL_BEHAVIOUR_RESULT Cow::ReactToAnimalNeeds()
{
	MapCoords foodPos;
	foodPos.Clear();
	const GAnimalInfo* animalInfo = (const GAnimalInfo*)GetInfo();

	if (animalInfo->BreedingThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && GetAge() >= animalInfo->TeenAge)
	{
		IncreaseBreed();
		if (BreedingUrge >= animalInfo->BreedingThreshold)
		{
			if (flock.Get() != NULL && flock->MaxMembers > flock->Members.GetSize())
			{
				BreedingUrge = ANIMAL_BREEDING_URGE_NONE;
				SetTopState(ANIMAL_STATE_GIVES_BIRTH);
				return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
			}
			BreedingUrge = ANIMAL_BREEDING_URGE_NONE;
		}
	}

	if (animalInfo->HungerThreshold != ANIMAL_NEED_THRESHOLD_DISABLED && Hunger >= animalInfo->HungerThreshold)
	{
		if (LookForFoodPos(&foodPos))
		{
			SetSpeed(GetInfo()->speed);
			SetupMoveToPos(foodPos, ANIMAL_STATE_START_TO_EAT);
			return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
		}
	}
	else if (animalInfo->TirednessThreshold != ANIMAL_NEED_THRESHOLD_DISABLED &&
	         Tiredness >= animalInfo->TirednessThreshold &&
	         (SleepPos.x != ANIMAL_SLEEP_POS_UNSET || SleepPos.z != ANIMAL_SLEEP_POS_UNSET))
	{
		SetTopState(ANIMAL_STATE_SEEK_SLEEP);
		return ANIMAL_BEHAVIOUR_RESULT_HANDLED;
	}

	return ANIMAL_BEHAVIOUR_RESULT_UNHANDLED;
}

bool32_t Cow::LookForFoodPos(MapCoords* pos)
{
	MapCoords grazePos;
	grazePos.Clear();
	if (LookForGrazePos(Pos, GetDomainRadius(), &grazePos))
	{
		*pos = grazePos;
		return true;
	}
	return false;
}

bool32_t Cow::StartToEat()
{
	Animal::StartToEat();
	TurnsUntilNextStateChange = GRand::GameRand(15, ANIMAL_COW_FILE, 183) + 20;
	return true;
}

Sheep* Sheep::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Sheep* sheep = new (ANIMAL_COW_FILE, 250) Sheep(coords, info, age);
	if (sheep != NULL)
	{
		sheep->CallVirtualFunctionsForCreation(coords);
		sheep->Game3dObject->SetHumanShadowed(true);
	}
	return sheep;
}

PieceSheep* PieceSheep::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceSheep* sheep = new (ANIMAL_COW_FILE, 268) PieceSheep(coords, info, age);
	if (sheep != NULL)
	{
		sheep->CallVirtualFunctionsForCreation(coords);
		sheep->Game3dObject->SetHumanShadowed(true);
	}
	return sheep;
}

Goat* Goat::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Goat* goat = new (ANIMAL_COW_FILE, 287) Goat(coords, info, age);
	if (goat != NULL)
	{
		goat->CallVirtualFunctionsForCreation(coords);
		goat->Game3dObject->SetHumanShadowed(true);
	}
	return goat;
}

Horse* Horse::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Horse* horse = new (ANIMAL_COW_FILE, 303) Horse(coords, info, age);
	if (horse != NULL)
	{
		horse->CallVirtualFunctionsForCreation(coords);
		horse->Game3dObject->SetHumanShadowed(true);
	}
	return horse;
}

PieceHorse* PieceHorse::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceHorse* horse = new (ANIMAL_COW_FILE, 319) PieceHorse(coords, info, age);
	if (horse != NULL)
	{
		horse->CallVirtualFunctionsForCreation(coords);
		horse->Game3dObject->SetHumanShadowed(true);
	}
	return horse;
}

Zebra* Zebra::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Zebra* zebra = new (ANIMAL_COW_FILE, 335) Zebra(coords, info, age);
	if (zebra != NULL)
	{
		zebra->CallVirtualFunctionsForCreation(coords);
		zebra->Game3dObject->SetHumanShadowed(true);
	}
	return zebra;
}

Pig* Pig::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Pig* pig = new (ANIMAL_COW_FILE, 351) Pig(coords, info, age);
	if (pig != NULL)
	{
		pig->CallVirtualFunctionsForCreation(coords);
		pig->Game3dObject->SetHumanShadowed(true);
	}
	return pig;
}

PiecePig* PiecePig::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PiecePig* pig = new (ANIMAL_COW_FILE, 368) PiecePig(coords, info, age);
	if (pig != NULL)
	{
		pig->CallVirtualFunctionsForCreation(coords);
		pig->Game3dObject->SetHumanShadowed(true);
	}
	return pig;
}

Tortoise* Tortoise::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Tortoise* tortoise = new (ANIMAL_COW_FILE, 385) Tortoise(coords, info, age);
	if (tortoise != NULL)
	{
		tortoise->CallVirtualFunctionsForCreation(coords);
		tortoise->Game3dObject->SetHumanShadowed(true);
	}
	return tortoise;
}

PieceTortoise* PieceTortoise::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceTortoise* tortoise = new (ANIMAL_COW_FILE, 401) PieceTortoise(coords, info, age);
	if (tortoise != NULL)
	{
		tortoise->CallVirtualFunctionsForCreation(coords);
		tortoise->Game3dObject->SetHumanShadowed(true);
	}
	return tortoise;
}
