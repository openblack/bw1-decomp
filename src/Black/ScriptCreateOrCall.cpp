#include "Script.h"
#include "Balance.h"
#if !defined(VERSION_BW1W100) && !defined(VERSION_BW1W110)
#include <string>
#endif

GBaseInfo* GScriptOpposingCreature::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return GInfoArrays::ScriptOpposingCreatures;
}
