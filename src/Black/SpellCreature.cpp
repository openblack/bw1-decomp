#include "GameTimeConstants.h"
#include "SpellCreature.h"

#include "ColourConstants.h" /* For White */

uint32_t SpellCreature::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_CREATURE;
}

char* SpellCreature::GetDebugText()
{
	return "SpellCreature:";
}

uint32_t SpellCreature::GetCreatureCastOn()
{
	return CreatureCastOn;
}

void SpellCreature::CloseDown()
{
	Spell::CoreCloseDown();
}
