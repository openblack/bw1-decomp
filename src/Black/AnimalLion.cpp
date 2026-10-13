#include "GameTimeConstants.h"
#include "AnimalLion.h"
#include "PuzzleGame.h"

#include "Game3DObject.h" /* For Game3DObject */
#include "PuzzleGame.h"   /* For PieceLion */
#include "Reaction.h"     /* For Reaction */

#if defined(VERSION_BW1W100)
#define ANIMAL_LION_FILE "C:\\dev\\black\\AnimalLion.cpp"
#elif defined(VERSION_BW1W110)
#define ANIMAL_LION_FILE "C:\\dev\\Black\\AnimalLion.cpp"
#else
#define ANIMAL_LION_FILE "C:\\dev\\MP\\Black\\AnimalLion.cpp"
#endif

uint32_t Lion::GetSaveType()
{
	return GAME_THING_TYPE_LION;
}

char* Lion::GetDebugText()
{
	return "Animal: Lion";
}

uint32_t PieceLion::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_LION;
}

bool32_t PieceLion::DecideWhatToDo()
{
	return true;
}

uint32_t PieceLion::ProcessNeeds()
{
	return 0;
}

uint32_t PieceLion::CheckNeeds()
{
	return 0;
}

bool32_t PieceLion::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}

Lion::Lion(const MapCoords& coords, const GAnimalInfo* info, unsigned long age) : Animal(coords, info, age)
{
	Reaction::CreateReaction(this, REACTION_FLEE_FROM_PREDATOR, GetPlayer(), 0);
}

PieceLion* PieceLion::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long age)
{
	PieceLion* lion = new (ANIMAL_LION_FILE, 153) PieceLion(coords, info, age);
	if (lion != NULL)
	{
		lion->CallVirtualFunctionsForCreation(coords);
		lion->Game3dObject->SetHumanShadowed(true);
	}
	return lion;
}

char* PieceLion::GetDebugText()
{
	return "Animal: Lion for Puzzle";
}
