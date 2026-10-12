#include "GameTimeConstants.h"
#include "AnimalCow.h"

#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalPig.h"
#include "AnimalSheep.h"
#include "AnimalTortoise.h"
#include "AnimalZebra.h"
#include "PuzzleGame.h"
#include "Game3DObject.h" /* For Game3DObject */

#if defined(VERSION_BW1W100)
#define ANIMAL_COW_FILE "C:\\dev\\black\\AnimalCow.cpp"
#elif defined(VERSION_BW1W110)
#define ANIMAL_COW_FILE "C:\\dev\\Black\\AnimalCow.cpp"
#else
#define ANIMAL_COW_FILE "C:\\dev\\MP\\Black\\AnimalCow.cpp"
#endif

uint32_t Cow::GetSaveType()
{
	return GAME_THING_TYPE_COW;
}

uint32_t Goat::GetSaveType()
{
	return GAME_THING_TYPE_GOAT;
}

uint32_t Horse::GetSaveType()
{
	return GAME_THING_TYPE_HORSE;
}

uint32_t Pig::GetSaveType()
{
	return GAME_THING_TYPE_PIG;
}

uint32_t Sheep::GetSaveType()
{
	return GAME_THING_TYPE_SHEEP;
}

uint32_t Tortoise::GetSaveType()
{
	return GAME_THING_TYPE_TORTOISE;
}

uint32_t Zebra::GetSaveType()
{
	return GAME_THING_TYPE_ZEBRA;
}

uint32_t PieceSheep::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

bool32_t PieceSheep::DecideWhatToDo()
{
	return true;
}

uint32_t PieceSheep::ProcessNeeds()
{
	return 0;
}

uint32_t PieceSheep::CheckNeeds()
{
	return 0;
}

Cow::Cow(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Animal(coords, info, age) {}

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

bool32_t Cow::IsOkToBeShepherd()
{
	return true;
}

bool32_t Cow::IsCow(Creature* creature)
{
	return true;
}

uint32_t PieceHorse::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

bool32_t PiecePig::DecideWhatToDo()
{
	return true;
}

uint32_t PiecePig::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

uint32_t PieceTortoise::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}
