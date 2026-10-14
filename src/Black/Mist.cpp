#include "Mist.h"
#include "GameOSFile.h" /* For class GameOSFile */

SCRIPT_OBJECT_TYPE Mist::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_MIST;
}

bool32_t Mist::Load(GameOSFile& file)
{
	if (GameThingWithPos::Load(file))
	{
		file.ReadIt(field_0x2c);
		file.ReadIt(field_0x30);
		file.ReadIt(field_0x34);
		return true;
	}
	return false;
}

bool32_t Mist::Save(GameOSFile& file)
{
	if (GameThingWithPos::Save(file))
	{
		file.WriteIt(field_0x2c);
		file.WriteIt(field_0x30);
		file.WriteIt(field_0x34);
		return true;
	}
	return false;
}
