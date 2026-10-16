#include "GameTimeConstants.h"
#include "TerrainMaterialInfo.h"
/* Creature Isle's build of this unit has no <string> initializers. */
#if !defined(VERSION_BW1WCI)
#include "StdStringInitializers.h"
#endif

GTerrainMaterialInfo GTerrainMaterialInfo::Infos[TERRAIN_MATERIAL_TYPE_LAST];

GBaseInfo* GTerrainMaterialInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TERRAIN_MATERIAL_TYPE_LAST;
	return Infos;
}
