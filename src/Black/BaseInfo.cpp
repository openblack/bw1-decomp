#include "BaseInfo.h" /* For struct GBaseInfo */

#include "Game.h" /* For g_game */

// Unknown if this function is inlined. Put in cpp file to avoid circular header dependency issues.
void GBaseInfo::SetInfoID()
{
    index = GBaseInfo::info_count++;
    GGame::g_game->game_lists.base_infos.AddToFirst(this);
}

GBaseInfo* GetInfoPtr(int index)
{
    return GGame::g_game->game_lists.base_infos.Get(index);
}
