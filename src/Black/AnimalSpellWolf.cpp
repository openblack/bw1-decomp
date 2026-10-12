#include "GameTimeConstants.h"
#include "AnimalWolf.h"

uint32_t SpellWolf::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_WOLF;
}

GPlayer* SpellWolf::GetPlayer()
{
	return Player;
}

void SpellWolf::SetPlayer(GPlayer* player)
{
	Player = player;
}
