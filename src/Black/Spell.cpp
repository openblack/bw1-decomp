#include "GameTimeConstants.h"
#include "Spell.h"

#include "ColourConstants.h" /* For White */
#include "SpellSeed.h"       /* For SpellSeed */

uint32_t Spell::GetSaveType()
{
	return GAME_THING_TYPE_SPELL;
}

void Spell::DebugDraw() {}

void Spell::ClearSpellSeedLink()
{
	if (SpellSeedLink != NULL)
	{
		SpellSeed* seed = SpellSeedLink;
		SpellSeedLink = NULL;
		seed->ClearSpellLink();
	}
}

char* Spell::GetDebugText()
{
	return "Spell:";
}
