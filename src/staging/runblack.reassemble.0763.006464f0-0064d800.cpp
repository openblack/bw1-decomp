#include "PlannedMultiMapFixed.h"
#include "PlayerInfo.h"
#include "Player.h"

// win1.41 00648780 mac 10115620 PlannedMultiMapFixed::PlannedMultiMapFixed(MapCoords const &, GMultiMapFixedInfo const *, float, float)
PlannedMultiMapFixed::PlannedMultiMapFixed(const MapCoords* coords, const GMultiMapFixedInfo* info, float param_3, float param_4)
{
}

// win1.41 00648910 mac 1006f570 PlannedMultiMapFixed::GetDesireToBeRepaired(void)
float PlannedMultiMapFixed::GetDesireToBeRepaired()
{
    return 0;
}

// win1.41 00648930 mac 10115260 PlannedMultiMapFixed::Draw(void)
void PlannedMultiMapFixed::Draw()
{
}

// win1.41 00648940 mac 10115200 PlannedMultiMapFixed::GetText(void)
const char* PlannedMultiMapFixed::GetText()
{
    return 0;
}

// win1.41 00648950 mac inlined PlannedMultiMapFixed::CreateBuildingSite(void)
bool32_t PlannedMultiMapFixed::CreateBuildingSite()
{
    return 0;
}

// win1.41 00648990 mac 10114ef0 PlannedMultiMapFixed::Save(GameOSFile &)
bool PlannedMultiMapFixed::Save(GameOSFile& file)
{
    return 0;
}

// win1.41 00648af0 mac 10114cd0 PlannedMultiMapFixed::Load(GameOSFile &)
bool PlannedMultiMapFixed::Load(GameOSFile& file)
{
    return 0;
}

// win1.41 00648c50 mac 10114bf0 PlannedMultiMapFixed::PostCreatePlanned(MultiMapFixed&)
void PlannedMultiMapFixed::PostCreatePlanned(MultiMapFixed* param_1)
{
}

// win1.41 00648d50 mac 10375150 PlayerInfo::PlayerInfo(void)
PlayerInfo::PlayerInfo()
{
}

// win1.41 00648e70 mac 1048ea90 GPlayer::GetPlayer(void)
GPlayer* GPlayer::GetPlayer()
{
    return 0;
}

// win1.41 00648e80 mac 1048eac0 GPlayer::CastPlayer(void)
GPlayer* GPlayer::CastPlayer()
{
    return 0;
}

// win1.41 00648eb0 mac 10497380 GPlayer::_dt(void)
GPlayer::~GPlayer()
{
}

// win1.41 006490b0 mac 10497310 GPlayer::ToBeDeleted(int)
void GPlayer::ToBeDeleted(int param_1)
{
}

// win1.41 00649190 mac 10497020 GPlayer::Init(PLAYER_TYPE, unsigned char, wchar_t *, unsigned char)
void GPlayer::Init(PLAYER_TYPE type, uint8_t player_number, char16_t* param_3, unsigned char param_4)
{
}

// win1.41 006494e0 mac 10036020 GPlayer::Process(void)
void GPlayer::Process()
{
}

// win1.41 00649a20 mac 100620c0 GPlayer::ProcessPlayers(void)
void GPlayer::ProcessPlayers()
{
}

// win1.41 0064a6b0 mac 104965e0 GPlayer::Birthday(void)
void GPlayer::Birthday()
{
}

// win1.41 0064a6d0 mac 10496550 GPlayer::Dump(void)
void GPlayer::Dump()
{
}

// win1.41 0064a790 mac 1005c3d0 GPlayer::GetPlayerNumber(void) const
uint8_t GPlayer::GetPlayerNumber()
{
    return 0;
}

// win1.41 0064aac0 mac 10035b60 GPlayer::GetNextInterfaceStatus(GInterfaceStatus *)
GInterfaceStatus* GPlayer::GetNextInterfaceStatus(GInterfaceStatus* param_1)
{
    return 0;
}

// win1.41 0064ab90 mac 10495bf0 GPlayer::PostLoadCleanup(void)
void GPlayer::PostLoadCleanup()
{
}

// win1.41 0064ac00 mac 100306d0 GPlayer::IsNeutral(void)
bool GPlayer::IsNeutral()
{
    return 0;
}

// win1.41 0064ad00 mac 1004d120 GPlayer::CalculateInfluencePower(void)
float GPlayer::CalculateInfluencePower()
{
    return 0;
}

// win1.41 0064b590 mac 10494ee0 GPlayer::GetPlayer3DColor(void)
LH3DColor* GPlayer::GetPlayer3DColor(LH3DColor* color)
{
    return 0;
}

// win1.41 0064b5e0 mac 10494e00 GPlayer::GetPlayerFromText(char *)
GPlayer* GPlayer::GetPlayerFromText(const char* str)
{
    return 0;
}

// win1.41 0064b670 mac 1002b8e0 GPlayer::GetMaxAlignmentChangePerGameTurn(void)
float GPlayer::GetMaxAlignmentChangePerGameTurn()
{
    return 0;
}

// win1.41 0064c220 mac 10492490 GPlayer::IsMagicTypeEnabled(MAGIC_TYPE)
bool32_t GPlayer::IsMagicTypeEnabled(MAGIC_TYPE type)
{
    return 0;
}

// win1.41 0064c430 mac inlined GPlayer::MaintainSpell(unsigned int, float)
void GPlayer::MaintainSpell(uint32_t param_1, float param_2)
{
}

// win1.41 0064c470 mac 10491f30 GPlayer::UpdateSpellInfo(Spell *, PSysProcessInfo *)
void GPlayer::UpdateSpellInfo(Spell* param_1, PSysProcessInfo* param_2)
{
}

// win1.41 0064d120 mac 10051520 GPlayer::GetRealInterface(unsigned long)
GInterface* GPlayer::GetRealInterface(int param_2)
{
    return 0;
}

// win1.41 0064d750 mac 10033320 GPlayer::IsMemberOfThisPlayer(GInterfaceStatus *)
bool GPlayer::IsMemberOfThisPlayer(GInterfaceStatus* param_1)
{
    return 0;
}
