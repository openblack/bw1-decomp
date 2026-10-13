#include "GameTimeConstants.h"
#include "Influence.h"
#include "InfluenceInfo.h"

SCRIPT_OBJECT_TYPE InfluenceRing::GetScriptObjectType()
{
	return SCRIPT_OBJECT_TYPE_INFLUENCE_RING;
}

GBaseInfo* GInfluenceInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = 0;
	return NULL;
}
