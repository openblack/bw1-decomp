#include "Game.h"
#include "GameArea.h"
#include "GameInfo.h"
#include "GameOSFile.h"
#include "PhysicsSaveInfo.h"

// win1.41 00555280 mac 1008f570 GGame::Update3DInfluence(void)
GPlayer* GGame::Update3DInfluence()
{
    return 0;
}

// win1.41 00555850 mac 10051560 GGame::MyInterface(void)
GInterface* GGame::MyInterface()
{
    return 0;
}

// win1.41 00555890 mac 105996f0 GGame::SetLandBalance(unsigned long, float, GPlayer *)
void GGame::SetLandBalance(int index, float balance, GPlayer* player)
{
}

// win1.41 00555990 mac inlined GGame::ResetAndStartPlaygroundGame(char *)
void GGame::ResetAndStartPlaygroundGame(char* path)
{
}

// win1.41 00557220 mac 102fe950 GameArea::_dt(void)
GameArea::~GameArea()
{
}

// win1.41 00557620 mac 102ff910 GGameInfo::SetVisualTimeCycle(float, float, float)
void GGameInfo::SetVisualTimeCycle(float param_1, float param_2, float param_3)
{
}

// win1.41 00557730 mac 102ff6c0 GGameInfo::GGameInfo(void)
GGameInfo::GGameInfo()
{
}

// win1.41 005577b0 mac 102ffc00 GGameInfo::_dt(void)
GGameInfo::~GGameInfo()
{
}

// win1.41 005577d0 mac 102ff520 GGameInfo::SetStartDate(long, long, long)
void GGameInfo::SetStartDate(int year, int month, int day)
{
}

// win1.41 005577f0 mac 102ff380 GGameInfo::SetStartTime(long, long, long)
void GGameInfo::SetStartTime(int hour, int minute, int second)
{
}

// win1.41 00557940 mac 100789f0 GGameInfo::GetDaysFromStart(void)
float GGameInfo::GetDaysFromStart()
{
    return 0;
}

// win1.41 00557950 mac 1008c390 GGameInfo::GetYear(void)
float GGameInfo::GetYear()
{
    return 0;
}

// win1.41 00557a80 mac 10099e70 GGameInfo::GetSeason(void)
uint32_t GGameInfo::GetSeason()
{
    return 0;
}

// win1.41 00557b60 mac 1008c3f0 GGameInfo::Process(void)
void GGameInfo::Process()
{
}

// win1.41 00557bb0 mac 102fecf0 GGameInfo::SetVisualTimeCycleFromMapEditor(float, float, float)
void GGameInfo::SetVisualTimeCycleFromMapEditor(float param_1, float param_2, float param_3)
{
}

// win1.41 00558030 mac 1030fcb0 GameOSFile::_dt(void)
GameOSFile::~GameOSFile()
{
}

// win1.41 005586c0 mac 1030f570 PhysicsSaveInfo::ReadInfo(GameOSFile &)
void PhysicsSaveInfo::ReadInfo(GameOSFile& file)
{
}

// win1.41 005587b0 mac 1030ef00 GameOSFile::LoadAllGame(char *)
bool GameOSFile::LoadAllGame(char* filename)
{
    return 0;
}

// win1.41 00558dc0 mac 10304ef0 GameOSFile::LoadInstance(GameThing **)
void GameOSFile::LoadInstance(GameThing** out_thing)
{
}
