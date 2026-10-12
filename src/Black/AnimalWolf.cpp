#include "GameTimeConstants.h"
#include "AnimalWolf.h"
#include "PuzzleGame.h"

uint32_t Wolf::GetSaveType()
{
	return GAME_THING_TYPE_WOLF;
}

uint32_t PieceWolf::GetSaveType()
{
	return GAME_THING_TYPE_PIECE_WOLF;
}

bool32_t PieceWolf::DecideWhatToDo()
{
	return true;
}

uint32_t PieceWolf::ProcessNeeds()
{
	return 0;
}

uint32_t PieceWolf::CheckNeeds()
{
	return 0;
}

bool32_t PieceWolf::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}
