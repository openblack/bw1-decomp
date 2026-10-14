#include "GameTimeConstants.h"
#include "Totem.h"

#include "ColourConstants.h" /* For White */
#include "GameOSFile.h"      /* For class GameOSFile */

#if defined(VERSION_BW1W100)
#define TOTEM_FILE "C:\\dev\\black\\Totem.cpp"
#elif defined(VERSION_BW1W110)
#define TOTEM_FILE "C:\\dev\\Black\\Totem.cpp"
#else
#define TOTEM_FILE "C:\\dev\\MP\\Black\\Totem.cpp"
#endif

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
	Totem* totem = new (TOTEM_FILE, 60) Totem(coords, info, town, y_angle, scale, food, wood);
	if (totem != NULL)
	{
		totem->CallVirtualFunctionsForCreation(coords);
	}
	return totem;
}

void Totem::DebugText(int param_1) {}
