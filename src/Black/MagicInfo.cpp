#include "MagicInfo.h"

GMagicInfo* GMagicInfo::Infos[MAGIC_TYPE_LAST];

bool32_t GMagicInfo::CanCast(const MapCoords& coords, GameThing* caster) const
{
	return true;
}
