#include "Script.h"
#include "Balance.h"

GBaseInfo* GScriptOpposingCreature::GetBaseInfo(uint32_t& info_count)
{
	info_count = CREATURE_TYPE_LAST;
	return GInfoArrays::ScriptOpposingCreatures;
}
