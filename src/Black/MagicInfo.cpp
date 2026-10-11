#include "MagicInfo.h"

GMagicInfo* GMagicInfo::Infos[MAGIC_TYPE_LAST];

uint32_t GMagicInfo::CanCast(const MapCoords& coords, GameThing* caster) const
{
	return 1;
}
