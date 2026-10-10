#include "GameTimeConstants.h"
#include "Spell.h"

#include "ColourConstants.h" /* For White */

uint32_t Spell::GetSaveType()
{
	return GAME_THING_TYPE_SPELL;
}

void Spell::DebugDraw() {}
