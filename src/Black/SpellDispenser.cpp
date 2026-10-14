#include "GameTimeConstants.h"
#include "SpellDispenser.h"
#include "GameOSFile.h" /* For class GameOSFile */

bool32_t SpellDispenser::IsSpellDispenser()
{
	return true;
}

uint32_t SpellDispenser::GetSaveType()
{
	return GAME_THING_TYPE_SPELL_DISPENSER;
}

SCRIPT_OBJECT_TYPE SpellDispenser::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_SPELL_DISPENSER;
}

bool32_t SpellDispenser::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadPtr((GameThing**)&field_0xcc);
		file.ReadIt(field_0xc4);
		file.ReadIt(field_0xc8);
		file.ReadIt(field_0xd0);
		file.ReadIt(field_0xd4);
		return true;
	}
	return false;
}

bool32_t SpellDispenser::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WritePtr(field_0xcc);
		file.WriteIt(field_0xc4);
		file.WriteIt(field_0xc8);
		file.WriteIt(field_0xd0);
		file.WriteIt(field_0xd4);
		return true;
	}
	return false;
}

bool32_t SpellDispenser::IsSpellSeedReturnPoint() const
{
	return true;
}
