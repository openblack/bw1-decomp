#include "MapCellConstants.h"
#include "CreatureAttitudeConstants.h"
#include "GameTimeConstants.h"
#include "BaseInfo.h" /* For struct GBaseInfo */

#include "ColourConstants.h" /* For White */
#include "Game.h"            /* For g_game */

static uint32_t InfoCount;

// Unknown if this function is inlined. Put in cpp file to avoid circular header dependency issues.
void GBaseInfo::SetInfoID()
{
	index = InfoCount++;
	GGame::g_game->GameLists.BaseInfos.AddToFirst(this);
}

GBaseInfo* GBaseInfo::GetInfoPtr(unsigned long index)
{
	return GGame::g_game->GameLists.BaseInfos.Get(index);
}
