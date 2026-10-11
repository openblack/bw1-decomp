#include "ColourConstants.h" /* For White */
#include "GameTimeConstants.h"
#include "PuzzleGame.h"

LH3DMapCoords PuzzleGame::AppliedMapPos;

bool32_t PuzzleVillager::DecideWhatToDo()
{
	return true;
}

bool32_t PuzzleLion::DecideWhatToDo()
{
	return true;
}
