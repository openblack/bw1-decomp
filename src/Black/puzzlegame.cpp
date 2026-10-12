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

IMMERSION_EFFECT_TYPE PuzzleGrain::GetImmersionTexture()
{
	return IMMERSION_EFFECT_TYPE_MUSHROOM_CHALLENGE;
}

uint32_t PuzzleTortoise::GetSaveType()
{
	return GAME_THING_TYPE_PUZZLE_SHEEP;
}

uint32_t PuzzleCow::GetSaveType()
{
	return GAME_THING_TYPE_PUZZLE_SHEEP;
}

uint32_t PuzzlePig::GetSaveType()
{
	return GAME_THING_TYPE_PUZZLE_SHEEP;
}
