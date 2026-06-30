#include "BaseInfo.h" /* For struct GBaseInfo */

#include "Game.h" /* For g_game */

// Unknown if this function is inlined. Put in cpp file to avoid circular header dependency issues.
void GBaseInfo::SetInfoID()
{
    index = GBaseInfo::info_count++;
    Game::g_game->lists->base_infos.PushBack(this);
}
