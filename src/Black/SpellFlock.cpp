#include "GameTimeConstants.h"
#include "SpellFlock.h"
#include "GameOSFile.h" /* For class GameOSFile */

void SpellFlock::CloseDown()
{
	SpellWithObjects::CloseDown();
}

bool32_t SpellFlock::Load(GameOSFile& file)
{
	if (SpellWithObjects::Load(file))
	{
		file.ReadPtr((GameThing**)&field_0xf4);
		file.ReadIt(field_0xf8);
		file.ReadIt(field_0xfc);
		file.ReadIt(field_0x100);
		file.ReadIt(field_0x10c);
		return true;
	}
	return false;
}
