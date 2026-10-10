#include "GameTimeConstants.h"
#include "AnimalCow.h"

#include "AnimalGoat.h"
#include "AnimalHorse.h"
#include "AnimalPig.h"
#include "AnimalSheep.h"
#include "AnimalTortoise.h"
#include "AnimalZebra.h"

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
