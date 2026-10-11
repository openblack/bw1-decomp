#include "GameTimeConstants.h"
#include "AnimalCow.h"

#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalPig.h"
#include "AnimalSheep.h"
#include "AnimalTortoise.h"
#include "AnimalZebra.h"
#include "PuzzleGame.h"

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
