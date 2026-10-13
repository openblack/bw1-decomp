#include "GameTimeConstants.h"
#include "TerrainMaterialInfo.h"

GTerrainMaterialInfo GTerrainMaterialInfo::Infos[TERRAIN_MATERIAL_TYPE_LAST];

GBaseInfo* GTerrainMaterialInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TERRAIN_MATERIAL_TYPE_LAST;
	return Infos;
}
