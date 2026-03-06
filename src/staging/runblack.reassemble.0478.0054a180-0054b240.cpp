#include "SetupMultiplayerMain.h"
#include "FurnitureInfo.h"
#include "Furniture.h"

// win1.41 0054a180 mac 105cde40 SetupMultiplayerMain::InitSubDialogs(void)
void SetupMultiplayerMain::InitSubDialogs()
{
}

// win1.41 0054a350 mac 100f2c30 GFurnitureInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GFurnitureInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0054a3c0 mac 100f2b20 GFurnitureInfo::_dt(void)
GFurnitureInfo::~GFurnitureInfo()
{
}

// win1.41 0054a440 mac inlined Furniture::SaveObject(LHOSFile &, MapCoords const &)
uint32_t Furniture::SaveObject(LHOSFile& file, const MapCoords& coords)
{
    return 0;
}

// win1.41 0054a450 mac inlined Furniture::GetSaveType(void)
uint32_t Furniture::GetSaveType()
{
    return 0;
}

// win1.41 0054a460 mac inlined Furniture::GetDebugText(void)
char* Furniture::GetDebugText()
{
    return 0;
}

// win1.41 0054a470 mac inlined Furniture::_dt(void)
Furniture::~Furniture()
{
}
