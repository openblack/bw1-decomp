#include "GameTimeConstants.h"
#include "TerrainMaterialInfo.h"
/* Creature Isle's build of this unit has no <string> initializers. */
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110) && !defined(VERSION_BW1WCI)
#include <string>
#endif

GTerrainMaterialInfo GTerrainMaterialInfo::Infos[TERRAIN_MATERIAL_TYPE_LAST];

GBaseInfo* GTerrainMaterialInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TERRAIN_MATERIAL_TYPE_LAST;
	return Infos;
}
