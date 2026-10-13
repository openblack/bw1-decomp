#include <Lionhead/LH3DLib/development/LH3DMathConstants.h>
#include "Furniture.h"
#include "FurnitureInfo.h"

uint32_t Furniture::SaveObject(LHOSFile& param_1, const MapCoords* param_2)
{
	return 1;
}

uint32_t Furniture::GetSaveType()
{
	return GAME_THING_TYPE_UNUSED_000;
}

char* Furniture::GetDebugText()
{
	return "Furniture:";
}

GBaseInfo* GFurnitureInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = FURNITURE_INFO_LAST;
	return Infos;
}
