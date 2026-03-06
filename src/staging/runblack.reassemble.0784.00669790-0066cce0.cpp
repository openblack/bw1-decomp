#include "PlayerMessage.h"
#include "PlayerProfile.h"
#include "PlaytimeInfo.h"
#include "Playtime.h"
#include "PotInfo.h"

// win1.41 0066b5e0 mac inlined PlayerMessage::ProcessTurn(void)
int PlayerMessage::ProcessTurn()
{
    return 0;
}

// win1.41 0066b610 mac inlined PlayerMessage::Display(void)
void PlayerMessage::Display()
{
}

// win1.41 0066b7a0 mac 104cbec0 PlayerProfile::SetCurrentProfile(wchar_t *)
void PlayerProfile::SetCurrentProfile(char16_t* name)
{
}

// win1.41 0066bfb0 mac 104cb130 PlayerProfile::ProfileExists(wchar_t *)
uint32_t PlayerProfile::ProfileExists(char16_t* name)
{
    return 0;
}

// win1.41 0066c2d0 mac 10115f30 GPlaytimeInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GPlaytimeInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0066c330 mac 10115d70 GPlaytimeInfo::_dt(void)
GPlaytimeInfo::~GPlaytimeInfo()
{
}

// win1.41 0066c410 mac inlined Playtime::_dt(void)
Playtime::~Playtime()
{
}

// win1.41 0066cbd0 mac 1011d400 GPotInfo::GetBaseInfo(unsigned long &)
GBaseInfo* GPotInfo::GetBaseInfo(uint32_t& param_1)
{
    return 0;
}

// win1.41 0066cc40 mac 10117210 GPotInfo::_dt(void)
GPotInfo::~GPotInfo()
{
}
