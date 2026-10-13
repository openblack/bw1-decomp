#include "Stream.h"
#include "Waterfall.h"

void GWaterfall::ToBeDeleted(int delete_now) {}

uint32_t GWaterfall::SaveObject(LHOSFile& file, const MapCoords* coords)
{
	return 1;
}

uint32_t GWaterfall::Save(GameOSFile& file)
{
	return 1;
}

uint32_t GWaterfall::Load(GameOSFile& file)
{
	return 1;
}

void GWaterfall::CallVirtualFunctionsForCreation(const MapCoords&) {}
