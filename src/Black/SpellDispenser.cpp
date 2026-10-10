#include "GameTimeConstants.h"
#include "SpellDispenser.h"

bool32_t SpellDispenser::IsSpellDispenser()
{
	return true;
}

uint32_t SpellDispenser::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_DISPENSER;
}
