#include "GameTimeConstants.h"
#include "AnimalLion.h"
#include "PuzzleGame.h"
#include "Game3DObject.h" /* For Game3DObject */
#include "PuzzleGame.h"   /* For PieceLion */
#include "Reaction.h"     /* For Reaction */

uint32_t Lion::GetSaveType()
{
	return GAME_THING_TYPE_LION;
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

PieceLion* PieceLion::Create(const MapCoords& coords, const GAnimalInfo* info, unsigned long param_3)
{
	PieceLion* lion = new (ANIMAL_LION_FILE, 153) PieceLion(coords, info, param_3);
	if (lion != NULL)
	{
		lion->CallVirtualFunctionsForCreation(coords);
		lion->Game3dObject->SetHumanShadowed(1);
	}
	return lion;
}
