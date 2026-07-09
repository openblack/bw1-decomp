#include "BaseInfo.h" /* For struct GBaseInfo */

#include "Game.h" /* For g_game */

// Unknown if this function is inlined. Put in cpp file to avoid circular header dependency issues.
void GBaseInfo::SetInfoID()
{
	index = GBaseInfo::InfoCount++;
	GGame::g_game->GameLists.BaseInfos.AddToFirst(this);
}

GBaseInfo* GBaseInfo::GetInfoPtr(int index)
{
	return GGame::g_game->GameLists.BaseInfos.Get(index);
}
