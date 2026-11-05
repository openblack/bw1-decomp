#include "Feature.h"
#include "FeatureInfo.h" /* For GFeatureInfo */
#include "Flowers.h"
#include "FlowersInfo.h"
#include "Game.h" /* For GGame */
#include "PlannedFeature.h"

GFeatureInfo GFeatureInfo::Infos[FEATURE_INFO_LAST];
GFlowersInfo GFlowersInfo::Infos[FLOWERS_INFO_LAST];

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
	Feature* feature = new (FILEPATH, 19) Feature(coords, info, y_angle, scale, percent_built, under_construction);
	if (feature != NULL)
	{
		feature->CallVirtualFunctionsForCreation(coords);
	}
	return feature;
}

GPlayer* Feature::GetPlayer()
{
	return &GGame::g_game->players[GGame::g_game->NeutralPlayerIndex];
}
