#include "GameTimeConstants.h"
#include "PSysModifiers.h"
#include "PSysRules.h"

uint32_t UR_Explosion::CollectionData::GetSaveType()
{
	return GAME_THING_TYPE_UR_EXPLOSION_COLLECTION_DATA;
}

char* UR_Explosion::CollectionData::GetDebugText()
{
	return PSYS_DEBUG_TEXT;
}
