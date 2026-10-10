#include "GameTimeConstants.h"
#include "AnimalDove.h"

#include "AnimalBat.h"
#include "AnimalCrow.h"
#include "AnimalPigeon.h"
#include "AnimalSeagull.h"
#include "AnimalSwallow.h"
#include "AnimalVulture.h"
#include "ColourConstants.h" /* For White */

uint32_t Dove::GetSaveType()
{
	return GAME_THING_TYPE_DOVE;
}

uint32_t SpellDove::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_DOVE;
}

uint32_t Crow::GetSaveType()
{
	return GAME_THING_TYPE_CROW;
}

uint32_t Swallow::GetSaveType()
{
	return GAME_THING_TYPE_SWALLOW;
}

uint32_t Pigeon::GetSaveType()
{
	return GAME_THING_TYPE_PIGEON;
}

uint32_t Seagull::GetSaveType()
{
	return GAME_THING_TYPE_SEAGULL;
}

uint32_t Bat::GetSaveType()
{
	return GAME_THING_TYPE_BAT;
}

uint32_t SpellBat::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_BAT;
}

uint32_t Vulture::GetSaveType()
{
	return GAME_THING_TYPE_VULTURE;
}
