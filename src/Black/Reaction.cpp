#include "GameTimeConstants.h"
#include "Reaction.h"
#include "ReactionInfo.h"
#include "Balance.h"

GBaseInfo* ReactionInfo::GetBaseInfo(uint32_t& info_count)
{
	info_count = NUM_REACTION_FUNCTIONS;
	return GInfoArrays::ReactionInfos;
}
