#include "GameTimeConstants.h"
#include "TerrainMaterialInfo.h"
#include <string> /* For the std::basic_string instantiations */

GTerrainMaterialInfo GTerrainMaterialInfo::Infos[TERRAIN_MATERIAL_TYPE_LAST];

GBaseInfo* GTerrainMaterialInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = TERRAIN_MATERIAL_TYPE_LAST;
	return Infos;
}
