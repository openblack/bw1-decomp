#include "GameTimeConstants.h"
#include "AnimalCow.h"

#include "Rand.h"
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

char* Cow::GetDebugText()
{
	return "Animal: Cow";
}

uint32_t Goat::GetSaveType()
{
	return GAME_THING_TYPE_GOAT;
}

char* Goat::GetDebugText()
{
	return "Animal: Goat";
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

char* Sheep::GetDebugText()
{
	return "Animal: Sheep";
}

uint32_t Tortoise::GetSaveType()
{
	return GAME_THING_TYPE_TORTOISE;
}

uint32_t Zebra::GetSaveType()
{
	return GAME_THING_TYPE_ZEBRA;
}

char* Zebra::GetDebugText()
{
	return "Animal: Zebra";
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

char* PieceSheep::GetDebugText()
{
	return "Animal: Sheep for Puzzle";
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

char* Horse::GetDebugText()
{
	return "Animal: Horse";
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

char* Pig::GetDebugText()
{
	return "Animal: Pig";
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

char* Tortoise::GetDebugText()
{
	return "Animal: Tortoise";
}

bool32_t Cow::IsOkToBeShepherd()
{
	return true;
}

bool32_t Cow::IsCow(Creature* creature)
{
	return true;
}

bool32_t Cow::StartToEat()
{
	Animal::StartToEat();
	TurnsUntilNextStateChange = GRand::GameRand(15, ANIMAL_COW_FILE, 183) + 20;
	return true;
}

uint32_t PieceHorse::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

bool32_t PieceHorse::DecideWhatToDo()
{
	return true;
}

uint32_t PieceHorse::ProcessNeeds()
{
	return 0;
}

uint32_t PieceHorse::CheckNeeds()
{
	return 0;
}

char* PieceHorse::GetDebugText()
{
	return "Animal: Horse for Puzzle";
}

bool32_t PiecePig::DecideWhatToDo()
{
	return true;
}

uint32_t PiecePig::ProcessNeeds()
{
	return 0;
}

uint32_t PiecePig::CheckNeeds()
{
	return 0;
}

uint32_t PiecePig::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

char* PiecePig::GetDebugText()
{
	return "Animal: Pig for Puzzle";
}

uint32_t PieceTortoise::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_SHEEP;
}

bool32_t PieceTortoise::DecideWhatToDo()
{
	return true;
}

uint32_t PieceTortoise::ProcessNeeds()
{
	return 0;
}

uint32_t PieceTortoise::CheckNeeds()
{
	return 0;
}

char* PieceTortoise::GetDebugText()
{
	return "Animal: Tortoise for Puzzle";
}

Cow* Cow::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	Cow* cow = new (ANIMAL_COW_FILE, 29) Cow(coords, info, age);
	if (cow != NULL)
		cow->CallVirtualFunctionsForCreation(coords);
	if (cow->Game3dObject != NULL)
		cow->Game3dObject->SetHumanShadowed(true);
	return cow;
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
