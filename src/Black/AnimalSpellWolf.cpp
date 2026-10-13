#include "GameTimeConstants.h"
#include "AnimalWolf.h"

uint32_t SpellWolf::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_WOLF;
}

char* SpellWolf::GetDebugText()
{
	return "Animal: SpellWolf";
}

bool32_t SpellWolf::MoveToPosAndLookAround()
{
	return true;
}

void SpellWolf::SetSpeed(int) {}
