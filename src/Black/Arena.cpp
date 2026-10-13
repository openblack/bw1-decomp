#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Arena.h"

#include "ColourConstants.h" /* For White */

uint32_t GArena::GetSaveType()
{
	return GAME_THING_TYPE_GARENA;
}

char* GArena::GetDebugText()
{
	return "Arena:";
}

const char* GArena::GetText()
{
	return "Arena";
}

uint32_t ArenaSpellIcon::GetSaveType()
{
	return GAME_THING_TYPE_ARENA_SPELL_ICON;
}

void ArenaSpellIcon::Draw() {}

char* ArenaSpellIcon::GetDebugText()
{
	return "SpellIcon:";
}

bool32_t ArenaSpellIcon::CreatureMustAvoid(Creature* creature)
{
	return false;
}

bool32_t ArenaSpellIcon::IsEffectReceiver(EffectValues* effect)
{
	return false;
}

ArenaSpellIcon::~ArenaSpellIcon() {}

float GameThingWithPos::GetScale()
{
	return 1.0f;
}

void GameThingWithPos::SetScale(float scale) {}
