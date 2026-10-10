#include "Feature.h"
#include "Flowers.h"
#include "PlannedFeature.h"

uint32_t Flowers::GetSaveType()
{
	return GAME_THING_TYPE_FLOWERS;
}

uint32_t PlannedFeature::GetSaveType()
{
	return GAME_THING_TYPE_PLANNED_FEATURE;
}
