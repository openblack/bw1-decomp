#include "Game.h"
#include "lionhead/lh3dlib/development/LH3DMapCoords.h"
#include "PlayerInfo.h"
#include "lhall/released/headers/LHTimer.h"
#include "KeyBuffer.h"
#include "GlobalGameLists.h"
#include "SoundMap.h"
#include "GestureSystemDataList.h"
#include "GestureSystemData.h"
#include "GestureSystem.h"
#include "GestureSystemResult.h"
#include "TerrainMapInfo.h"
#include "TerrainMapTypeInfo.h"
#include "TerrainMap.h"

// win1.41 0054b240 mac 104fda10 GGame::GGame(void)
GGame::GGame()
{
}

// win1.41 0054b820 mac inlined LH3DMapCoords::SetZero(void)
void LH3DMapCoords::SetZero()
{
}

// win1.41 0054b830 mac 1058eb00 GPlayerInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GPlayerInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0054b850 mac 10005830 LHTimer::Reset(ulong)
void LHTimer::Reset(uint32_t value)
{
}

// win1.41 0054b930 mac inlined GKeyBuffer::GKeyBuffer(void)
GKeyBuffer::GKeyBuffer()
{
}

// win1.41 0054b950 mac 10167a10 GKeyBuffer::_dt(void)
GKeyBuffer::~GKeyBuffer()
{
}

// win1.41 0054b970 mac 10547350 GlobalGameLists::_dt(void)
GlobalGameLists::~GlobalGameLists()
{
}

// win1.41 0054b9a0 mac 1009d100 GGame::IsAvailable(void)
bool GGame::IsAvailable()
{
    return 0;
}

// win1.41 0054b9b0 mac 10512c00 GGame::GetSaveType(void)
uint32_t GGame::GetSaveType()
{
    return 0;
}

// win1.41 0054b9c0 mac 10496160 GGame::GetDebugText(void)
char* GGame::GetDebugText()
{
    return 0;
}

// win1.41 0054b9d0 mac inlined GSoundMap::GSoundMap(void)
GSoundMap::GSoundMap()
{
}

// win1.41 0054ba10 mac 100cb590 GSoundMap::_dt(void)
GSoundMap::~GSoundMap()
{
}

// win1.41 0054baa0 mac inlined GestureSystemDataList::GestureSystemDataList(void)
GestureSystemDataList::GestureSystemDataList()
{
}

// win1.41 0054bac0 mac 100d4da0 GestureSystemDataList::_dt(void)
GestureSystemDataList::~GestureSystemDataList()
{
}

// win1.41 0054baf0 mac inlined GestureSystemData::GestureSystemData(void)
GestureSystemData::GestureSystemData()
{
}

// win1.41 0054bb40 mac inlined GestureSystem::GestureSystem(void)
GestureSystem::GestureSystem()
{
}

// win1.41 0054bb60 mac 1042dc00 GestureSystem::_dt(void)
GestureSystem::~GestureSystem()
{
}

// win1.41 0054bb90 mac inlined GestureSystemResult::GestureSystemResult(void)
GestureSystemResult::GestureSystemResult()
{
}

// win1.41 0054bcd0 mac 100c9280 TerrainMapInfo::TerrainMapInfo(void)
TerrainMapInfo::TerrainMapInfo()
{
}

// win1.41 0054bd70 mac 10588760 TerrainMapTypeInfo::GetBaseInfo(unsigned long &)
GBaseInfo* TerrainMapTypeInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0054bd80 mac 1032d1b0 TerrainMapInfo::GetBaseInfo(unsigned long &)
GBaseInfo* TerrainMapInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0054bd90 mac 1040fcc0 GTerrainMap::_dt(void)
GTerrainMap::~GTerrainMap()
{
}

// win1.41 0054be50 mac 104e7bd0 GPlayerInfo::_dt(void)
GPlayerInfo::~GPlayerInfo()
{
}

// win1.41 0054be80 mac 101522e0 TerrainMapInfo::_dt(void)
TerrainMapInfo::~TerrainMapInfo()
{
}

// win1.41 0054bf00 mac 10512cc0 TerrainMapTypeInfo::_dt(void)
TerrainMapTypeInfo::~TerrainMapTypeInfo()
{
}

// win1.41 0054bf20 mac 104eff40 GGame::ClearVariables(void)
void GGame::ClearVariables()
{
}

// win1.41 0054bfd0 mac 103dcca0 GGame::ToBeDeleted(int)
void GGame::ToBeDeleted(int param_1)
{
}
