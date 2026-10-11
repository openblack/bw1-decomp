#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Arena.h"

#include "ColourConstants.h" /* For White */

uint32_t GArena::GetSaveType()
{
	return GAME_THING_TYPE_GARENA;
}

uint32_t ArenaSpellIcon::GetSaveType()
{
	return GAME_THING_TYPE_ARENA_SPELL_ICON;
}

void ArenaSpellIcon::Draw() {}
