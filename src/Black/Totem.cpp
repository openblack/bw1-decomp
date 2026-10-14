#include "GameTimeConstants.h"
#include "Totem.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"      /* For class GameOSFile */

bool32_t Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
	return true;
}

uint32_t Totem::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(InteractPos);
		file.ReadIt(field_0xd0);
		return 1;
	}
	return 0;
}

uint32_t Totem::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(InteractPos);
		file.WriteIt(field_0xd0);
		return 1;
	}
	return 0;
}

void Totem::DebugText(int param_1) {}
