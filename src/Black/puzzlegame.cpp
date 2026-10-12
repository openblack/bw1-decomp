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

char* PuzzleHorse::GetDebugText()
{
	return "PuzzleLion: ";
}

char* PuzzleTortoise::GetDebugText()
{
	return "PuzzleSheep: ";
}

char* PuzzleCow::GetDebugText()
{
	return "PuzzleSheep: ";
}

char* PuzzlePig::GetDebugText()
{
	return "PuzzleSheep: ";
}

bool32_t PuzzleCow::CanBeFrighteningToCreature(Creature* creature)
{
	return false;
}
