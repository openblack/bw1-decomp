#include "GameTimeConstants.h"
#include "SpellDispenser.h"
#include "GameOSFile.h" /* For class GameOSFile */

bool32_t SpellDispenser::IsActive() const
{
	return Active;
}

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
		file.ReadIt(ProduceEvery);
		file.ReadIt(Active);
		file.ReadIt(DispensedMagicType);
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
		file.WriteIt(ProduceEvery);
		file.WriteIt(Active);
		file.WriteIt(DispensedMagicType);
		return true;
	}
	return false;
}

char* SpellDispenser::GetDebugText()
{
	return (char*)info->DebugString;
}

bool32_t SpellDispenser::IsSpellSeedReturnPoint() const
{
	return true;
}
