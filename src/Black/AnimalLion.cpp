#include "GameTimeConstants.h"
#include "AnimalLion.h"
#include "PuzzleGame.h"

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
