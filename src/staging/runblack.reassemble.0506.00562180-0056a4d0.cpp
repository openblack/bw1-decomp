#include "GameOSFile.h"
#include "SaveLoadPtr.h"
#include "GameStats.h"

// win1.41 00562180 mac 10304470 GameOSFile::ReadPtr(GameThing **)
void GameOSFile::ReadPtr(GameThing** ptr)
{
}

// win1.41 00562320 mac inlined GSaveLoadPtr::GSaveLoadPtr(void*)
GSaveLoadPtr::GSaveLoadPtr(void* ptr)
{
}

// win1.41 00563f00 mac 103008a0 GameOSFile::ReadInfo(GBaseInfo const **)
void GameOSFile::ReadInfo(GBaseInfo** info)
{
}

// win1.41 00563fa0 mac 10300720 GameOSFile::ReadCheckSum(GameThing *)
void GameOSFile::ReadCheckSum(GameThing* thing)
{
}

// win1.41 00564a40 mac 1031b7d0 GameStats::GameStats(void)
GameStats::GameStats()
{
}

// win1.41 00564ac0 mac 103109d0 GameStats::GetPlayer(void)
GPlayer* GameStats::GetPlayer()
{
    return 0;
}

// win1.41 00564ad0 mac 10310a10 GameStats::SetPlayer(GPlayer *)
void GameStats::SetPlayer(GPlayer* param_1)
{
}

// win1.41 00564af0 mac 10310a90 GameStats::GetDebugText(void)
char* GameStats::GetDebugText()
{
    return 0;
}

// win1.41 00564b00 mac 1031b740 GameStats::_dt(void)
GameStats::~GameStats()
{
}
