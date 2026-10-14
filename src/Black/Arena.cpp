#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "Arena.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"      /* For class GameOSFile */

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

bool32_t ArenaSpellIcon::Load(GameOSFile& file)
{
	if (Fixed::Load(file))
	{
		file.ReadPtr((GameThing**)&field_0x58);
		file.ReadIt(field_0x60);
		file.ReadIt(field_0x64);
		file.ReadIt(field_0x6c);
		return true;
	}
	return false;
}

bool32_t ArenaSpellIcon::Save(GameOSFile& file)
{
	if (Fixed::Save(file))
	{
		file.WritePtr(field_0x58);
		file.WriteIt(field_0x60);
		file.WriteIt(field_0x64);
		file.WriteIt(field_0x6c);
		return true;
	}
	return false;
}

ArenaSpellIcon::~ArenaSpellIcon() {}
