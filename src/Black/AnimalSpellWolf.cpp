#include "GameTimeConstants.h"
#include "AnimalWolf.h"

uint32_t SpellWolf::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_WOLF;
}

GPlayer* SpellWolf::GetPlayer()
{
	return field_0x198;
}

void SpellWolf::SetPlayer(GPlayer* player)
{
	field_0x198 = player;
}
