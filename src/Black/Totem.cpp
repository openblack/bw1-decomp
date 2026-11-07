#include "GameTimeConstants.h"
#include "Totem.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"      /* For class GameOSFile */

bool32_t Totem::NetworkFriendlyEndLockedSelect(GInterfaceStatus* param_1)
{
	return true;
}

bool32_t Totem::Load(GameOSFile& file)
{
	if (Abode::Load(file))
	{
		file.ReadIt(InteractPos);
		file.ReadIt(field_0xd0);
		return true;
	}
	return false;
}

bool32_t Totem::Save(GameOSFile& file)
{
	if (Abode::Save(file))
	{
		file.WriteIt(InteractPos);
		file.WriteIt(field_0xd0);
		return true;
	}
	return false;
}

Totem* Totem::Create(const MapCoords& coords, const GAbodeInfo* info, Town* town, float y_angle, float scale,
                     float food, int wood)
{
	Totem* totem = NEW(60) Totem(coords, info, town, y_angle, scale, food, wood);
	if (totem != NULL)
	{
		totem->CallVirtualFunctionsForCreation(coords);
	}
	return totem;
}

void Totem::DebugText(int param_1) {}
