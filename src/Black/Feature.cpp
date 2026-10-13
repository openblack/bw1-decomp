#include "Feature.h"
#include "FeatureInfo.h" /* For GFeatureInfo */
#include "Flowers.h"
#include "FlowersInfo.h"
#include "PlannedFeature.h"

GFeatureInfo GFeatureInfo::Infos[FEATURE_INFO_LAST];
GFlowersInfo GFlowersInfo::Infos[FLOWERS_INFO_LAST];

#if defined(VERSION_BW1W100)
#define FEATURE_FILE "C:\\dev\\black\\Feature.cpp"
#elif defined(VERSION_BW1W110)
#define FEATURE_FILE "C:\\dev\\Black\\Feature.cpp"
#else
#define FEATURE_FILE "C:\\dev\\MP\\Black\\Feature.cpp"
#endif

uint32_t Flowers::GetSaveType()
{
	return GAME_THING_TYPE_FLOWERS;
}

uint32_t PlannedFeature::GetSaveType()
{
	return GAME_THING_TYPE_PLANNED_FEATURE;
}

char* PlannedFeature::GetDebugText()
{
	return "PlannedFeature:";
}

SCRIPT_OBJECT_TYPE Feature::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_FEATURE;
}

LH3DObject::ObjectType Flowers::Get3DType()
{
	return LH3DObject::MORPHABLE;
}

char* Flowers::GetDebugText()
{
	return "Flowers:";
}

Feature* Feature::Create(const MapCoords& coords, const GFeatureInfo* info, float y_angle, float scale,
                         float percent_built, bool32_t under_construction)
{
	Feature* feature = new (FEATURE_FILE, 19) Feature(coords, info, y_angle, scale, percent_built, under_construction);
	if (feature != NULL)
	{
		feature->CallVirtualFunctionsForCreation(coords);
	}
	return feature;
}
